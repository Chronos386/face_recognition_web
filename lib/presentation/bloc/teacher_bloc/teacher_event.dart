part of 'teacher_bloc.dart';

@freezed
class TeacherEvent with _$TeacherEvent {
  const factory TeacherEvent.loadInstitutes() = TeacherEventLoadInstitutes;
  const factory TeacherEvent.loadDepartments({required int instituteId}) = TeacherEventLoadDepartments;
  const factory TeacherEvent.loadTeachers({required int departmentId}) = TeacherEventLoadTeachers;
  const factory TeacherEvent.toLoaded({
    required List<InstituteModel> institutes,
    required InstituteModel? selectedInstitute,
    required List<DepartmentModel> departments,
    required DepartmentModel? selectedDepartment,
    required List<TeacherModel> teachers,
  }) = TeacherEventToLoaded;
  const factory TeacherEvent.createTeacher({
    required List<TeacherModel> teachers,
    required int departmentId,
    required String name,
    required String email,
    required String password,
  }) = TeacherEventCreateTeacher;
  const factory TeacherEvent.updateTeacher({
    required List<TeacherModel> teachers,
    required int teacherId,
    required int departmentId,
    required String name,
  }) = TeacherEventUpdateTeacher;
  const factory TeacherEvent.deleteTeacher({
    required List<TeacherModel> teachers,
    required int teacherId,
  }) = TeacherEventDeleteTeacher;
}