import 'has_id.dart';

class StudentDomain implements HasId {
  @override
  final int id;
  final String name;
  final String group;
  final int groupId;
  final int accId;

  StudentDomain({
    required this.id,
    required this.name,
    required this.group,
    required this.groupId,
    required this.accId,
  });
}