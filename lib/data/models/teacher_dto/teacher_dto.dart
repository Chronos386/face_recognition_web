// data/models/teacher_dto/teacher_dto.dart
// ignore_for_file: non_constant_identifier_names
import '/domain/models/teacher_domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'teacher_dto.freezed.dart';
part 'teacher_dto.g.dart';

@freezed
class TeacherDTO with _$TeacherDTO {
  const factory TeacherDTO({
    required int id,
    required String name,
    required int acc_id,
    required String department,
    required int department_id,
  }) = _TeacherDTO;

  factory TeacherDTO.fromJson(Map<String, dynamic> json) => _$TeacherDTOFromJson(json);
}

extension TeacherDtoToDomain on TeacherDTO {
  TeacherDomain toDomain() {
    return TeacherDomain(
      id: id,
      name: name,
      accId: acc_id,
      department: department,
      departmentId: department_id,
    );
  }
}