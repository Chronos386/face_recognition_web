// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentDTOImpl _$$StudentDTOImplFromJson(Map<String, dynamic> json) =>
    _$StudentDTOImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      group: json['group'] as String,
      group_id: (json['group_id'] as num).toInt(),
      acc_id: (json['acc_id'] as num).toInt(),
    );

Map<String, dynamic> _$$StudentDTOImplToJson(_$StudentDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'group': instance.group,
      'group_id': instance.group_id,
      'acc_id': instance.acc_id,
    };
