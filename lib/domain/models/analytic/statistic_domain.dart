// domain/models/analytic/statistic_domain.dart

class StatisticDomain {
  final DateTime date;
  final double attendancePercent;
  final String attendance;

  StatisticDomain({
    required this.date,
    required this.attendancePercent,
    required this.attendance,
  });
}