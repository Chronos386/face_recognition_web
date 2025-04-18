// presentation/bloc/subject_bloc/subject_event.dart
part of 'subject_bloc.dart';

@freezed
class SubjectEvent with _$SubjectEvent {
  const factory SubjectEvent.loadSubjects() = SubjectEventLoadSubjects;
  const factory SubjectEvent.toLoaded(List<SubjectModel> subjects) = SubjectEventToLoaded;
  const factory SubjectEvent.createSubject(
      List<SubjectModel> subjects,
      String name,
      ) = SubjectEventCreateSubject;
  const factory SubjectEvent.updateSubject(
      List<SubjectModel> subjects,
      int id,
      String name,
      ) = SubjectEventUpdateSubject;
  const factory SubjectEvent.deleteSubject(
      List<SubjectModel> subjects,
      int id,
      ) = SubjectEventDeleteSubject;
}