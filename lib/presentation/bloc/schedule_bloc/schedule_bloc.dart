// presentation/bloc/schedule_bloc/schedule_bloc.dart
import '/utils/result.dart';
import '/utils/logging.dart';
import '/utils/clearer.dart';
import '/utils/error_codes.dart';
import 'package:get_it/get_it.dart';
import '../../models/room_model.dart';
import '../../models/group_model.dart';
import '../../models/subject_model.dart';
import '../../models/teacher_model.dart';
import '/domain/models/room_domain.dart';
import '../../models/schedule_model.dart';
import '../../models/building_model.dart';
import '/domain/models/group_domain.dart';
import '../../models/institute_model.dart';
import '/res/generated/locale_keys.g.dart';
import '/domain/models/subject_domain.dart';
import '/domain/models/teacher_domain.dart';
import '../../models/department_model.dart';
import '/domain/models/schedule_domain.dart';
import '/domain/models/building_domain.dart';
import '/domain/models/institute_domain.dart';
import '/domain/models/department_domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/domain/interactors/app_interactor.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_bloc.freezed.dart';
part 'schedule_event.dart';
part 'schedule_state.dart';

class ScheduleBloc extends Bloc<ScheduleEvent, ScheduleState> {
  final appInteractor = AppInteractor();
  final clearer = GetIt.instance<Clearer>();

  ScheduleBloc() : super(const ScheduleState.startLoading()) {
    on<ScheduleEventLoadInitial>((event, emit) async {
      emit(const ScheduleState.startLoading());
      bool hasError = false;
      List<InstituteModel> institutes = [];
      List<BuildingModel> buildings = [];
      List<SubjectModel> subjects = [];
      await loadDataFromInteractor(
        funcName: "loadAndReturnInstitutes",
        loader: () => appInteractor.loadAndReturnInstitutes(),
        emitEndSession: () {
          hasError = true;
          emit(ScheduleState.endedSession());
        },
        emitError: (error) {
          hasError = true;
          emit(ScheduleState.error(error: error));
        },
        updateData: (newData) {
          if (newData is List<InstituteDomain>) {
            institutes.addAll(newData.map(InstituteModel.fromDomain).toList());
          }
        },
      );
      if (hasError) return;
      await loadDataFromInteractor(
        funcName: "loadBuildings",
        loader: () => appInteractor.loadBuildings(),
        emitEndSession: () {
          hasError = true;
          emit(ScheduleState.endedSession());
        },
        emitError: (error) {
          hasError = true;
          emit(ScheduleState.error(error: error));
        },
        updateData: (newData) {
          if (newData is List<BuildingDomain>) {
            buildings.addAll(newData.map(BuildingModel.fromDomain).toList());
          }
        },
      );
      if (hasError) return;
      await loadDataFromInteractor(
        funcName: "loadBuildings",
        loader: () => appInteractor.loadSubjects(),
        emitEndSession: () {
          hasError = true;
          emit(ScheduleState.endedSession());
        },
        emitError: (error) {
          hasError = true;
          emit(ScheduleState.error(error: error));
        },
        updateData: (newData) {
          if (newData is List<SubjectDomain>) {
            subjects.addAll(newData.map(SubjectModel.fromDomain).toList());
          }
        },
      );
      if (hasError) return;
      emit(ScheduleState.startLoaded(
        institutes: institutes, buildings: buildings, subjects: subjects,
      ));
    });

    on<ScheduleEventLoadDepartments>((event, emit) async {
      emit(const ScheduleState.loadingDepartments());
      await loadDataFromInteractor(
        funcName: "loadDepartments",
        loader: () => appInteractor.getDepartments(event.instituteId),
        emitEndSession: () => emit(ScheduleState.endedSession()),
        emitError: (error) => emit(ScheduleState.error(error: error)),
        updateData: (newData) {
          if (newData is List<DepartmentDomain>) {
            final departments = newData.map(DepartmentModel.fromDomain).toList();
            emit(ScheduleState.loadedDepartments(departments: departments));
          }
        },
      );
    });

    on<ScheduleEventLoadTeachers>((event, emit) async {
      emit(const ScheduleState.loadingTeachers());
      await loadDataFromInteractor(
        funcName: "loadTeachers",
        loader: () => appInteractor.getTeachers(event.departmentId),
        emitEndSession: () => emit(ScheduleState.endedSession()),
        emitError: (error) => emit(ScheduleState.error(error: error)),
        updateData: (newData) {
          if (newData is List<TeacherDomain>) {
            final teachers = newData.map(TeacherModel.fromDomain).toList();
            emit(ScheduleState.loadedTeachers(teachers: teachers));
          }
        },
      );
    });

    on<ScheduleEventLoadGroups>((event, emit) async {
      emit(const ScheduleState.loadingGroups());
      await loadDataFromInteractor(
        funcName: "getGroups",
        loader: () => appInteractor.getGroups(event.instituteId),
        emitEndSession: () => emit(ScheduleState.endedSession()),
        emitError: (error) => emit(ScheduleState.error(error: error)),
        updateData: (newData) {
          if (newData is List<GroupDomain>) {
            final groups = newData.map(GroupModel.fromDomain).toList();
            emit(ScheduleState.loadedGroups(groups: groups));
          }
        },
      );
    });

    on<ScheduleEventLoadRooms>((event, emit) async {
      emit(const ScheduleState.loadingRooms());
      await loadDataFromInteractor(
        funcName: "getRooms",
        loader: () => appInteractor.getRooms(event.buildingId),
        emitEndSession: () => emit(ScheduleState.endedSession()),
        emitError: (error) => emit(ScheduleState.error(error: error)),
        updateData: (newData) {
          if (newData is List<RoomDomain>) {
            final rooms = newData.map(RoomModel.fromDomain).toList();
            emit(ScheduleState.loadedRooms(rooms: rooms));
          }
        },
      );
    });

    on<ScheduleEventLoadTeacherSchedule>((event, emit) async {
      emit(const ScheduleState.loadingSchedule());
      await loadDataFromInteractor(
        funcName: "getTeacherSchedule",
        loader: () => appInteractor.getTeacherSchedule(
          event.teacherId, event.dateStart, event.dateEnd,
        ),
        emitEndSession: () => emit(ScheduleState.endedSession()),
        emitError: (error) => emit(ScheduleState.error(error: error)),
        updateData: (newData) {
          if (newData is List<ScheduleDomain>) {
            final schedule = newData.map(ScheduleModel.fromDomain).toList();
            emit(ScheduleState.loadedSchedule(schedule: schedule));
          }
        },
      );
    });

    on<ScheduleEventLoadGroupSchedule>((event, emit) async {
      emit(const ScheduleState.loadingSchedule());
      await loadDataFromInteractor(
        funcName: "getGroupSchedule",
        loader: () => appInteractor.getGroupSchedule(
          event.groupId, event.dateStart, event.dateEnd,
        ),
        emitEndSession: () => emit(ScheduleState.endedSession()),
        emitError: (error) => emit(ScheduleState.error(error: error)),
        updateData: (newData) {
          if (newData is List<ScheduleDomain>) {
            final schedule = newData.map(ScheduleModel.fromDomain).toList();
            emit(ScheduleState.loadedSchedule(schedule: schedule));
          }
        },
      );
    });

    on<ScheduleEventToLoaded>((event, emit) async {
      emit(ScheduleState.loaded(
        institutes: event.institutes,
        selectedInstitute: event.selectedInstitute,
        buildings: event.buildings,
        selectedBuilding: event.selectedBuilding,
        subjects: event.subjects,
        selectedSubject: event.selectedSubject,
        departments: event.departments,
        selectedDepartment: event.selectedDepartment,
        teachers: event.teachers,
        selectedTeacher: event.selectedTeacher,
        groups: event.groups,
        selectedGroup: event.selectedGroup,
        rooms: event.rooms,
        selectedRoom: event.selectedRoom,
        schedule: event.schedule,
      ));
    });

    on<ScheduleEventCreateSchedule>((event, emit) async {
      emit(const ScheduleState.loadingSchedule());
      await loadDataFromInteractor(
        funcName: "createSchedule",
        loader: () => appInteractor.createSchedule(event.schedule.map((e) =>
            e.toDomain()).toList(), event.byGroup, event.scheduleStart,
          event.scheduleEnd, event.timeStart, event.timeEnd, event.groupId,
          event.subjectId, event.teacherId, event.roomId,
        ),
        emitEndSession: () => emit(ScheduleState.endedSession()),
        emitError: (error) => emit(ScheduleState.error(error: error)),
        updateData: (newData) {
          if (newData is List<ScheduleDomain>) {
            final schedule = newData.map(ScheduleModel.fromDomain).toList();
            emit(ScheduleState.loadedSchedule(schedule: schedule));
          }
        },
      );
    });

    on<ScheduleEventUpdateSchedule>((event, emit) async {
      emit(const ScheduleState.loadingSchedule());
      await loadDataFromInteractor(
        funcName: "updateSchedule",
        loader: () => appInteractor.updateSchedule(event.schedule.map((e) =>
            e.toDomain()).toList(), event.byGroup, event.scheduleStart,
          event.scheduleEnd, event.scheduleId, event.timeStart, event.timeEnd,
          event.groupId, event.subjectId, event.teacherId, event.roomId,
        ),
        emitEndSession: () => emit(ScheduleState.endedSession()),
        emitError: (error) => emit(ScheduleState.error(error: error)),
        updateData: (newData) {
          if (newData is List<ScheduleDomain>) {
            final schedule = newData.map(ScheduleModel.fromDomain).toList();
            emit(ScheduleState.loadedSchedule(schedule: schedule));
          }
        },
      );
    });

    on<ScheduleEventDeleteSchedule>((event, emit) async {
      emit(const ScheduleState.loadingSchedule());
      await loadDataFromInteractor(
        funcName: "deleteSchedule",
        loader: () => appInteractor.deleteSchedule(event.schedule.map((e) =>
            e.toDomain()).toList(), event.scheduleId),
        emitEndSession: () => emit(ScheduleState.endedSession()),
        emitError: (error) => emit(ScheduleState.error(error: error)),
        updateData: (newData) {
          if (newData is List<ScheduleDomain>) {
            final schedule = newData.map(ScheduleModel.fromDomain).toList();
            print("POPA_1 = ${newData.length}");
            print("POPA_2 = ${schedule.length}");
            emit(ScheduleState.loadedSchedule(schedule: schedule));
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
            "ScheduleBloc Error ($funcName)",
            error ?? "close shift",
          );
        },
      );
    } catch (e) {
      ErrorLogger().logFlutterErrorWithName(
        "ScheduleBloc Error ($funcName)", e,
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