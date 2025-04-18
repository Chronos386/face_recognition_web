import '/domain/models/subject_domain.dart';

class SubjectModel {
  final int id;
  final String name;

  SubjectModel({
    required this.id,
    required this.name,
  });

  factory SubjectModel.fromDomain(SubjectDomain domain) {
    return SubjectModel(
      id: domain.id,
      name: domain.name,
    );
  }

  SubjectDomain toDomain() {
    return SubjectDomain(
      id: id,
      name: name,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is SubjectModel &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              name == other.name;

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}