// domain/models/analytic/top_group_absences_domain.dart

class TopGroupAbsencesDomain {
  final int id;
  final String name;
  final int absencesCount;

  TopGroupAbsencesDomain({
    required this.id,
    required this.name,
    required this.absencesCount,
  });
}