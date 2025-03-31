// data/models/top_teachers_dto/top_teachers_dto.dart
// ignore_for_file: non_constant_identifier_names
import '/domain/models/analytic/top_teachers_domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'top_teachers_dto.freezed.dart';
part 'top_teachers_dto.g.dart';

@freezed
class TopTeachersDTO with _$TopTeachersDTO {
  const factory TopTeachersDTO({
    required int teacher_id,
    required String teacher_name,
    required double attendance_percent,
    required int total_classes,
  }) = _TopTeachersDTO;

  factory TopTeachersDTO.fromJson(Map<String, dynamic> json) =>
      _$TopTeachersDTOFromJson(json);
}

extension TopTeachersDtoToDomain on TopTeachersDTO {
  TopTeachersDomain toDomain() {
    return TopTeachersDomain(
      id: teacher_id,
      name: teacher_name,
      attendancePercent: attendance_percent,
      totalClasses: total_classes,
    );
  }
}