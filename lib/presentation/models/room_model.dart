// presentation/models/room_model.dart
import '/domain/models/room_domain.dart';

class RoomModel {
  final int id;
  String number;
  int? deviceId;
  int buildingId;

  RoomModel({
    required this.id,
    required this.number,
    required this.deviceId,
    required this.buildingId,
  });

  factory RoomModel.fromDomain(RoomDomain domain) {
    return RoomModel(
      id: domain.id,
      number: domain.number,
      deviceId: domain.deviceId,
      buildingId: domain.buildingId,
    );
  }

  RoomDomain toDomain() {
    return RoomDomain(
      id: id,
      number: number,
      deviceId: deviceId,
      buildingId: buildingId,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is RoomModel &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              number == other.number &&
              deviceId == other.deviceId &&
              buildingId == other.buildingId;

  @override
  int get hashCode => id.hashCode ^ number.hashCode ^ deviceId.hashCode ^ buildingId.hashCode;
}