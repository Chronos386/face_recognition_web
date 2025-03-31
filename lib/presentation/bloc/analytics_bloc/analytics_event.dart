// presentation/bloc/analytics_bloc/analytics_event.dart
part of 'analytics_bloc.dart';

@freezed
class AnalyticsEvent with _$AnalyticsEvent {
  const factory AnalyticsEvent.getData() = AnalyticsEventGetData;
  const factory AnalyticsEvent.toLoaded() = AnalyticsEventToLoaded;
  const factory AnalyticsEvent.loadGroupsEx2(InstituteModel institute) =
  AnalyticsEventLoadGroupsEx2;
  const factory AnalyticsEvent.loadGroupsEx3(InstituteModel institute) =
  AnalyticsEventLoadGroupsEx3;
  const factory AnalyticsEvent.getUniversityAttendance(DateTime dateStart,
      DateTime dateEnd) = AnalyticsEventGetUniversityAttendance;
  const factory AnalyticsEvent.getGroupAttendance(GroupModel group,
      DateTime dateStart, DateTime dateEnd) = AnalyticsEventGetGroupAttendance;
  const factory AnalyticsEvent.getGroupClusters(GroupModel group,
      DateTime dateStart, DateTime dateEnd) = AnalyticsEventGetGroupClusters;
  const factory AnalyticsEvent.getInstitutesAnalysis(DateTime dateStart,
      DateTime dateEnd) = AnalyticsEventGetInstitutesAnalysis;
  const factory AnalyticsEvent.getTopTeachers(DateTime dateStart,
      DateTime dateEnd) = AnalyticsEventGetTopTeachers;
  const factory AnalyticsEvent.getTopStudentsAbsences(DateTime dateStart,
      DateTime dateEnd) = AnalyticsEventGetTopStudentsAbsences;
  const factory AnalyticsEvent.getTopGroupAbsences(DateTime dateStart,
      DateTime dateEnd) = AnalyticsEventGetTopGroupAbsences;
  const factory AnalyticsEvent.getTopGroupAttendance(DateTime dateStart,
      DateTime dateEnd) = AnalyticsEventGetTopGroupAttendance;
}