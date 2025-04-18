// domain/models/room_domain.dart
import 'has_id.dart';

class RoomDomain implements HasId {
  @override
  final int id;
  String number;
  int? deviceId;
  int buildingId;

  RoomDomain({
    required this.id,
    required this.number,
    required this.deviceId,
    required this.buildingId,
  });
}