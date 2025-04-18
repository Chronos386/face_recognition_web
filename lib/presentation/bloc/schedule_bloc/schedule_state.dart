// presentation/bloc/schedule_bloc/schedule_state.dart
part of 'schedule_bloc.dart';

@freezed
class ScheduleState with _$ScheduleState {
  const factory ScheduleState.startLoading() = ScheduleStateStartLoading;
  const factory ScheduleState.startLoaded({
    required List<InstituteModel> institutes,
    required List<BuildingModel> buildings,
    required List<SubjectModel> subjects,
  }) = ScheduleStateStartLoaded;
  const factory ScheduleState.loadingDepartments() = ScheduleStateLoadingDepartments;
  const factory ScheduleState.loadedDepartments({
    required List<DepartmentModel> departments,
  }) = ScheduleStateLoadedDepartments;
  const factory ScheduleState.loadingTeachers() = ScheduleStateLoadingTeachers;
  const factory ScheduleState.loadedTeachers({
    required List<TeacherModel> teachers,
  }) = ScheduleStateLoadedTeachers;
  const factory ScheduleState.loadingGroups() = ScheduleStateLoadingGroups;
  const factory ScheduleState.loadedGroups({
    required List<GroupModel> groups,
  }) = ScheduleStateLoadedGroups;
  const factory ScheduleState.loadingRooms() = ScheduleStateLoadingRooms;
  const factory ScheduleState.loadedRooms({
    required List<RoomModel> rooms,
  }) = ScheduleStateLoadedRooms;
  const factory ScheduleState.loadingSchedule() = ScheduleStateLoadingSchedule;
  const factory ScheduleState.loadedSchedule({
    required List<ScheduleModel> schedule,
  }) = ScheduleStateLoadedSchedule;
  const factory ScheduleState.error({
    required String error,
  }) = ScheduleStateError;
  const factory ScheduleState.endedSession() = ScheduleStateEndedSession;
  const factory ScheduleState.loaded({
    required List<InstituteModel> institutes,
    required InstituteModel? selectedInstitute,
    required List<BuildingModel> buildings,
    required BuildingModel? selectedBuilding,
    required List<SubjectModel> subjects,
    required SubjectModel? selectedSubject,
    required List<DepartmentModel> departments,
    required DepartmentModel? selectedDepartment,
    required List<TeacherModel> teachers,
    required TeacherModel? selectedTeacher,
    required List<GroupModel> groups,
    required GroupModel? selectedGroup,
    required List<RoomModel> rooms,
    required RoomModel? selectedRoom,
    required List<ScheduleModel> schedule,
  }) = ScheduleStateToLoaded;
}