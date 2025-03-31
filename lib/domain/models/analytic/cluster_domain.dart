// domain/models/analytic/cluster_domain.dart

class ClusterDomain {
  final String name;
  final List<StudentClusterDomain> students;

  ClusterDomain({
    required this.name,
    required this.students,
  });
}

class StudentClusterDomain {
  final int id;
  final String name;
  final double attendancePercent;

  StudentClusterDomain({
    required this.id,
    required this.name,
    required this.attendancePercent,
  });
}