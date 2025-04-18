import 'has_id.dart';

class SubjectDomain implements HasId {
  @override
  final int id;
  final String name;

  SubjectDomain({
    required this.id,
    required this.name,
  });
}