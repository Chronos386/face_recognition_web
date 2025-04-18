// data/models/attendance_dto/attendance_dto.dart
// ignore_for_file: non_constant_identifier_names
import '/domain/models/attendance_domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'attendance_dto.freezed.dart';
part 'attendance_dto.g.dart';

@freezed
class AttendanceDTO with _$AttendanceDTO {
  const factory AttendanceDTO({
    required int id,
    required bool status,
    required int student_id,
    required int schedule_id,
  }) = _AttendanceDTO;

  factory AttendanceDTO.fromJson(Map<String, dynamic> json) => _$AttendanceDTOFromJson(json);
}

extension AttendanceDtoToDomain on AttendanceDTO {
  AttendanceDomain toDomain() {
    return AttendanceDomain(
      id: id,
      status: status,
      studentId: student_id,
      scheduleId: schedule_id,
    );
  }
}