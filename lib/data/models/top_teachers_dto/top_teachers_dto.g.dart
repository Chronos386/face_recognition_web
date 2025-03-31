// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_teachers_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopTeachersDTOImpl _$$TopTeachersDTOImplFromJson(Map<String, dynamic> json) =>
    _$TopTeachersDTOImpl(
      teacher_id: (json['teacher_id'] as num).toInt(),
      teacher_name: json['teacher_name'] as String,
      attendance_percent: (json['attendance_percent'] as num).toDouble(),
      total_classes: (json['total_classes'] as num).toInt(),
    );

Map<String, dynamic> _$$TopTeachersDTOImplToJson(
        _$TopTeachersDTOImpl instance) =>
    <String, dynamic>{
      'teacher_id': instance.teacher_id,
      'teacher_name': instance.teacher_name,
      'attendance_percent': instance.attendance_percent,
      'total_classes': instance.total_classes,
    };
