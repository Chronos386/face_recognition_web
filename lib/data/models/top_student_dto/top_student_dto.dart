// data/models/top_student_dto/top_student_dto.dart
// ignore_for_file: non_constant_identifier_names
import '/domain/models/analytic/top_student_domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'top_student_dto.freezed.dart';
part 'top_student_dto.g.dart';

@freezed
class TopStudentDTO with _$TopStudentDTO {
  const factory TopStudentDTO({
    required int student_id,
    required String student_name,
    required int absences_count,
    required String group,
  }) = _TopStudentDTO;

  factory TopStudentDTO.fromJson(Map<String, dynamic> json) =>
      _$TopStudentDTOFromJson(json);
}

extension TopStudentDtoToDomain on TopStudentDTO {
  TopStudentDomain toDomain() {
    return TopStudentDomain(
      id: student_id,
      name: student_name,
      absencesCount: absences_count,
      group: group,
    );
  }
}