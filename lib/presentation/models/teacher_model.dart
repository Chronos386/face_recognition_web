import '/domain/models/teacher_domain.dart';

class TeacherModel {
  final int id;
  final String name;
  final int accId;
  final String department;
  final int departmentId;

  TeacherModel({
    required this.id,
    required this.name,
    required this.accId,
    required this.department,
    required this.departmentId,
  });

  factory TeacherModel.fromDomain(TeacherDomain domain) {
    return TeacherModel(
      id: domain.id,
      name: domain.name,
      accId: domain.accId,
      department: domain.department,
      departmentId: domain.departmentId,
    );
  }

  TeacherDomain toDomain() {
    return TeacherDomain(
      id: id,
      name: name,
      accId: accId,
      department: department,
      departmentId: departmentId,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is TeacherModel &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              name == other.name &&
              accId == other.accId &&
              department == other.department &&
              departmentId == other.departmentId;

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ accId.hashCode ^
  department.hashCode ^ departmentId.hashCode;
}