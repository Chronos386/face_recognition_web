// data/models/department_dto/department_dto.dart
// ignore_for_file: non_constant_identifier_names
import '/domain/models/department_domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'department_dto.freezed.dart';
part 'department_dto.g.dart';

@freezed
class DepartmentDTO with _$DepartmentDTO {
  const factory DepartmentDTO({
    required int id,
    required String name,
    required int institute_id,
  }) = _DepartmentDTO;

  factory DepartmentDTO.fromJson(Map<String, dynamic> json) => _$DepartmentDTOFromJson(json);
}

extension DepartmentDtoToDomain on DepartmentDTO {
  DepartmentDomain toDomain() {
    return DepartmentDomain(
      id: id,
      name: name,
      instituteId: institute_id,
    );
  }
}