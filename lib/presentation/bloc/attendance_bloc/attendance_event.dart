// presentation/bloc/attendance_bloc/attendance_event.dart
part of 'attendance_bloc.dart';

@freezed
class AttendanceEvent with _$AttendanceEvent {
  const factory AttendanceEvent.loadInstitutes() = AttendanceEventLoadInstitutes;
  const factory AttendanceEvent.loadGroups({required int instituteId}) =
  AttendanceEventLoadGroups;
  const factory AttendanceEvent.loadSchedule({
    required int groupId,
    required DateTime dateStart,
    required DateTime dateEnd,
  }) = AttendanceEventLoadSchedule;
  const factory AttendanceEvent.addStudent({
    required List<StudentModel> students,
    required int groupId,
    required String name,
    required String email,
    required String password,
  }) = AttendanceEventAddStudent;
  const factory AttendanceEvent.updateStudent({
    required List<StudentModel> students,
    required int studentId,
    required int groupId,
    required String name,
  }) = AttendanceEventUpdateStudent;
  const factory AttendanceEvent.deleteStudent({
    required List<StudentModel> students,
    required int studentId,
  }) = AttendanceEventDeleteStudent;
  const factory AttendanceEvent.toLoaded({
    required List<InstituteModel> institutes,
    required InstituteModel? selectedInstitute,
    required List<GroupModel> groups,
    required GroupModel? selectedGroup,
    required List<ScheduleModel> schedule,
  }) = AttendanceEventToLoaded;
}