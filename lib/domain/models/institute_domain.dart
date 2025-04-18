import 'has_id.dart';

class InstituteDomain implements HasId {
  @override
  final int id;
  String name;

  InstituteDomain({
    required this.id,
    required this.name,
  });
}