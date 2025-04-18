// presentation/bloc/room_bloc/room_state.dart
part of 'room_bloc.dart';

@freezed
class RoomState with _$RoomState {
  const factory RoomState.loadingBuildings() = RoomStateLoadingBuildings;
  const factory RoomState.loadedBuildings({
    required List<BuildingModel> buildings,
  }) = RoomStateLoadedBuildings;
  const factory RoomState.loadingRooms() = RoomStateLoadingRooms;
  const factory RoomState.loadedRooms({
    required List<RoomModel> rooms,
  }) = RoomStateLoadedRooms;
  const factory RoomState.error({
    required String error,
  }) = RoomStateError;
  const factory RoomState.endedSession() = RoomStateEndedSession;
  const factory RoomState.loaded({
    required List<BuildingModel> buildings,
    required BuildingModel? selectedBuilding,
    required List<RoomModel> rooms,
  }) = RoomStateToLoaded;
}