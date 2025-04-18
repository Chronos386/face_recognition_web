// presentation/bloc/building_bloc/building_state.dart
part of 'building_bloc.dart';

@freezed
class BuildingState with _$BuildingState {
  const factory BuildingState.loaded({
    required List<BuildingModel> buildings,
  }) = BuildingStateLoaded;
  const factory BuildingState.loading() = BuildingStateLoading;
  const factory BuildingState.error({
    required String error,
  }) = BuildingStateError;
  const factory BuildingState.endedSession() = BuildingStateEndedSession;
}