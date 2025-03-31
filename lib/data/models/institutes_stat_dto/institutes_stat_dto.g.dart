// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'institutes_stat_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InstitutesStatDTOImpl _$$InstitutesStatDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$InstitutesStatDTOImpl(
      institute_id: (json['institute_id'] as num).toInt(),
      name: json['name'] as String,
      attendance_percent: (json['attendance_percent'] as num).toDouble(),
    );

Map<String, dynamic> _$$InstitutesStatDTOImplToJson(
        _$InstitutesStatDTOImpl instance) =>
    <String, dynamic>{
      'institute_id': instance.institute_id,
      'name': instance.name,
      'attendance_percent': instance.attendance_percent,
    };
