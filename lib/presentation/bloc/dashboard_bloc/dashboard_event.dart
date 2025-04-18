// presentation/bloc/dashboard_bloc/dashboard_event.dart
part of 'dashboard_bloc.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.clearAllHashes() = DashboardEventClearAllHashes;
  const factory DashboardEvent.getUserData() = DashboardEventGetUserData;
  const factory DashboardEvent.logout() = DashboardEventLogout;
}