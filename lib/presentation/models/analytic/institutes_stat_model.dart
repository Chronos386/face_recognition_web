// presentation/models/analytic/institutes_stat_model.dart
import '/domain/models/analytic/institutes_stat_domain.dart';

class InstitutesStatModel {
  final int id;
  final String name;
  final double attendancePercent;

  InstitutesStatModel({
    required this.id,
    required this.name,
    required this.attendancePercent,
  });

  factory InstitutesStatModel.fromDomain(InstitutesStatDomain domain) {
    return InstitutesStatModel(
      id: domain.id,
      name: domain.name,
      attendancePercent: domain.attendancePercent,
    );
  }
}