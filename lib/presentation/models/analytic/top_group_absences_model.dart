// presentation/models/analytic/top_group_absences_model.dart
import '/domain/models/analytic/top_group_absences_domain.dart';

class TopGroupAbsencesModel {
  final int id;
  final String name;
  final int absencesCount;

  TopGroupAbsencesModel({
    required this.id,
    required this.name,
    required this.absencesCount,
  });

  factory TopGroupAbsencesModel.fromDomain(TopGroupAbsencesDomain domain) {
    return TopGroupAbsencesModel(
      id: domain.id,
      name: domain.name,
      absencesCount: domain.absencesCount,
    );
  }
}