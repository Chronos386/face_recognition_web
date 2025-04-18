// presentation/bloc/dashboard_bloc/dashboard_bloc.dart
import '/utils/result.dart';
import '/utils/logging.dart';
import '/utils/clearer.dart';
import '/utils/error_codes.dart';
import 'package:get_it/get_it.dart';
import '../../models/user_model.dart';
import '/domain/models/user_domain.dart';
import '/res/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/domain/interactors/user_interactor.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_bloc.freezed.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final userInteractor = UserInteractor();
  final clearer = GetIt.instance<Clearer>();

  DashboardBloc() : super(const DashboardState.loading()) {
    on<DashboardEventGetUserData>((event, emit) async {
      emit(const DashboardState.loading());
      await loadDataFromInteractor(
        funcName: "getUserData",
        loader: () => userInteractor.getUser(),
        emitEndSession: () => emit(DashboardState.endedSession()),
        emitError: (error) => emit(DashboardState.error(error: error)),
        updateData: (newData) {
          if (newData is UserDomain) {
            emit(DashboardState.loaded(data: UserModel.fromDomain(newData)));
          }
        },
      );
    });

    on<DashboardEventLogout>((event, emit) async {
      emit(const DashboardState.loadLogout());
      await loadDataFromInteractor(
        funcName: "logout",
        loader: () => userInteractor.logout(),
        emitEndSession: () => emit(DashboardState.endedSession()),
        emitError: (error) => emit(DashboardState.error(error: error)),
        updateData: (newData) {
          if (newData is bool) {
            emit(DashboardState.endedSession());
            clearer.clearApp();
          }
        },
      );
    });

    on<DashboardEventClearAllHashes>((event, emit) async {
      emit(const DashboardState.loadLogout());
      await loadDataFromInteractor(
        funcName: "clearAllHashes",
        loader: () => userInteractor.clearAllHashes(),
        emitEndSession: () => emit(DashboardState.endedSession()),
        emitError: (error) => emit(DashboardState.error(error: error)),
        updateData: (newData) {
          if (newData is bool) {
            emit(DashboardState.endedSession());
            clearer.clearApp();
          }
        },
      );
    });
  }

  Future<void> loadDataFromInteractor({
    required String funcName,
    required Future<Result<dynamic>> Function() loader,
    required void Function() emitEndSession,
    required void Function(String) emitError,
    required void Function(dynamic) updateData,
  }) async {
    try {
      final result = await loader();
      result.when(
        success: (newData) {
          updateData(newData);
        },
        error: (code) {
          final error = getErrorByCode(code);
          if (error == null) {
            clearer.clearApp();
            emitEndSession();
          } else {
            emitError(error);
          }
          ErrorLogger().logErrorWithName(
            "DashboardBloc Error ($funcName)",
            error ?? "close shift",
          );
        },
      );
    } catch (e) {
      ErrorLogger().logFlutterErrorWithName(
        "DashboardBloc Error ($funcName)", e,
      );
      emitError(e.toString());
    }
  }

  String? getErrorByCode(int code) {
    switch (code) {
      case ErrorCodes.NO_INTERNET:
        return LocaleKeys.check_internet_connection.tr();
      case ErrorCodes.SESSION_IS_CLOSED:
        return null;
      case ErrorCodes.NOT_FOUND:
        return LocaleKeys.user_not_found.tr();
      default:
        return LocaleKeys.error_load_data.tr();
    }
  }
}