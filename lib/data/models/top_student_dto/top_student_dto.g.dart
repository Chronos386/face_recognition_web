// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_student_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopStudentDTOImpl _$$TopStudentDTOImplFromJson(Map<String, dynamic> json) =>
    _$TopStudentDTOImpl(
      student_id: (json['student_id'] as num).toInt(),
      student_name: json['student_name'] as String,
      absences_count: (json['absences_count'] as num).toInt(),
      group: json['group'] as String,
    );

Map<String, dynamic> _$$TopStudentDTOImplToJson(_$TopStudentDTOImpl instance) =>
    <String, dynamic>{
      'student_id': instance.student_id,
      'student_name': instance.student_name,
      'absences_count': instance.absences_count,
      'group': instance.group,
    };
