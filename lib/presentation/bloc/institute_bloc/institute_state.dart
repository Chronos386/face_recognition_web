// presentation/bloc/institute_bloc/institute_state.dart
part of 'institute_bloc.dart';

@freezed
class InstituteState with _$InstituteState {
  const factory InstituteState.loaded({
    required List<InstituteModel> institutes
  }) = InstituteStateLoaded;
  const factory InstituteState.loading() = InstituteStateLoading;
  const factory InstituteState.error({
    required String error
  }) = InstituteStateError;
  const factory InstituteState.endedSession() = InstituteStateEndedSession;
}