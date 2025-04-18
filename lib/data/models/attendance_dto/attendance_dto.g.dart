// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceDTOImpl _$$AttendanceDTOImplFromJson(Map<String, dynamic> json) =>
    _$AttendanceDTOImpl(
      id: (json['id'] as num).toInt(),
      status: json['status'] as bool,
      student_id: (json['student_id'] as num).toInt(),
      schedule_id: (json['schedule_id'] as num).toInt(),
    );

Map<String, dynamic> _$$AttendanceDTOImplToJson(_$AttendanceDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'student_id': instance.student_id,
      'schedule_id': instance.schedule_id,
    };
