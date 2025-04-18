// domain/models/department_domain.dart
import 'has_id.dart';

class DepartmentDomain implements HasId {
  @override
  final int id;
  final String name;
  final int instituteId;

  DepartmentDomain({
    required this.id,
    required this.name,
    required this.instituteId,
  });
}