// presentation/bloc/room_bloc/room_event.dart
part of 'room_bloc.dart';

@freezed
class RoomEvent with _$RoomEvent {
  const factory RoomEvent.loadBuildings() = RoomEventLoadBuildings;
  const factory RoomEvent.loadRooms({required int buildingId}) = RoomEventLoadRooms;
  const factory RoomEvent.toLoaded({
    required List<BuildingModel> buildings,
    required BuildingModel? selectedBuilding,
    required List<RoomModel> rooms,
  }) = RoomEventToLoaded;
  const factory RoomEvent.createRoom({
    required List<RoomModel> rooms,
    required int buildingId,
    required String number,
  }) = RoomEventCreateRoom;
  const factory RoomEvent.updateRoom({
    required List<RoomModel> rooms,
    required int roomId,
    required int buildingId,
    required String number,
  }) = RoomEventUpdateRoom;
  const factory RoomEvent.deleteRoom({
    required List<RoomModel> rooms,
    required int roomId,
  }) = RoomEventDeleteRoom;
  const factory RoomEvent.createDevice({
    required List<RoomModel> rooms,
    required RoomModel room,
  }) = RoomEventCreateDevice;
  const factory RoomEvent.deleteDevice({
    required List<RoomModel> rooms,
    required RoomModel room,
  }) = RoomEventDeleteDevice;
}