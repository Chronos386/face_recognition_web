import '../../domain/models/group_domain.dart';

class GroupModel {
  final int id;
  final String name;
  final int instituteId;

  GroupModel({
    required this.id,
    required this.name,
    required this.instituteId,
  });

  factory GroupModel.fromDomain(GroupDomain domain) {
    return GroupModel(
      id: domain.id,
      name: domain.name,
      instituteId: domain.instituteId,
    );
  }

  GroupDomain toDomain() {
    return GroupDomain(
      id: id,
      name: name,
      instituteId: instituteId,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is GroupModel &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              name == other.name &&
              instituteId == other.instituteId;

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ instituteId.hashCode;
}