// data/models/room_dto/room_dto.dart
// ignore_for_file: non_constant_identifier_names
import '/domain/models/room_domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'room_dto.freezed.dart';
part 'room_dto.g.dart';

@freezed
class RoomDTO with _$RoomDTO {
  const factory RoomDTO({
    required int id,
    required String number,
    required int? device_id,
    required int building_id,
  }) = _RoomDTO;

  factory RoomDTO.fromJson(Map<String, dynamic> json) => _$RoomDTOFromJson(json);
}

extension RoomDtoToDomain on RoomDTO {
  RoomDomain toDomain() {
    return RoomDomain(
      id: id,
      number: number,
      deviceId: device_id,
      buildingId: building_id,
    );
  }
}