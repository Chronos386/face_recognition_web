// data/models/top_group_absences_dto/top_group_absences_dto.dart
// ignore_for_file: non_constant_identifier_names
import '/domain/models/analytic/top_group_absences_domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'top_group_absences_dto.freezed.dart';
part 'top_group_absences_dto.g.dart';

@freezed
class TopGroupAbsencesDTO with _$TopGroupAbsencesDTO {
  const factory TopGroupAbsencesDTO({
    required int group_id,
    required String group_name,
    required int absences_count,
  }) = _TopGroupAbsencesDTO;

  factory TopGroupAbsencesDTO.fromJson(Map<String, dynamic> json) =>
      _$TopGroupAbsencesDTOFromJson(json);
}

extension TopGroupAbsencesDtoToDomain on TopGroupAbsencesDTO {
  TopGroupAbsencesDomain toDomain() {
    return TopGroupAbsencesDomain(
      id: group_id,
      name: group_name,
      absencesCount: absences_count,
    );
  }
}