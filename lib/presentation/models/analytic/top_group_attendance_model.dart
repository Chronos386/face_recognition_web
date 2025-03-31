// presentation/models/analytic/top_group_attendance_model.dart
import '/domain/models/analytic/top_group_attendance_domain.dart';

class TopGroupAttendanceModel {
  final int id;
  final String name;
  final double attendancePercent;
  final int totalAttendance;

  TopGroupAttendanceModel({
    required this.id,
    required this.name,
    required this.attendancePercent,
    required this.totalAttendance,
  });

  factory TopGroupAttendanceModel.fromDomain(TopGroupAttendanceDomain domain) {
    return TopGroupAttendanceModel(
      id: domain.id,
      name: domain.name,
      attendancePercent: domain.attendancePercent,
      totalAttendance: domain.totalAttendance,
    );
  }
}