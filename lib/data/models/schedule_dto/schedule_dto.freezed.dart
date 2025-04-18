// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScheduleDTO _$ScheduleDTOFromJson(Map<String, dynamic> json) {
  return _ScheduleDTO.fromJson(json);
}

/// @nodoc
mixin _$ScheduleDTO {
  int get id => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get weekday => throw _privateConstructorUsedError;
  String get time_start => throw _privateConstructorUsedError;
  String get time_end => throw _privateConstructorUsedError;
  String get group => throw _privateConstructorUsedError;
  int get group_id => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  int get subject_id => throw _privateConstructorUsedError;
  String get teacher => throw _privateConstructorUsedError;
  int get teacher_id => throw _privateConstructorUsedError;
  String get room => throw _privateConstructorUsedError;
  int get room_id => throw _privateConstructorUsedError;
  String get building => throw _privateConstructorUsedError;
  int get building_id => throw _privateConstructorUsedError;

  /// Serializes this ScheduleDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScheduleDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleDTOCopyWith<ScheduleDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleDTOCopyWith<$Res> {
  factory $ScheduleDTOCopyWith(
          ScheduleDTO value, $Res Function(ScheduleDTO) then) =
      _$ScheduleDTOCopyWithImpl<$Res, ScheduleDTO>;
  @useResult
  $Res call(
      {int id,
      String date,
      String weekday,
      String time_start,
      String time_end,
      String group,
      int group_id,
      String subject,
      int subject_id,
      String teacher,
      int teacher_id,
      String room,
      int room_id,
      String building,
      int building_id});
}

/// @nodoc
class _$ScheduleDTOCopyWithImpl<$Res, $Val extends ScheduleDTO>
    implements $ScheduleDTOCopyWith<$Res> {
  _$ScheduleDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? weekday = null,
    Object? time_start = null,
    Object? time_end = null,
    Object? group = null,
    Object? group_id = null,
    Object? subject = null,
    Object? subject_id = null,
    Object? teacher = null,
    Object? teacher_id = null,
    Object? room = null,
    Object? room_id = null,
    Object? building = null,
    Object? building_id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      weekday: null == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as String,
      time_start: null == time_start
          ? _value.time_start
          : time_start // ignore: cast_nullable_to_non_nullable
              as String,
      time_end: null == time_end
          ? _value.time_end
          : time_end // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      group_id: null == group_id
          ? _value.group_id
          : group_id // ignore: cast_nullable_to_non_nullable
              as int,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      subject_id: null == subject_id
          ? _value.subject_id
          : subject_id // ignore: cast_nullable_to_non_nullable
              as int,
      teacher: null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String,
      teacher_id: null == teacher_id
          ? _value.teacher_id
          : teacher_id // ignore: cast_nullable_to_non_nullable
              as int,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      room_id: null == room_id
          ? _value.room_id
          : room_id // ignore: cast_nullable_to_non_nullable
              as int,
      building: null == building
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String,
      building_id: null == building_id
          ? _value.building_id
          : building_id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleDTOImplCopyWith<$Res>
    implements $ScheduleDTOCopyWith<$Res> {
  factory _$$ScheduleDTOImplCopyWith(
          _$ScheduleDTOImpl value, $Res Function(_$ScheduleDTOImpl) then) =
      __$$ScheduleDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String date,
      String weekday,
      String time_start,
      String time_end,
      String group,
      int group_id,
      String subject,
      int subject_id,
      String teacher,
      int teacher_id,
      String room,
      int room_id,
      String building,
      int building_id});
}

/// @nodoc
class __$$ScheduleDTOImplCopyWithImpl<$Res>
    extends _$ScheduleDTOCopyWithImpl<$Res, _$ScheduleDTOImpl>
    implements _$$ScheduleDTOImplCopyWith<$Res> {
  __$$ScheduleDTOImplCopyWithImpl(
      _$ScheduleDTOImpl _value, $Res Function(_$ScheduleDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? weekday = null,
    Object? time_start = null,
    Object? time_end = null,
    Object? group = null,
    Object? group_id = null,
    Object? subject = null,
    Object? subject_id = null,
    Object? teacher = null,
    Object? teacher_id = null,
    Object? room = null,
    Object? room_id = null,
    Object? building = null,
    Object? building_id = null,
  }) {
    return _then(_$ScheduleDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      weekday: null == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as String,
      time_start: null == time_start
          ? _value.time_start
          : time_start // ignore: cast_nullable_to_non_nullable
              as String,
      time_end: null == time_end
          ? _value.time_end
          : time_end // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      group_id: null == group_id
          ? _value.group_id
          : group_id // ignore: cast_nullable_to_non_nullable
              as int,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      subject_id: null == subject_id
          ? _value.subject_id
          : subject_id // ignore: cast_nullable_to_non_nullable
              as int,
      teacher: null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String,
      teacher_id: null == teacher_id
          ? _value.teacher_id
          : teacher_id // ignore: cast_nullable_to_non_nullable
              as int,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      room_id: null == room_id
          ? _value.room_id
          : room_id // ignore: cast_nullable_to_non_nullable
              as int,
      building: null == building
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String,
      building_id: null == building_id
          ? _value.building_id
          : building_id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleDTOImpl implements _ScheduleDTO {
  const _$ScheduleDTOImpl(
      {required this.id,
      required this.date,
      required this.weekday,
      required this.time_start,
      required this.time_end,
      required this.group,
      required this.group_id,
      required this.subject,
      required this.subject_id,
      required this.teacher,
      required this.teacher_id,
      required this.room,
      required this.room_id,
      required this.building,
      required this.building_id});

  factory _$ScheduleDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String date;
  @override
  final String weekday;
  @override
  final String time_start;
  @override
  final String time_end;
  @override
  final String group;
  @override
  final int group_id;
  @override
  final String subject;
  @override
  final int subject_id;
  @override
  final String teacher;
  @override
  final int teacher_id;
  @override
  final String room;
  @override
  final int room_id;
  @override
  final String building;
  @override
  final int building_id;

  @override
  String toString() {
    return 'ScheduleDTO(id: $id, date: $date, weekday: $weekday, time_start: $time_start, time_end: $time_end, group: $group, group_id: $group_id, subject: $subject, subject_id: $subject_id, teacher: $teacher, teacher_id: $teacher_id, room: $room, room_id: $room_id, building: $building, building_id: $building_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.weekday, weekday) || other.weekday == weekday) &&
            (identical(other.time_start, time_start) ||
                other.time_start == time_start) &&
            (identical(other.time_end, time_end) ||
                other.time_end == time_end) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.group_id, group_id) ||
                other.group_id == group_id) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.subject_id, subject_id) ||
                other.subject_id == subject_id) &&
            (identical(other.teacher, teacher) || other.teacher == teacher) &&
            (identical(other.teacher_id, teacher_id) ||
                other.teacher_id == teacher_id) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.room_id, room_id) || other.room_id == room_id) &&
            (identical(other.building, building) ||
                other.building == building) &&
            (identical(other.building_id, building_id) ||
                other.building_id == building_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      date,
      weekday,
      time_start,
      time_end,
      group,
      group_id,
      subject,
      subject_id,
      teacher,
      teacher_id,
      room,
      room_id,
      building,
      building_id);

  /// Create a copy of ScheduleDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleDTOImplCopyWith<_$ScheduleDTOImpl> get copyWith =>
      __$$ScheduleDTOImplCopyWithImpl<_$ScheduleDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleDTOImplToJson(
      this,
    );
  }
}

abstract class _ScheduleDTO implements ScheduleDTO {
  const factory _ScheduleDTO(
      {required final int id,
      required final String date,
      required final String weekday,
      required final String time_start,
      required final String time_end,
      required final String group,
      required final int group_id,
      required final String subject,
      required final int subject_id,
      required final String teacher,
      required final int teacher_id,
      required final String room,
      required final int room_id,
      required final String building,
      required final int building_id}) = _$ScheduleDTOImpl;

  factory _ScheduleDTO.fromJson(Map<String, dynamic> json) =
      _$ScheduleDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get date;
  @override
  String get weekday;
  @override
  String get time_start;
  @override
  String get time_end;
  @override
  String get group;
  @override
  int get group_id;
  @override
  String get subject;
  @override
  int get subject_id;
  @override
  String get teacher;
  @override
  int get teacher_id;
  @override
  String get room;
  @override
  int get room_id;
  @override
  String get building;
  @override
  int get building_id;

  /// Create a copy of ScheduleDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleDTOImplCopyWith<_$ScheduleDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
