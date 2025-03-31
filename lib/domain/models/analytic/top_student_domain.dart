// domain/models/analytic/top_student_domain.dart

class TopStudentDomain {
  final int id;
  final String name;
  final int absencesCount;
  final String group;

  TopStudentDomain({
    required this.id,
    required this.name,
    required this.absencesCount,
    required this.group,
  });
}