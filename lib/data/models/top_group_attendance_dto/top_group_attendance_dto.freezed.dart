// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_group_attendance_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopGroupAttendanceDTO _$TopGroupAttendanceDTOFromJson(
    Map<String, dynamic> json) {
  return _TopGroupAttendanceDTO.fromJson(json);
}

/// @nodoc
mixin _$TopGroupAttendanceDTO {
  int get group_id => throw _privateConstructorUsedError;
  String get group_name => throw _privateConstructorUsedError;
  double get attendance_percent => throw _privateConstructorUsedError;
  int get total_attendance => throw _privateConstructorUsedError;

  /// Serializes this TopGroupAttendanceDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopGroupAttendanceDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopGroupAttendanceDTOCopyWith<TopGroupAttendanceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopGroupAttendanceDTOCopyWith<$Res> {
  factory $TopGroupAttendanceDTOCopyWith(TopGroupAttendanceDTO value,
          $Res Function(TopGroupAttendanceDTO) then) =
      _$TopGroupAttendanceDTOCopyWithImpl<$Res, TopGroupAttendanceDTO>;
  @useResult
  $Res call(
      {int group_id,
      String group_name,
      double attendance_percent,
      int total_attendance});
}

/// @nodoc
class _$TopGroupAttendanceDTOCopyWithImpl<$Res,
        $Val extends TopGroupAttendanceDTO>
    implements $TopGroupAttendanceDTOCopyWith<$Res> {
  _$TopGroupAttendanceDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopGroupAttendanceDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group_id = null,
    Object? group_name = null,
    Object? attendance_percent = null,
    Object? total_attendance = null,
  }) {
    return _then(_value.copyWith(
      group_id: null == group_id
          ? _value.group_id
          : group_id // ignore: cast_nullable_to_non_nullable
              as int,
      group_name: null == group_name
          ? _value.group_name
          : group_name // ignore: cast_nullable_to_non_nullable
              as String,
      attendance_percent: null == attendance_percent
          ? _value.attendance_percent
          : attendance_percent // ignore: cast_nullable_to_non_nullable
              as double,
      total_attendance: null == total_attendance
          ? _value.total_attendance
          : total_attendance // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopGroupAttendanceDTOImplCopyWith<$Res>
    implements $TopGroupAttendanceDTOCopyWith<$Res> {
  factory _$$TopGroupAttendanceDTOImplCopyWith(
          _$TopGroupAttendanceDTOImpl value,
          $Res Function(_$TopGroupAttendanceDTOImpl) then) =
      __$$TopGroupAttendanceDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int group_id,
      String group_name,
      double attendance_percent,
      int total_attendance});
}

/// @nodoc
class __$$TopGroupAttendanceDTOImplCopyWithImpl<$Res>
    extends _$TopGroupAttendanceDTOCopyWithImpl<$Res,
        _$TopGroupAttendanceDTOImpl>
    implements _$$TopGroupAttendanceDTOImplCopyWith<$Res> {
  __$$TopGroupAttendanceDTOImplCopyWithImpl(_$TopGroupAttendanceDTOImpl _value,
      $Res Function(_$TopGroupAttendanceDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopGroupAttendanceDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group_id = null,
    Object? group_name = null,
    Object? attendance_percent = null,
    Object? total_attendance = null,
  }) {
    return _then(_$TopGroupAttendanceDTOImpl(
      group_id: null == group_id
          ? _value.group_id
          : group_id // ignore: cast_nullable_to_non_nullable
              as int,
      group_name: null == group_name
          ? _value.group_name
          : group_name // ignore: cast_nullable_to_non_nullable
              as String,
      attendance_percent: null == attendance_percent
          ? _value.attendance_percent
          : attendance_percent // ignore: cast_nullable_to_non_nullable
              as double,
      total_attendance: null == total_attendance
          ? _value.total_attendance
          : total_attendance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopGroupAttendanceDTOImpl implements _TopGroupAttendanceDTO {
  const _$TopGroupAttendanceDTOImpl(
      {required this.group_id,
      required this.group_name,
      required this.attendance_percent,
      required this.total_attendance});

  factory _$TopGroupAttendanceDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopGroupAttendanceDTOImplFromJson(json);

  @override
  final int group_id;
  @override
  final String group_name;
  @override
  final double attendance_percent;
  @override
  final int total_attendance;

  @override
  String toString() {
    return 'TopGroupAttendanceDTO(group_id: $group_id, group_name: $group_name, attendance_percent: $attendance_percent, total_attendance: $total_attendance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopGroupAttendanceDTOImpl &&
            (identical(other.group_id, group_id) ||
                other.group_id == group_id) &&
            (identical(other.group_name, group_name) ||
                other.group_name == group_name) &&
            (identical(other.attendance_percent, attendance_percent) ||
                other.attendance_percent == attendance_percent) &&
            (identical(other.total_attendance, total_attendance) ||
                other.total_attendance == total_attendance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, group_id, group_name, attendance_percent, total_attendance);

  /// Create a copy of TopGroupAttendanceDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopGroupAttendanceDTOImplCopyWith<_$TopGroupAttendanceDTOImpl>
      get copyWith => __$$TopGroupAttendanceDTOImplCopyWithImpl<
          _$TopGroupAttendanceDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopGroupAttendanceDTOImplToJson(
      this,
    );
  }
}

abstract class _TopGroupAttendanceDTO implements TopGroupAttendanceDTO {
  const factory _TopGroupAttendanceDTO(
      {required final int group_id,
      required final String group_name,
      required final double attendance_percent,
      required final int total_attendance}) = _$TopGroupAttendanceDTOImpl;

  factory _TopGroupAttendanceDTO.fromJson(Map<String, dynamic> json) =
      _$TopGroupAttendanceDTOImpl.fromJson;

  @override
  int get group_id;
  @override
  String get group_name;
  @override
  double get attendance_percent;
  @override
  int get total_attendance;

  /// Create a copy of TopGroupAttendanceDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopGroupAttendanceDTOImplCopyWith<_$TopGroupAttendanceDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
