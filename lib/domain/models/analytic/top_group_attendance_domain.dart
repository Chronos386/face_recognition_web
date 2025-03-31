// domain/models/analytic/top_group_attendance_domain.dart

class TopGroupAttendanceDomain {
  final int id;
  final String name;
  final double attendancePercent;
  final int totalAttendance;

  TopGroupAttendanceDomain({
    required this.id,
    required this.name,
    required this.attendancePercent,
    required this.totalAttendance,
  });
}