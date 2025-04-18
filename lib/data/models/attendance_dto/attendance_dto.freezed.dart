// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttendanceDTO _$AttendanceDTOFromJson(Map<String, dynamic> json) {
  return _AttendanceDTO.fromJson(json);
}

/// @nodoc
mixin _$AttendanceDTO {
  int get id => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  int get student_id => throw _privateConstructorUsedError;
  int get schedule_id => throw _privateConstructorUsedError;

  /// Serializes this AttendanceDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceDTOCopyWith<AttendanceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceDTOCopyWith<$Res> {
  factory $AttendanceDTOCopyWith(
          AttendanceDTO value, $Res Function(AttendanceDTO) then) =
      _$AttendanceDTOCopyWithImpl<$Res, AttendanceDTO>;
  @useResult
  $Res call({int id, bool status, int student_id, int schedule_id});
}

/// @nodoc
class _$AttendanceDTOCopyWithImpl<$Res, $Val extends AttendanceDTO>
    implements $AttendanceDTOCopyWith<$Res> {
  _$AttendanceDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? student_id = null,
    Object? schedule_id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      student_id: null == student_id
          ? _value.student_id
          : student_id // ignore: cast_nullable_to_non_nullable
              as int,
      schedule_id: null == schedule_id
          ? _value.schedule_id
          : schedule_id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendanceDTOImplCopyWith<$Res>
    implements $AttendanceDTOCopyWith<$Res> {
  factory _$$AttendanceDTOImplCopyWith(
          _$AttendanceDTOImpl value, $Res Function(_$AttendanceDTOImpl) then) =
      __$$AttendanceDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, bool status, int student_id, int schedule_id});
}

/// @nodoc
class __$$AttendanceDTOImplCopyWithImpl<$Res>
    extends _$AttendanceDTOCopyWithImpl<$Res, _$AttendanceDTOImpl>
    implements _$$AttendanceDTOImplCopyWith<$Res> {
  __$$AttendanceDTOImplCopyWithImpl(
      _$AttendanceDTOImpl _value, $Res Function(_$AttendanceDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? student_id = null,
    Object? schedule_id = null,
  }) {
    return _then(_$AttendanceDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      student_id: null == student_id
          ? _value.student_id
          : student_id // ignore: cast_nullable_to_non_nullable
              as int,
      schedule_id: null == schedule_id
          ? _value.schedule_id
          : schedule_id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceDTOImpl implements _AttendanceDTO {
  const _$AttendanceDTOImpl(
      {required this.id,
      required this.status,
      required this.student_id,
      required this.schedule_id});

  factory _$AttendanceDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceDTOImplFromJson(json);

  @override
  final int id;
  @override
  final bool status;
  @override
  final int student_id;
  @override
  final int schedule_id;

  @override
  String toString() {
    return 'AttendanceDTO(id: $id, status: $status, student_id: $student_id, schedule_id: $schedule_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.student_id, student_id) ||
                other.student_id == student_id) &&
            (identical(other.schedule_id, schedule_id) ||
                other.schedule_id == schedule_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, status, student_id, schedule_id);

  /// Create a copy of AttendanceDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceDTOImplCopyWith<_$AttendanceDTOImpl> get copyWith =>
      __$$AttendanceDTOImplCopyWithImpl<_$AttendanceDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceDTOImplToJson(
      this,
    );
  }
}

abstract class _AttendanceDTO implements AttendanceDTO {
  const factory _AttendanceDTO(
      {required final int id,
      required final bool status,
      required final int student_id,
      required final int schedule_id}) = _$AttendanceDTOImpl;

  factory _AttendanceDTO.fromJson(Map<String, dynamic> json) =
      _$AttendanceDTOImpl.fromJson;

  @override
  int get id;
  @override
  bool get status;
  @override
  int get student_id;
  @override
  int get schedule_id;

  /// Create a copy of AttendanceDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceDTOImplCopyWith<_$AttendanceDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
