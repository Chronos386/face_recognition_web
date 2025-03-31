// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupDTOImpl _$$GroupDTOImplFromJson(Map<String, dynamic> json) =>
    _$GroupDTOImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      institute_id: (json['institute_id'] as num).toInt(),
    );

Map<String, dynamic> _$$GroupDTOImplToJson(_$GroupDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'institute_id': instance.institute_id,
    };
