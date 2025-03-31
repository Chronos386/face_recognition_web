// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_group_attendance_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopGroupAttendanceDTOImpl _$$TopGroupAttendanceDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$TopGroupAttendanceDTOImpl(
      group_id: (json['group_id'] as num).toInt(),
      group_name: json['group_name'] as String,
      attendance_percent: (json['attendance_percent'] as num).toDouble(),
      total_attendance: (json['total_attendance'] as num).toInt(),
    );

Map<String, dynamic> _$$TopGroupAttendanceDTOImplToJson(
        _$TopGroupAttendanceDTOImpl instance) =>
    <String, dynamic>{
      'group_id': instance.group_id,
      'group_name': instance.group_name,
      'attendance_percent': instance.attendance_percent,
      'total_attendance': instance.total_attendance,
    };
