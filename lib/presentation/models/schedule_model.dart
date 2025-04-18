import '/domain/models/schedule_domain.dart';

class ScheduleModel {
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

  ScheduleModel({
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

  factory ScheduleModel.fromDomain(ScheduleDomain domain) {
    return ScheduleModel(
      id: domain.id,
      weekday: domain.weekday,
      timeStart: domain.timeStart,
      timeEnd: domain.timeEnd,
      group: domain.group,
      groupId: domain.groupId,
      subject: domain.subject,
      subjectId: domain.subjectId,
      teacher: domain.teacher,
      teacherId: domain.teacherId,
      room: domain.room,
      roomId: domain.roomId,
      building: domain.building,
      buildingId: domain.buildingId,
    );
  }

  ScheduleDomain toDomain() {
    return ScheduleDomain(
      id: id,
      weekday: weekday,
      timeStart: timeStart,
      timeEnd: timeEnd,
      group: group,
      groupId: groupId,
      subject: subject,
      subjectId: subjectId,
      teacher: teacher,
      teacherId: teacherId,
      room: room,
      roomId: roomId,
      building: building,
      buildingId: buildingId,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is ScheduleModel &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              weekday == other.weekday &&
              timeStart == other.timeStart &&
              timeEnd == other.timeEnd &&
              group == other.group &&
              groupId == other.groupId &&
              subject == other.subject &&
              subjectId == other.subjectId &&
              teacher == other.teacher &&
              teacherId == other.teacherId &&
              room == other.room &&
              roomId == other.roomId &&
              building == other.building &&
              buildingId == other.buildingId;

  @override
  int get hashCode => id.hashCode ^ weekday.hashCode ^ timeStart.hashCode
  ^ timeEnd.hashCode ^ group.hashCode ^ groupId.hashCode ^ subject.hashCode
  ^ subjectId.hashCode ^ teacher.hashCode ^ teacherId.hashCode
  ^ room.hashCode ^ roomId.hashCode ^ building.hashCode ^ buildingId.hashCode;
}