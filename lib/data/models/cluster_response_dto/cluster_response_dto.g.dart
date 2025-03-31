// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cluster_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClusterResponseDTOImpl _$$ClusterResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ClusterResponseDTOImpl(
      clusters: (json['clusters'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map((e) =>
                    StudentClusterDTO.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
    );

Map<String, dynamic> _$$ClusterResponseDTOImplToJson(
        _$ClusterResponseDTOImpl instance) =>
    <String, dynamic>{
      'clusters': instance.clusters,
    };

_$StudentClusterDTOImpl _$$StudentClusterDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentClusterDTOImpl(
      student_id: (json['student_id'] as num).toInt(),
      student_name: json['student_name'] as String,
      attendance_percent: (json['attendance_percent'] as num).toDouble(),
      cluster: json['cluster'] as String,
    );

Map<String, dynamic> _$$StudentClusterDTOImplToJson(
        _$StudentClusterDTOImpl instance) =>
    <String, dynamic>{
      'student_id': instance.student_id,
      'student_name': instance.student_name,
      'attendance_percent': instance.attendance_percent,
      'cluster': instance.cluster,
    };
