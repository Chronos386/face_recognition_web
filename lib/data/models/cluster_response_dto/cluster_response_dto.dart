// data/models/cluster_response_dto/cluster_response_dto.dart
// ignore_for_file: non_constant_identifier_names
import '/domain/models/analytic/cluster_domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cluster_response_dto.freezed.dart';
part 'cluster_response_dto.g.dart';

@freezed
class ClusterResponseDTO with _$ClusterResponseDTO {
  const factory ClusterResponseDTO({
    required Map<String, List<StudentClusterDTO>> clusters,
  }) = _ClusterResponseDTO;

  factory ClusterResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$ClusterResponseDTOFromJson(json);
}

@freezed
class StudentClusterDTO with _$StudentClusterDTO {
  const factory StudentClusterDTO({
    required int student_id,
    required String student_name,
    required double attendance_percent,
    required String cluster,
  }) = _StudentClusterDTO;

  factory StudentClusterDTO.fromJson(Map<String, dynamic> json) =>
      _$StudentClusterDTOFromJson(json);
}

extension ClusterResponseDtoToDomain on ClusterResponseDTO {
  List<ClusterDomain> toDomain() {
    final newClusters = <ClusterDomain>[];
    for (final clusterKey in clusters.keys) {
      final students = <StudentClusterDomain>[];
      for (final student in clusters[clusterKey]!) {
        students.add(student.toDomain());
      }
      newClusters.add(ClusterDomain(
        name: clusterKey,
        students: students,
      ));
    }
    return newClusters;
  }
}

extension StudentClusterDtoToDomain on StudentClusterDTO {
  StudentClusterDomain toDomain() {
    return StudentClusterDomain(
      id: student_id,
      name: student_name,
      attendancePercent: attendance_percent,
    );
  }
}