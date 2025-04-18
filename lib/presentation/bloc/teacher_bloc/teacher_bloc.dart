import '/utils/result.dart';
import '/utils/logging.dart';
import '/utils/clearer.dart';
import '/utils/error_codes.dart';
import 'package:get_it/get_it.dart';
import '../../models/teacher_model.dart';
import '../../models/institute_model.dart';
import '/res/generated/locale_keys.g.dart';
import '/domain/models/teacher_domain.dart';
import '../../models/department_model.dart';
import '/domain/models/institute_domain.dart';
import '/domain/models/department_domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/domain/interactors/app_interactor.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_bloc.freezed.dart';
part 'teacher_event.dart';
part 'teacher_state.dart';

class TeacherBloc extends Bloc<TeacherEvent, TeacherState> {
  final appInteractor = AppInteractor();
  final clearer = GetIt.instance<Clearer>();

  TeacherBloc() : super(const TeacherState.loadingInstitutes()) {
    on<TeacherEventLoadInstitutes>((event, emit) async {
      emit(const TeacherState.loadingInstitutes());
      await loadDataFromInteractor(
        funcName: "loadInstitutes",
        loader: () => appInteractor.loadAndReturnInstitutes(),
        emitEndSession: () => emit(TeacherState.endedSession()),
        emitError: (error) => emit(TeacherState.error(error: error)),
        updateData: (newData) {
          if (newData is List<InstituteDomain>) {
            final institutes = newData.map(InstituteModel.fromDomain).toList();
            emit(TeacherState.loadedInstitutes(institutes: institutes));
          }
        },
      );
    });

    on<TeacherEventLoadDepartments>((event, emit) async {
      emit(const TeacherState.loadingDepartments());
      await loadDataFromInteractor(
        funcName: "loadDepartments",
        loader: () => appInteractor.getDepartments(event.instituteId),
        emitEndSession: () => emit(TeacherState.endedSession()),
        emitError: (error) => emit(TeacherState.error(error: error)),
        updateData: (newData) {
          if (newData is List<DepartmentDomain>) {
            final departments = newData.map(DepartmentModel.fromDomain).toList();
            emit(TeacherState.loadedDepartments(departments: departments));
          }
        },
      );
    });

    on<TeacherEventLoadTeachers>((event, emit) async {
      emit(const TeacherState.loadingTeachers());
      await loadDataFromInteractor(
        funcName: "loadTeachers",
        loader: () => appInteractor.getTeachers(event.departmentId),
        emitEndSession: () => emit(TeacherState.endedSession()),
        emitError: (error) => emit(TeacherState.error(error: error)),
        updateData: (newData) {
          if (newData is List<TeacherDomain>) {
            final teachers = newData.map(TeacherModel.fromDomain).toList();
            emit(TeacherState.loadedTeachers(teachers: teachers));
          }
        },
      );
    });

    on<TeacherEventCreateTeacher>((event, emit) async {
      emit(const TeacherState.loadingTeachers());
      await loadDataFromInteractor(
        funcName: "createTeacher",
        loader: () => appInteractor.createTeacher(
          event.teachers.map((e) => e.toDomain()).toList(),
          event.departmentId,
          event.name,
          event.email,
          event.password,
        ),
        emitEndSession: () => emit(TeacherState.endedSession()),
        emitError: (error) => emit(TeacherState.error(error: error)),
        updateData: (newData) {
          if (newData is List<TeacherDomain>) {
            emit(TeacherState.loadedTeachers(
              teachers: newData.map(TeacherModel.fromDomain).toList(),
            ));
          }
        },
      );
    });

    on<TeacherEventUpdateTeacher>((event, emit) async {
      emit(const TeacherState.loadingTeachers());
      await loadDataFromInteractor(
        funcName: "updateTeacher",
        loader: () => appInteractor.updateTeacher(
          event.teachers.map((e) => e.toDomain()).toList(),
          event.teacherId,
          event.departmentId,
          event.name,
        ),
        emitEndSession: () => emit(TeacherState.endedSession()),
        emitError: (error) => emit(TeacherState.error(error: error)),
        updateData: (newData) {
          if (newData is List<TeacherDomain>) {
            emit(TeacherState.loadedTeachers(
              teachers: newData.map(TeacherModel.fromDomain).toList(),
            ));
          }
        },
      );
    });

    on<TeacherEventDeleteTeacher>((event, emit) async {
      emit(const TeacherState.loadingTeachers());
      await loadDataFromInteractor(
        funcName: "deleteTeacher",
        loader: () => appInteractor.deleteTeacher(
          event.teachers.map((e) => e.toDomain()).toList(),
          event.teacherId,
        ),
        emitEndSession: () => emit(TeacherState.endedSession()),
        emitError: (error) => emit(TeacherState.error(error: error)),
        updateData: (newData) {
          if (newData is List<TeacherDomain>) {
            emit(TeacherState.loadedTeachers(
              teachers: newData.map(TeacherModel.fromDomain).toList(),
            ));
          }
        },
      );
    });

    on<TeacherEventToLoaded>((event, emit) {
      emit(TeacherState.loaded(
        institutes: event.institutes,
        selectedInstitute: event.selectedInstitute,
        departments: event.departments,
        selectedDepartment: event.selectedDepartment,
        teachers: event.teachers,
      ));
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
        success: (newData) => updateData(newData),
        error: (code) {
          final error = getErrorByCode(code);
          if (error == null) {
            clearer.clearApp();
            emitEndSession();
          } else {
            emitError(error);
          }
          ErrorLogger().logErrorWithName(
            "TeacherBloc Error ($funcName)",
            error ?? "close shift",
          );
        },
      );
    } catch (e) {
      ErrorLogger().logFlutterErrorWithName(
        "TeacherBloc Error ($funcName)", e,
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