// presentation/bloc/attendance_bloc/attendance_bloc.dart
import '/utils/result.dart';
import '/utils/logging.dart';
import '/utils/clearer.dart';
import '/utils/error_codes.dart';
import 'package:get_it/get_it.dart';
import '../../models/group_model.dart';
import '../../models/schedule_model.dart';
import '/domain/models/group_domain.dart';
import '../../models/institute_model.dart';
import '/res/generated/locale_keys.g.dart';
import '/domain/models/student_domain.dart';
import '/domain/models/schedule_domain.dart';
import '/domain/models/institute_domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/presentation/models/student_model.dart';
import '/domain/interactors/app_interactor.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_bloc.freezed.dart';
part 'attendance_event.dart';
part 'attendance_state.dart';

class AttendanceBloc extends Bloc<AttendanceEvent, AttendanceState> {
  final appInteractor = AppInteractor();
  final clearer = GetIt.instance<Clearer>();

  AttendanceBloc() : super(const AttendanceState.loadingInstitutes()) {
    on<AttendanceEventLoadInstitutes>((event, emit) async {
      emit(const AttendanceState.loadingInstitutes());
      List<InstituteModel> institutes = [];
      await loadDataFromInteractor(
        funcName: "loadAndReturnInstitutes",
        loader: () => appInteractor.loadAndReturnInstitutes(),
        emitEndSession: () => emit(AttendanceState.endedSession()),
        emitError: (error) => emit(AttendanceState.error(error: error)),
        updateData: (newData) {
          if (newData is List<InstituteDomain>) {
            institutes.addAll(newData.map(InstituteModel.fromDomain).toList());
            emit(AttendanceState.loadedInstitutes(institutes: institutes));
          }
        },
      );
    });

    on<AttendanceEventAddStudent>((event, emit) async {
      emit(const AttendanceState.loadingGroups());
      await loadDataFromInteractor(
        funcName: "createStudent",
        loader: () => appInteractor.createStudent(event.students.map((elem) =>
            elem.toDomain()).toList(), event.name, event.email, event.password,
          event.groupId,
        ),
        emitEndSession: () => emit(AttendanceState.endedSession()),
        emitError: (error) => emit(AttendanceState.error(error: error)),
        updateData: (newData) {
          if (newData is List<StudentDomain>) {
            var students = newData.map(StudentModel.fromDomain).toList();
            emit(AttendanceState.loadedSchedule(
              schedule: [], students: students,
            ));
          }
        },
      );
    });

    on<AttendanceEventUpdateStudent>((event, emit) async {
      emit(const AttendanceState.loadingGroups());
      await loadDataFromInteractor(
        funcName: "updateStudent",
        loader: () => appInteractor.updateStudent(event.students.map((elem) =>
            elem.toDomain()).toList(), event.studentId, event.groupId,
            event.name),
        emitEndSession: () => emit(AttendanceState.endedSession()),
        emitError: (error) => emit(AttendanceState.error(error: error)),
        updateData: (newData) {
          if (newData is List<StudentDomain>) {
            var students = newData.map(StudentModel.fromDomain).toList();
            emit(AttendanceState.loadedSchedule(
              schedule: [], students: students,
            ));
          }
        },
      );
    });

    on<AttendanceEventDeleteStudent>((event, emit) async {
      emit(const AttendanceState.loadingGroups());
      await loadDataFromInteractor(
        funcName: "deleteStudent",
        loader: () => appInteractor.deleteStudent(event.students.map((elem) =>
            elem.toDomain()).toList(), event.studentId),
        emitEndSession: () => emit(AttendanceState.endedSession()),
        emitError: (error) => emit(AttendanceState.error(error: error)),
        updateData: (newData) {
          if (newData is List<StudentDomain>) {
            var students = newData.map(StudentModel.fromDomain).toList();
            emit(AttendanceState.loadedSchedule(
              schedule: [], students: students,
            ));
          }
        },
      );
    });

    on<AttendanceEventLoadGroups>((event, emit) async {
      emit(const AttendanceState.loadingGroups());
      await loadDataFromInteractor(
        funcName: "getGroups",
        loader: () => appInteractor.getGroups(event.instituteId),
        emitEndSession: () => emit(AttendanceState.endedSession()),
        emitError: (error) => emit(AttendanceState.error(error: error)),
        updateData: (newData) {
          if (newData is List<GroupDomain>) {
            final groups = newData.map(GroupModel.fromDomain).toList();
            emit(AttendanceState.loadedGroups(groups: groups));
          }
        },
      );
    });

    on<AttendanceEventLoadSchedule>((event, emit) async {
      emit(const AttendanceState.loadingSchedule());
      bool hasError = false;
      List<ScheduleModel> schedule = [];
      await loadDataFromInteractor(
        funcName: "getGroupSchedule",
        loader: () => appInteractor.getGroupSchedule(
          event.groupId, event.dateStart, event.dateEnd,
        ),
        emitEndSession: () {
          hasError = true;
          emit(AttendanceState.endedSession());
        },
        emitError: (error) {
          hasError = true;
          emit(AttendanceState.error(error: error));
        },
        updateData: (newData) {
          if (newData is List<ScheduleDomain>) {
            hasError = false;
            schedule.addAll(newData.map(ScheduleModel.fromDomain).toList());
          }
        },
      );
      if (hasError) return;
      await loadDataFromInteractor(
        funcName: "getStudents",
        loader: () => appInteractor.getStudents(event.groupId),
        emitEndSession: () => emit(AttendanceState.endedSession()),
        emitError: (error) => emit(AttendanceState.error(error: error)),
        updateData: (newData) {
          if (newData is List<StudentDomain>) {
            var students = newData.map(StudentModel.fromDomain).toList();
            emit(AttendanceState.loadedSchedule(
              schedule: schedule, students: students,
            ));
          }
        },
      );
    });

    on<AttendanceEventToLoaded>((event, emit) async {
      emit(AttendanceState.loaded(
        institutes: event.institutes,
        selectedInstitute: event.selectedInstitute,
        groups: event.groups,
        selectedGroup: event.selectedGroup,
        schedule: event.schedule,
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
            "AttendanceBloc Error ($funcName)",
            error ?? "close shift",
          );
        },
      );
    } catch (e) {
      ErrorLogger().logFlutterErrorWithName(
        "AttendanceBloc Error ($funcName)", e,
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