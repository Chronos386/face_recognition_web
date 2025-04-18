import 'has_id.dart';

class BuildingDomain implements HasId {
  @override
  final int id;
  final String name;
  final String address;

  BuildingDomain({
    required this.id,
    required this.name,
    required this.address,
  });
}