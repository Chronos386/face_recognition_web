// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeacherDTOImpl _$$TeacherDTOImplFromJson(Map<String, dynamic> json) =>
    _$TeacherDTOImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      acc_id: (json['acc_id'] as num).toInt(),
      department: json['department'] as String,
      department_id: (json['department_id'] as num).toInt(),
    );

Map<String, dynamic> _$$TeacherDTOImplToJson(_$TeacherDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'acc_id': instance.acc_id,
      'department': instance.department,
      'department_id': instance.department_id,
    };
