// presentation/bloc/group_bloc/group_state.dart
part of 'group_bloc.dart';

@freezed
class GroupState with _$GroupState {
  const factory GroupState.loadingInstitutes() = GroupStateLoadingInstitutes;
  const factory GroupState.loadedInstitutes({
    required List<InstituteModel> institutes,
  }) = GroupStateLoadedInstitutes;
  const factory GroupState.loadingGroups() = GroupStateLoadingGroups;
  const factory GroupState.loadedGroups({
    required List<GroupModel> groups,
  }) = GroupStateLoadedGroups;
  const factory GroupState.error({
    required String error,
  }) = GroupStateError;
  const factory GroupState.endedSession() = GroupStateEndedSession;
  const factory GroupState.loaded({
    required List<InstituteModel> institutes,
    required InstituteModel? selectedInstitute,
    required List<GroupModel> groups,
  }) = GroupStateToLoaded;
}