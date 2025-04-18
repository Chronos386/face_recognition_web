// presentation/bloc/department_bloc/department_state.dart
part of 'department_bloc.dart';

@freezed
class DepartmentState with _$DepartmentState {
  const factory DepartmentState.loadingInstitutes() =
  DepartmentStateLoadingInstitutes;
  const factory DepartmentState.loadedInstitutes({
    required List<InstituteModel> institutes,
  }) = DepartmentStateLoadedInstitutes;
  const factory DepartmentState.loadingDepartments() =
  DepartmentStateLoadingDepartments;
  const factory DepartmentState.loadedDepartments({
    required List<DepartmentModel> departments,
  }) = DepartmentStateLoadedDepartments;
  const factory DepartmentState.error({
    required String error,
  }) = DepartmentStateError;
  const factory DepartmentState.endedSession() = DepartmentStateEndedSession;
  const factory DepartmentState.loaded({
    required List<InstituteModel> institutes,
    required InstituteModel? selectedInstitute,
    required List<DepartmentModel> departments,
  }) = DepartmentStateToLoaded;
}