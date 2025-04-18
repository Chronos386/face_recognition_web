// presentation/bloc/dashboard_bloc/dashboard_state.dart
part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.loaded({
    required UserModel data
  }) = DashboardStateLoaded;
  const factory DashboardState.loading() = DashboardStateLoading;
  const factory DashboardState.loadLogout() = DashboardStateLoadLogout;
  const factory DashboardState.error({
    required String error
  }) = DashboardStateError;
  const factory DashboardState.endedSession() = DashboardStateEndedSession;
}