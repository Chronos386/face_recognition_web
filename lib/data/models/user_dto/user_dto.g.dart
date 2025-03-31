// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDTOImpl _$$UserDTOImplFromJson(Map<String, dynamic> json) =>
    _$UserDTOImpl(
      id: (json['id'] as num).toInt(),
      is_admin: json['is_admin'] as bool,
      login: json['login'] as String,
      name: json['name'] as String,
      hash: json['hash'] as String,
      group_id: (json['group_id'] as num?)?.toInt(),
      group_name: json['group_name'] as String?,
      department_id: (json['department_id'] as num?)?.toInt(),
      department_name: json['department_name'] as String?,
      institute_id: (json['institute_id'] as num).toInt(),
      institute_name: json['institute_name'] as String,
    );

Map<String, dynamic> _$$UserDTOImplToJson(_$UserDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_admin': instance.is_admin,
      'login': instance.login,
      'name': instance.name,
      'hash': instance.hash,
      'group_id': instance.group_id,
      'group_name': instance.group_name,
      'department_id': instance.department_id,
      'department_name': instance.department_name,
      'institute_id': instance.institute_id,
      'institute_name': instance.institute_name,
    };
