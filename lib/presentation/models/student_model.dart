import '/domain/models/student_domain.dart';

class StudentModel {
  final int id;
  final String name;
  final String group;
  final int groupId;
  final int accId;

  StudentModel({
    required this.id,
    required this.name,
    required this.group,
    required this.groupId,
    required this.accId,
  });

  factory StudentModel.fromDomain(StudentDomain domain) {
    return StudentModel(
      id: domain.id,
      name: domain.name,
      group: domain.group,
      groupId: domain.groupId,
      accId: domain.accId,
    );
  }

  StudentDomain toDomain() {
    return StudentDomain(
      id: id,
      name: name,
      group: group,
      groupId: groupId,
      accId: accId,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is StudentModel &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              name == other.name &&
              group == other.group &&
              groupId == other.groupId &&
              accId == other.accId;

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ group.hashCode ^
  groupId.hashCode ^ accId.hashCode;
}