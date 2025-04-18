import '/domain/models/attendance_domain.dart';

class AttendanceModel {
  final int id;
  final bool status;
  final int studentId;
  final int scheduleId;

  AttendanceModel({
    required this.id,
    required this.status,
    required this.studentId,
    required this.scheduleId,
  });

  factory AttendanceModel.fromDomain(AttendanceDomain domain) {
    return AttendanceModel(
      id: domain.id,
      status: domain.status,
      studentId: domain.studentId,
      scheduleId: domain.scheduleId,
    );
  }

  AttendanceDomain toDomain() {
    return AttendanceDomain(
      id: id,
      status: status,
      studentId: studentId,
      scheduleId: scheduleId,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is AttendanceModel &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              status == other.status &&
              studentId == other.studentId &&
              scheduleId == other.scheduleId;

  @override
  int get hashCode => id.hashCode ^ status.hashCode ^ studentId.hashCode
  ^ scheduleId.hashCode;
}