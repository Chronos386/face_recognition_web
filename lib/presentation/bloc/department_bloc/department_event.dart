// presentation/bloc/department_bloc/department_event.dart
part of 'department_bloc.dart';

@freezed
class DepartmentEvent with _$DepartmentEvent {
  const factory DepartmentEvent.loadInstitutes() =
  DepartmentEventLoadInstitutes;
  const factory DepartmentEvent.loadDepartments({required int instituteId}) =
  DepartmentEventLoadDepartments;
  const factory DepartmentEvent.toLoaded({
    required List<InstituteModel> institutes,
    required InstituteModel? selectedInstitute,
    required List<DepartmentModel> departments,
  }) = DepartmentEventToLoaded;
  const factory DepartmentEvent.createDepartment({
    required List<DepartmentModel> departments,
    required int instituteId,
    required String name,
  }) = DepartmentEventCreateDepartment;
  const factory DepartmentEvent.updateDepartment({
    required List<DepartmentModel> departments,
    required int departmentId,
    required int instituteId,
    required String name,
  }) = DepartmentEventUpdateDepartment;
  const factory DepartmentEvent.deleteDepartment({
    required List<DepartmentModel> departments,
    required int departmentId,
  }) = DepartmentEventDeleteDepartment;
}