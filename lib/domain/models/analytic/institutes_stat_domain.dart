// domain/models/analytic/institutes_stat_domain.dart

class InstitutesStatDomain {
  final int id;
  final String name;
  final double attendancePercent;

  InstitutesStatDomain({
    required this.id,
    required this.name,
    required this.attendancePercent,
  });
}