part of 'teacher_bloc.dart';

@freezed
class TeacherState with _$TeacherState {
  const factory TeacherState.loadingInstitutes() = TeacherStateLoadingInstitutes;
  const factory TeacherState.loadedInstitutes({
    required List<InstituteModel> institutes,
  }) = TeacherStateLoadedInstitutes;
  const factory TeacherState.loadingDepartments() = TeacherStateLoadingDepartments;
  const factory TeacherState.loadedDepartments({
    required List<DepartmentModel> departments,
  }) = TeacherStateLoadedDepartments;
  const factory TeacherState.loadingTeachers() = TeacherStateLoadingTeachers;
  const factory TeacherState.loadedTeachers({
    required List<TeacherModel> teachers,
  }) = TeacherStateLoadedTeachers;
  const factory TeacherState.error({
    required String error,
  }) = TeacherStateError;
  const factory TeacherState.endedSession() = TeacherStateEndedSession;
  const factory TeacherState.loaded({
    required List<InstituteModel> institutes,
    required InstituteModel? selectedInstitute,
    required List<DepartmentModel> departments,
    required DepartmentModel? selectedDepartment,
    required List<TeacherModel> teachers,
  }) = TeacherStateToLoaded;
}