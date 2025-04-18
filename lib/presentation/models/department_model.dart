import '../../domain/models/department_domain.dart';

class DepartmentModel {
  final int id;
  final String name;
  final int instituteId;

  DepartmentModel({
    required this.id,
    required this.name,
    required this.instituteId,
  });

  factory DepartmentModel.fromDomain(DepartmentDomain domain) {
    return DepartmentModel(
      id: domain.id,
      name: domain.name,
      instituteId: domain.instituteId,
    );
  }

  DepartmentDomain toDomain() {
    return DepartmentDomain(
      id: id,
      name: name,
      instituteId: instituteId,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is DepartmentModel &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              name == other.name &&
              instituteId == other.instituteId;

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ instituteId.hashCode;
}