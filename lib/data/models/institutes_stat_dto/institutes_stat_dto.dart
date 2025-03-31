// data/models/institutes_stat_dto/institutes_stat_dto.dart
// ignore_for_file: non_constant_identifier_names
import '/domain/models/analytic/institutes_stat_domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'institutes_stat_dto.freezed.dart';
part 'institutes_stat_dto.g.dart';

@freezed
class InstitutesStatDTO with _$InstitutesStatDTO {
  const factory InstitutesStatDTO({
    required int institute_id,
    required String name,
    required double attendance_percent,
  }) = _InstitutesStatDTO;

  factory InstitutesStatDTO.fromJson(Map<String, dynamic> json) =>
      _$InstitutesStatDTOFromJson(json);
}

extension InstitutesStatDtoToDomain on InstitutesStatDTO {
  InstitutesStatDomain toDomain() {
    return InstitutesStatDomain(
      id: institute_id,
      name: name,
      attendancePercent: attendance_percent,
    );
  }
}