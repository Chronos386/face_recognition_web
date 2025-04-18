// data/models/student_dto/student_dto.dart
// ignore_for_file: non_constant_identifier_names
import '/domain/models/student_domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'student_dto.freezed.dart';
part 'student_dto.g.dart';

@freezed
class StudentDTO with _$StudentDTO {
  const factory StudentDTO({
    required int id,
    required String name,
    required String group,
    required int group_id,
    required int acc_id,
  }) = _StudentDTO;

  factory StudentDTO.fromJson(Map<String, dynamic> json) => _$StudentDTOFromJson(json);
}

extension StudentDtoToDomain on StudentDTO {
  StudentDomain toDomain() {
    return StudentDomain(
      id: id,
      name: name,
      group: group,
      groupId: group_id,
      accId: acc_id,
    );
  }
}