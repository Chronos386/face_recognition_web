// data/models/schedule_dto/schedule_dto.dart
// ignore_for_file: non_constant_identifier_names
import '/domain/models/schedule_domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'schedule_dto.freezed.dart';
part 'schedule_dto.g.dart';

@freezed
class ScheduleDTO with _$ScheduleDTO {
  const factory ScheduleDTO({
    required int id,
    required String date,
    required String weekday,
    required String time_start,
    required String time_end,
    required String group,
    required int group_id,
    required String subject,
    required int subject_id,
    required String teacher,
    required int teacher_id,
    required String room,
    required int room_id,
    required String building,
    required int building_id,
  }) = _ScheduleDTO;

  factory ScheduleDTO.fromJson(Map<String, dynamic> json) =>
      _$ScheduleDTOFromJson(json);
}

extension ScheduleDtoToDomain on ScheduleDTO {
  ScheduleDomain toDomain() {
    List<String> dateParts = date.split('.');
    int day = int.parse(dateParts[0]);
    int month = int.parse(dateParts[1]);
    int year = int.parse(dateParts[2]);
    List<String> timeStartParts = time_start.split(':');
    int hour_1 = int.parse(timeStartParts[0]);
    int minute_1 = int.parse(timeStartParts[1]);
    List<String> timeEndParts = time_end.split(':');
    int hour_2 = int.parse(timeEndParts[0]);
    int minute_2 = int.parse(timeEndParts[1]);
    return ScheduleDomain(
      id: id,
      weekday: weekday,
      timeStart: DateTime(year, month, day, hour_1, minute_1),
      timeEnd: DateTime(year, month, day, hour_2, minute_2),
      group: group,
      groupId: group_id,
      subject: subject,
      subjectId: subject_id,
      teacher: teacher,
      teacherId: teacher_id,
      room: room,
      roomId: room_id,
      building: building,
      buildingId: building_id,
    );
  }
}