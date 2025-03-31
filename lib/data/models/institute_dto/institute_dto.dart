// data/models/institute_dto/institute_dto.dart
// ignore_for_file: non_constant_identifier_names
import '/domain/models/institute_domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'institute_dto.freezed.dart';
part 'institute_dto.g.dart';

@freezed
class InstituteDTO with _$InstituteDTO {
  const factory InstituteDTO({
    required int id,
    required String name,
  }) = _InstituteDTO;

  factory InstituteDTO.fromJson(Map<String, dynamic> json) => _$InstituteDTOFromJson(json);
}

extension InstituteDtoToDomain on InstituteDTO {
  InstituteDomain toDomain() {
    return InstituteDomain(
      id: id,
      name: name,
    );
  }
}