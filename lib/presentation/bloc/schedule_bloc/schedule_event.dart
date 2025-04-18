// presentation/bloc/schedule_bloc/schedule_event.dart
part of 'schedule_bloc.dart';

@freezed
class ScheduleEvent with _$ScheduleEvent {
  const factory ScheduleEvent.loadInitial() = ScheduleEventLoadInitial;
  const factory ScheduleEvent.loadDepartments({required int instituteId}) =
  ScheduleEventLoadDepartments;
  const factory ScheduleEvent.loadTeachers({required int departmentId}) =
  ScheduleEventLoadTeachers;
  const factory ScheduleEvent.loadGroups({required int instituteId}) =
  ScheduleEventLoadGroups;
  const factory ScheduleEvent.loadRooms({required int buildingId}) =
  ScheduleEventLoadRooms;
  const factory ScheduleEvent.loadTeacherSchedule({
    required int teacherId,
    required DateTime dateStart,
    required DateTime dateEnd,
  }) = ScheduleEventLoadTeacherSchedule;
  const factory ScheduleEvent.loadGroupSchedule({
    required int groupId,
    required DateTime dateStart,
    required DateTime dateEnd,
  }) = ScheduleEventLoadGroupSchedule;
  const factory ScheduleEvent.toLoaded({
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
  }) = ScheduleEventToLoaded;
  const factory ScheduleEvent.createSchedule({
    required List<ScheduleModel> schedule,
    required bool byGroup,
    required DateTime scheduleStart,
    required DateTime scheduleEnd,
    required DateTime timeStart,
    required DateTime timeEnd,
    required int groupId,
    required int subjectId,
    required int teacherId,
    required int roomId,
  }) = ScheduleEventCreateSchedule;
  const factory ScheduleEvent.updateSchedule({
    required List<ScheduleModel> schedule,
    required bool byGroup,
    required DateTime scheduleStart,
    required DateTime scheduleEnd,
    required DateTime timeStart,
    required DateTime timeEnd,
    required int scheduleId,
    required int groupId,
    required int subjectId,
    required int teacherId,
    required int roomId,
  }) = ScheduleEventUpdateSchedule;
  const factory ScheduleEvent.deleteSchedule({
    required List<ScheduleModel> schedule,
    required int scheduleId,
  }) = ScheduleEventDeleteSchedule;
}