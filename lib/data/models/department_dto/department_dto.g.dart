// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DepartmentDTOImpl _$$DepartmentDTOImplFromJson(Map<String, dynamic> json) =>
    _$DepartmentDTOImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      institute_id: (json['institute_id'] as num).toInt(),
    );

Map<String, dynamic> _$$DepartmentDTOImplToJson(_$DepartmentDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'institute_id': instance.institute_id,
    };
