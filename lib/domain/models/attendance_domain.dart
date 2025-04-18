import 'has_id.dart';

class AttendanceDomain implements HasId {
  @override
  final int id;
  bool status;
  final int studentId;
  final int scheduleId;

  AttendanceDomain({
    required this.id,
    required this.status,
    required this.studentId,
    required this.scheduleId,
  });
}