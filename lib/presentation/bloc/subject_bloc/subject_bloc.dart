// presentation/bloc/subject_bloc/subject_bloc.dart
import '/utils/result.dart';
import '/utils/logging.dart';
import '/utils/clearer.dart';
import '/utils/error_codes.dart';
import 'package:get_it/get_it.dart';
import '../../models/subject_model.dart';
import '/res/generated/locale_keys.g.dart';
import '/domain/models/subject_domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/domain/interactors/app_interactor.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subject_bloc.freezed.dart';
part 'subject_event.dart';
part 'subject_state.dart';

class SubjectBloc extends Bloc<SubjectEvent, SubjectState> {
  final appInteractor = AppInteractor();
  final clearer = GetIt.instance<Clearer>();

  SubjectBloc() : super(const SubjectState.loaded(subjects: [])) {
    on<SubjectEventLoadSubjects>((event, emit) async {
      emit(const SubjectState.loading());
      await loadDataFromInteractor(
        funcName: "loadSubjects",
        loader: () => appInteractor.loadSubjects(),
        emitEndSession: () => emit(SubjectState.endedSession()),
        emitError: (error) => emit(SubjectState.error(error: error)),
        updateData: (newData) {
          if (newData is List<SubjectDomain>) {
            List<SubjectModel> list = [];
            for (var item in newData) {
              list.add(SubjectModel.fromDomain(item));
            }
            emit(SubjectState.loaded(subjects: list));
          }
        },
      );
    });

    on<SubjectEventCreateSubject>((event, emit) async {
      emit(const SubjectState.loading());
      await loadDataFromInteractor(
        funcName: "createSubject",
        loader: () {
          List<SubjectDomain> list = [];
          for (var item in event.subjects) {
            list.add(item.toDomain());
          }
          return appInteractor.createSubject(list, event.name);
        },
        emitEndSession: () => emit(SubjectState.endedSession()),
        emitError: (error) => emit(SubjectState.error(error: error)),
        updateData: (newData) {
          if (newData is List<SubjectDomain>) {
            List<SubjectModel> list = [];
            for (var item in newData) {
              list.add(SubjectModel.fromDomain(item));
            }
            emit(SubjectState.loaded(subjects: list));
          }
        },
      );
    });

    on<SubjectEventUpdateSubject>((event, emit) async {
      emit(const SubjectState.loading());
      await loadDataFromInteractor(
        funcName: "updateSubject",
        loader: () {
          List<SubjectDomain> list = [];
          for (var item in event.subjects) {
            list.add(item.toDomain());
          }
          return appInteractor.updateSubject(list, event.id, event.name);
        },
        emitEndSession: () => emit(SubjectState.endedSession()),
        emitError: (error) => emit(SubjectState.error(error: error)),
        updateData: (newData) {
          if (newData is List<SubjectDomain>) {
            List<SubjectModel> list = [];
            for (var item in newData) {
              list.add(SubjectModel.fromDomain(item));
            }
            emit(SubjectState.loaded(subjects: list));
          }
        },
      );
    });

    on<SubjectEventDeleteSubject>((event, emit) async {
      emit(const SubjectState.loading());
      await loadDataFromInteractor(
        funcName: "deleteSubject",
        loader: () {
          List<SubjectDomain> list = [];
          for (var item in event.subjects) {
            list.add(item.toDomain());
          }
          return appInteractor.deleteSubject(list, event.id);
        },
        emitEndSession: () => emit(SubjectState.endedSession()),
        emitError: (error) => emit(SubjectState.error(error: error)),
        updateData: (newData) {
          if (newData is List<SubjectDomain>) {
            List<SubjectModel> list = [];
            for (var item in newData) {
              list.add(SubjectModel.fromDomain(item));
            }
            emit(SubjectState.loaded(subjects: list));
          }
        },
      );
    });

    on<SubjectEventToLoaded>((event, emit) {
      emit(SubjectState.loaded(subjects: event.subjects));
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
            "SubjectBloc Error ($funcName)",
            error ?? "close shift",
          );
        },
      );
    } catch (e) {
      ErrorLogger().logFlutterErrorWithName(
        "SubjectBloc Error ($funcName)", e,
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
      default:
        return LocaleKeys.error_load_data.tr();
    }
  }
}