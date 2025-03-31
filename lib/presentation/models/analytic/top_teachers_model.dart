// presentation/models/analytic/top_teachers_model.dart
import '/domain/models/analytic/top_teachers_domain.dart';

class TopTeachersModel {
  final int id;
  final String name;
  final double attendancePercent;
  final int totalClasses;

  TopTeachersModel({
    required this.id,
    required this.name,
    required this.attendancePercent,
    required this.totalClasses,
  });

  factory TopTeachersModel.fromDomain(TopTeachersDomain domain) {
    return TopTeachersModel(
      id: domain.id,
      name: domain.name,
      attendancePercent: domain.attendancePercent,
      totalClasses: domain.totalClasses,
    );
  }
}