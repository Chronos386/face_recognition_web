import '/domain/models/institute_domain.dart';

class InstituteModel {
  final int id;
  final String name;

  InstituteModel({
    required this.id,
    required this.name,
  });

  factory InstituteModel.fromDomain(InstituteDomain domain) {
    return InstituteModel(
      id: domain.id,
      name: domain.name,
    );
  }

  InstituteDomain toDomain() {
    return InstituteDomain(
        id: id,
        name: name,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is InstituteModel &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              name == other.name;

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}