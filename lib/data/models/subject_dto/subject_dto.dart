// data/models/subject_dto/subject_dto.dart
// ignore_for_file: non_constant_identifier_names
import '/domain/models/subject_domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'subject_dto.freezed.dart';
part 'subject_dto.g.dart';

@freezed
class SubjectDTO with _$SubjectDTO {
  const factory SubjectDTO({
    required int id,
    required String name,
  }) = _SubjectDTO;

  factory SubjectDTO.fromJson(Map<String, dynamic> json) => _$SubjectDTOFromJson(json);
}

extension SubjectDtoToDomain on SubjectDTO {
  SubjectDomain toDomain() {
    return SubjectDomain(
      id: id,
      name: name,
    );
  }
}