// presentation/bloc/attendance_bloc/attendance_state.dart
part of 'attendance_bloc.dart';

@freezed
class AttendanceState with _$AttendanceState {
  const factory AttendanceState.loadingInstitutes() =
  AttendanceStateLoadingInstitutes;
  const factory AttendanceState.loadedInstitutes({
    required List<InstituteModel> institutes,
  }) = AttendanceStateLoadedInstitutes;
  const factory AttendanceState.loadingGroups() = AttendanceStateLoadingGroups;
  const factory AttendanceState.loadedGroups({
    required List<GroupModel> groups,
  }) = AttendanceStateLoadedGroups;
  const factory AttendanceState.loadingSchedule() = AttendanceStateLoadingSchedule;
  const factory AttendanceState.loadedSchedule({
    required List<ScheduleModel> schedule,
    required List<StudentModel> students,
  }) = AttendanceStateLoadedSchedule;
  const factory AttendanceState.error({
    required String error,
  }) = AttendanceStateError;
  const factory AttendanceState.endedSession() = AttendanceStateEndedSession;
  const factory AttendanceState.loaded({
    required List<InstituteModel> institutes,
    required InstituteModel? selectedInstitute,
    required List<GroupModel> groups,
    required GroupModel? selectedGroup,
    required List<ScheduleModel> schedule,
  }) = AttendanceStateToLoaded;
}