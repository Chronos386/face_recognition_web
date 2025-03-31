// presentation/models/analytic/statistic_model.dart
import '/domain/models/analytic/statistic_domain.dart';

class StatisticModel {
  final DateTime date;
  final double attendancePercent;
  final String attendance;

  StatisticModel({
    required this.date,
    required this.attendancePercent,
    required this.attendance,
  });

  factory StatisticModel.fromDomain(StatisticDomain domain) {
    return StatisticModel(
      date: domain.date,
      attendancePercent: domain.attendancePercent,
      attendance: domain.attendance,
    );
  }
}