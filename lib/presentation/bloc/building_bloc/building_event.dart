// presentation/bloc/building_bloc/building_event.dart
part of 'building_bloc.dart';

@freezed
class BuildingEvent with _$BuildingEvent {
  const factory BuildingEvent.loadBuildings() = BuildingEventLoadBuildings;
  const factory BuildingEvent.toLoaded(List<BuildingModel> buildings) =
  BuildingEventToLoaded;
  const factory BuildingEvent.createBuilding(List<BuildingModel> buildings,
      String name, String address) = BuildingEventCreateBuilding;
  const factory BuildingEvent.updateBuilding(List<BuildingModel> buildings,
      int id, String name, String address) = BuildingEventUpdateBuilding;
  const factory BuildingEvent.deleteBuilding(List<BuildingModel> buildings,
      int id) = BuildingEventDeleteBuilding;
}