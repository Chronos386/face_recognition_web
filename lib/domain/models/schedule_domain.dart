import 'has_id.dart';

class ScheduleDomain implements HasId {
  @override
  final int id;
  final String weekday;
  final DateTime timeStart;
  final DateTime timeEnd;
  final String group;
  final int groupId;
  final String subject;
  final int subjectId;
  final String teacher;
  final int teacherId;
  final String room;
  final int roomId;
  final String building;
  final int buildingId;

  ScheduleDomain({
    required this.id,
    required this.weekday,
    required this.timeStart,
    required this.timeEnd,
    required this.group,
    required this.groupId,
    required this.subject,
    required this.subjectId,
    required this.teacher,
    required this.teacherId,
    required this.room,
    required this.roomId,
    required this.building,
    required this.buildingId,
  });
}