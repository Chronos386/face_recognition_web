// domain/models/analytic/top_teachers_domain.dart

class TopTeachersDomain {
  final int id;
  final String name;
  final double attendancePercent;
  final int totalClasses;

  TopTeachersDomain({
    required this.id,
    required this.name,
    required this.attendancePercent,
    required this.totalClasses,
  });
}