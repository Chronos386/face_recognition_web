// presentation/bloc/analytics_bloc/analytics_state.dart
part of 'analytics_bloc.dart';

@freezed
class AnalyticsState with _$AnalyticsState {
  const factory AnalyticsState.loaded({
    required AnalyticData data
  }) = AnalyticsStateLoaded;
  const factory AnalyticsState.loading() = AnalyticsStateLoading;
  const factory AnalyticsState.loadGroupsEx2() = AnalyticsStateLoadGroupsEx2;
  const factory AnalyticsState.loadGroupsEx3() = AnalyticsStateLoadGroupsEx3;
  const factory AnalyticsState.loadEx1() = AnalyticsStateLoadEx1;
  const factory AnalyticsState.loadEx2() = AnalyticsStateLoadEx2;
  const factory AnalyticsState.loadEx3() = AnalyticsStateLoadEx3;
  const factory AnalyticsState.loadEx4() = AnalyticsStateLoadEx4;
  const factory AnalyticsState.loadEx5() = AnalyticsStateLoadEx5;
  const factory AnalyticsState.loadEx6() = AnalyticsStateLoadEx6;
  const factory AnalyticsState.loadEx7() = AnalyticsStateLoadEx7;
  const factory AnalyticsState.loadEx8() = AnalyticsStateLoadEx8;
  const factory AnalyticsState.error({
    required String error
  }) = AnalyticsStateError;
  const factory AnalyticsState.endedSession() = AnalyticsStateEndedSession;
}