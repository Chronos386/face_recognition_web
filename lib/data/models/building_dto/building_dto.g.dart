// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'building_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BuildingDTOImpl _$$BuildingDTOImplFromJson(Map<String, dynamic> json) =>
    _$BuildingDTOImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$$BuildingDTOImplToJson(_$BuildingDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
    };
