// presentation/bloc/group_bloc/group_event.dart
part of 'group_bloc.dart';

@freezed
class GroupEvent with _$GroupEvent {
  const factory GroupEvent.loadInstitutes() = GroupEventLoadInstitutes;
  const factory GroupEvent.loadGroups({required int instituteId}) = GroupEventLoadGroups;
  const factory GroupEvent.toLoaded({
    required List<InstituteModel> institutes,
    required InstituteModel? selectedInstitute,
    required List<GroupModel> groups,
  }) = GroupEventToLoaded;
  const factory GroupEvent.createGroup({
    required List<GroupModel> groups,
    required int instituteId,
    required String name,
  }) = GroupEventCreateGroup;
  const factory GroupEvent.updateGroup({
    required List<GroupModel> groups,
    required int groupId,
    required int instituteId,
    required String name,
  }) = GroupEventUpdateGroup;
  const factory GroupEvent.deleteGroup({
    required List<GroupModel> groups,
    required int groupId,
  }) = GroupEventDeleteGroup;
}