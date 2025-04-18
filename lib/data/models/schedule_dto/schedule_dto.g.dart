// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleDTOImpl _$$ScheduleDTOImplFromJson(Map<String, dynamic> json) =>
    _$ScheduleDTOImpl(
      id: (json['id'] as num).toInt(),
      date: json['date'] as String,
      weekday: json['weekday'] as String,
      time_start: json['time_start'] as String,
      time_end: json['time_end'] as String,
      group: json['group'] as String,
      group_id: (json['group_id'] as num).toInt(),
      subject: json['subject'] as String,
      subject_id: (json['subject_id'] as num).toInt(),
      teacher: json['teacher'] as String,
      teacher_id: (json['teacher_id'] as num).toInt(),
      room: json['room'] as String,
      room_id: (json['room_id'] as num).toInt(),
      building: json['building'] as String,
      building_id: (json['building_id'] as num).toInt(),
    );

Map<String, dynamic> _$$ScheduleDTOImplToJson(_$ScheduleDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'weekday': instance.weekday,
      'time_start': instance.time_start,
      'time_end': instance.time_end,
      'group': instance.group,
      'group_id': instance.group_id,
      'subject': instance.subject,
      'subject_id': instance.subject_id,
      'teacher': instance.teacher,
      'teacher_id': instance.teacher_id,
      'room': instance.room,
      'room_id': instance.room_id,
      'building': instance.building,
      'building_id': instance.building_id,
    };
