// presentation/models/analytic/cluster_model.dart
import '/domain/models/analytic/cluster_domain.dart';

class ClusterModel {
  final String name;
  final List<StudentClusterModel> students;

  ClusterModel({
    required this.name,
    required this.students,
  });

  factory ClusterModel.fromDomain(ClusterDomain domain) {
    return ClusterModel(
      name: domain.name,
      students: domain.students.map((e) =>
          StudentClusterModel.fromDomain(e)).toList(),
    );
  }
}

class StudentClusterModel {
  final int id;
  final String name;
  final double attendancePercent;

  StudentClusterModel({
    required this.id,
    required this.name,
    required this.attendancePercent,
  });

  factory StudentClusterModel.fromDomain(StudentClusterDomain domain) {
    return StudentClusterModel(
      id: domain.id,
      name: domain.name,
      attendancePercent: domain.attendancePercent,
    );
  }
}