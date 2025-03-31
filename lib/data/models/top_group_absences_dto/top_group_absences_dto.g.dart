// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_group_absences_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopGroupAbsencesDTOImpl _$$TopGroupAbsencesDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$TopGroupAbsencesDTOImpl(
      group_id: (json['group_id'] as num).toInt(),
      group_name: json['group_name'] as String,
      absences_count: (json['absences_count'] as num).toInt(),
    );

Map<String, dynamic> _$$TopGroupAbsencesDTOImplToJson(
        _$TopGroupAbsencesDTOImpl instance) =>
    <String, dynamic>{
      'group_id': instance.group_id,
      'group_name': instance.group_name,
      'absences_count': instance.absences_count,
    };
