// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomDTOImpl _$$RoomDTOImplFromJson(Map<String, dynamic> json) =>
    _$RoomDTOImpl(
      id: (json['id'] as num).toInt(),
      number: json['number'] as String,
      device_id: (json['device_id'] as num?)?.toInt(),
      building_id: (json['building_id'] as num).toInt(),
    );

Map<String, dynamic> _$$RoomDTOImplToJson(_$RoomDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'device_id': instance.device_id,
      'building_id': instance.building_id,
    };
