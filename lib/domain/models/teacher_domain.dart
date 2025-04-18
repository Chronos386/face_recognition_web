import 'has_id.dart';

class TeacherDomain implements HasId {
  @override
  final int id;
  final String name;
  final int accId;
  final String department;
  final int departmentId;

  TeacherDomain({
    required this.id,
    required this.name,
    required this.accId,
    required this.department,
    required this.departmentId,
  });
}