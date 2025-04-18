import 'has_id.dart';

class GroupDomain implements HasId {
  @override
  final int id;
  final String name;
  final int instituteId;

  GroupDomain({
    required this.id,
    required this.name,
    required this.instituteId,
  });
}