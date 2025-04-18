// presentation/bloc/subject_bloc/subject_state.dart
part of 'subject_bloc.dart';

@freezed
class SubjectState with _$SubjectState {
  const factory SubjectState.loaded({
    required List<SubjectModel> subjects,
  }) = SubjectStateLoaded;
  const factory SubjectState.loading() = SubjectStateLoading;
  const factory SubjectState.error({
    required String error,
  }) = SubjectStateError;
  const factory SubjectState.endedSession() = SubjectStateEndedSession;
}