import '/domain/models/building_domain.dart';

class BuildingModel {
  final int id;
  final String name;
  final String address;

  BuildingModel({
    required this.id,
    required this.name,
    required this.address,
  });

  factory BuildingModel.fromDomain(BuildingDomain domain) {
    return BuildingModel(
      id: domain.id,
      name: domain.name,
      address: domain.address,
    );
  }

  BuildingDomain toDomain() {
    return BuildingDomain(
      id: id,
      name: name,
      address: address,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is BuildingModel &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              name == other.name &&
              address == other.address;

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ address.hashCode;
}