// data/models/top_group_attendance_dto/top_group_attendance_dto.dart
// ignore_for_file: non_constant_identifier_names
import '/domain/models/analytic/top_group_attendance_domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'top_group_attendance_dto.freezed.dart';
part 'top_group_attendance_dto.g.dart';

@freezed
class TopGroupAttendanceDTO with _$TopGroupAttendanceDTO {
  const factory TopGroupAttendanceDTO({
    required int group_id,
    required String group_name,
    required double attendance_percent,
    required int total_attendance,
  }) = _TopGroupAttendanceDTO;

  factory TopGroupAttendanceDTO.fromJson(Map<String, dynamic> json) =>
      _$TopGroupAttendanceDTOFromJson(json);
}

extension TopGroupAttendanceDtoToDomain on TopGroupAttendanceDTO {
  TopGroupAttendanceDomain toDomain() {
    return TopGroupAttendanceDomain(
      id: group_id,
      name: group_name,
      attendancePercent: attendance_percent,
      totalAttendance: total_attendance,
    );
  }
}