// data/models/statistic_dto/statistic_dto.dart
// ignore_for_file: non_constant_identifier_names
import '/domain/models/analytic/statistic_domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'statistic_dto.freezed.dart';
part 'statistic_dto.g.dart';

@freezed
class StatisticDTO with _$StatisticDTO {
  const factory StatisticDTO({
    required String date,
    required double attendance_per,
    required String attendance,
  }) = _StatisticDTO;

  factory StatisticDTO.fromJson(Map<String, dynamic> json) => _$StatisticDTOFromJson(json);
}

extension StatisticDtoToDomain on StatisticDTO {
  StatisticDomain toDomain() {
    List<String> list = date.split('.');
    return StatisticDomain(
      date: DateTime(
        int.parse(list[2]),
        int.parse(list[1]),
        int.parse(list[0]),
      ),
      attendancePercent: attendance_per,
      attendance: attendance,
    );
  }
}