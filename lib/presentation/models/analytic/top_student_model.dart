// presentation/models/analytic/top_student_model.dart
import '/domain/models/analytic/top_student_domain.dart';

class TopStudentModel {
  final int id;
  final String name;
  final int absencesCount;
  final String group;

  TopStudentModel({
    required this.id,
    required this.name,
    required this.absencesCount,
    required this.group,
  });

  factory TopStudentModel.fromDomain(TopStudentDomain domain) {
    return TopStudentModel(
      id: domain.id,
      name: domain.name,
      absencesCount: domain.absencesCount,
      group: domain.group,
    );
  }
}