// presentation/bloc/institute_bloc/institute_bloc.dart
import '/utils/result.dart';
import '/utils/logging.dart';
import '/utils/clearer.dart';
import '/utils/error_codes.dart';
import 'package:get_it/get_it.dart';
import '../../models/institute_model.dart';
import '/res/generated/locale_keys.g.dart';
import '/domain/models/institute_domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/domain/interactors/app_interactor.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'institute_bloc.freezed.dart';
part 'institute_event.dart';
part 'institute_state.dart';

class InstituteBloc extends Bloc<InstituteEvent, InstituteState> {
  final appInteractor = AppInteractor();
  final clearer = GetIt.instance<Clearer>();

  InstituteBloc() : super(const InstituteState.loaded(institutes: [])) {
    on<InstituteEventLoadInstitutes>((event, emit) async {
      emit(const InstituteState.loading());
      await loadDataFromInteractor(
        funcName: "loadInstitutes",
        loader: () => appInteractor.loadAndReturnInstitutes(),
        emitEndSession: () => emit(InstituteState.endedSession()),
        emitError: (error) => emit(InstituteState.error(error: error)),
        updateData: (newData) {
          if (newData is List<InstituteDomain>) {
            List<InstituteModel> list = [];
            for (var item in newData) {
              list.add(InstituteModel.fromDomain(item));
            }
            emit(InstituteState.loaded(institutes: list));
          }
        },
      );
    });

    on<InstituteEventCreateInstitute>((event, emit) async {
      emit(const InstituteState.loading());
      await loadDataFromInteractor(
        funcName: "createInstitute",
        loader: () => appInteractor.createInstitute(event.name),
        emitEndSession: () => emit(InstituteState.endedSession()),
        emitError: (error) => emit(InstituteState.error(error: error)),
        updateData: (newData) {
          if (newData is List<InstituteDomain>) {
            List<InstituteModel> list = [];
            for (var item in newData) {
              list.add(InstituteModel.fromDomain(item));
            }
            emit(InstituteState.loaded(institutes: list));
          }
        },
      );
    });

    on<InstituteEventUpdateInstitute>((event, emit) async {
      emit(const InstituteState.loading());
      await loadDataFromInteractor(
        funcName: "updateInstitute",
        loader: () => appInteractor.updateInstitute(event.id, event.name),
        emitEndSession: () => emit(InstituteState.endedSession()),
        emitError: (error) => emit(InstituteState.error(error: error)),
        updateData: (newData) {
          if (newData is List<InstituteDomain>) {
            List<InstituteModel> list = [];
            for (var item in newData) {
              list.add(InstituteModel.fromDomain(item));
            }
            emit(InstituteState.loaded(institutes: list));
          }
        },
      );
    });

    on<InstituteEventDeleteInstitute>((event, emit) async {
      emit(const InstituteState.loading());
      await loadDataFromInteractor(
        funcName: "deleteInstitute",
        loader: () => appInteractor.deleteInstitute(event.id),
        emitEndSession: () => emit(InstituteState.endedSession()),
        emitError: (error) => emit(InstituteState.error(error: error)),
        updateData: (newData) {
          if (newData is List<InstituteDomain>) {
            List<InstituteModel> list = [];
            for (var item in newData) {
              list.add(InstituteModel.fromDomain(item));
            }
            emit(InstituteState.loaded(institutes: list));
          }
        },
      );
    });

    on<InstituteEventToLoaded>((event, emit) {
      emit(InstituteState.loaded(institutes: event.institutes));
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
            "AnalyticsBloc Error ($funcName)",
            error ?? "close shift",
          );
        },
      );
    } catch (e) {
      ErrorLogger().logFlutterErrorWithName(
        "AnalyticsBloc Error ($funcName)", e,
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
        return LocaleKeys.error_load_data.tr();
      default:
        return LocaleKeys.error_load_data.tr();
    }
  }
}