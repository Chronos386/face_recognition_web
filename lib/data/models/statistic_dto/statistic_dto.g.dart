// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistic_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatisticDTOImpl _$$StatisticDTOImplFromJson(Map<String, dynamic> json) =>
    _$StatisticDTOImpl(
      date: json['date'] as String,
      attendance_per: (json['attendance_per'] as num).toDouble(),
      attendance: json['attendance'] as String,
    );

Map<String, dynamic> _$$StatisticDTOImplToJson(_$StatisticDTOImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'attendance_per': instance.attendance_per,
      'attendance': instance.attendance,
    };
