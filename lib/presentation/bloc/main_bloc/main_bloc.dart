// presentation/bloc/main_bloc/main_bloc.dart
import '/utils/result.dart';
import '/utils/clearer.dart';
import '/utils/error_codes.dart';
import 'package:get_it/get_it.dart';
import '/domain/models/user_domain.dart';
import '/res/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/domain/interactors/app_interactor.dart';
import '/domain/interactors/user_interactor.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_bloc.freezed.dart';
part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final appInteractor = AppInteractor();
  final userInteractor = UserInteractor();
  final clearer = GetIt.instance<Clearer>();

  MainBloc() : super(const MainState.loading()) {
    on<MainEventLoadData>((event, emit) async {
      emit(const MainState.loading());
      bool hasError = false;
      try {
        if (userInteractor.userState.user == null) {
          Result<UserDomain> result = await userInteractor.getUser();
          result.when(
            success: (user) {},
            error: (code) {
              hasError = true;
              String? error = getErrorByCode(code);
              if (error == null) {
                clearer.clearApp();
                emit(MainState.endedSession());
              } else {
                emit(MainState.error(error: error));
              }
            },
          );
        }
        if (appInteractor.analyticState.institutes.isEmpty) {
          Result<bool> result = await appInteractor.loadInstitutes();
          result.when(
            success: (res) {},
            error: (code) {
              hasError = true;
              String? error = getErrorByCode(code);
              if (error == null) {
                clearer.clearApp();
                emit(MainState.endedSession());
              } else {
                emit(MainState.error(error: error));
              }
            },
          );
        }
        if (!hasError) {
          emit(MainState.loaded());
        }
      } catch (e) {
        emit(MainState.error(error: e.toString()));
      }
    });
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