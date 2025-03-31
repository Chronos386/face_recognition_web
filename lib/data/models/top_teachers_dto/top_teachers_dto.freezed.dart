// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_teachers_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopTeachersDTO _$TopTeachersDTOFromJson(Map<String, dynamic> json) {
  return _TopTeachersDTO.fromJson(json);
}

/// @nodoc
mixin _$TopTeachersDTO {
  int get teacher_id => throw _privateConstructorUsedError;
  String get teacher_name => throw _privateConstructorUsedError;
  double get attendance_percent => throw _privateConstructorUsedError;
  int get total_classes => throw _privateConstructorUsedError;

  /// Serializes this TopTeachersDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopTeachersDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopTeachersDTOCopyWith<TopTeachersDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopTeachersDTOCopyWith<$Res> {
  factory $TopTeachersDTOCopyWith(
          TopTeachersDTO value, $Res Function(TopTeachersDTO) then) =
      _$TopTeachersDTOCopyWithImpl<$Res, TopTeachersDTO>;
  @useResult
  $Res call(
      {int teacher_id,
      String teacher_name,
      double attendance_percent,
      int total_classes});
}

/// @nodoc
class _$TopTeachersDTOCopyWithImpl<$Res, $Val extends TopTeachersDTO>
    implements $TopTeachersDTOCopyWith<$Res> {
  _$TopTeachersDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopTeachersDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacher_id = null,
    Object? teacher_name = null,
    Object? attendance_percent = null,
    Object? total_classes = null,
  }) {
    return _then(_value.copyWith(
      teacher_id: null == teacher_id
          ? _value.teacher_id
          : teacher_id // ignore: cast_nullable_to_non_nullable
              as int,
      teacher_name: null == teacher_name
          ? _value.teacher_name
          : teacher_name // ignore: cast_nullable_to_non_nullable
              as String,
      attendance_percent: null == attendance_percent
          ? _value.attendance_percent
          : attendance_percent // ignore: cast_nullable_to_non_nullable
              as double,
      total_classes: null == total_classes
          ? _value.total_classes
          : total_classes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopTeachersDTOImplCopyWith<$Res>
    implements $TopTeachersDTOCopyWith<$Res> {
  factory _$$TopTeachersDTOImplCopyWith(_$TopTeachersDTOImpl value,
          $Res Function(_$TopTeachersDTOImpl) then) =
      __$$TopTeachersDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int teacher_id,
      String teacher_name,
      double attendance_percent,
      int total_classes});
}

/// @nodoc
class __$$TopTeachersDTOImplCopyWithImpl<$Res>
    extends _$TopTeachersDTOCopyWithImpl<$Res, _$TopTeachersDTOImpl>
    implements _$$TopTeachersDTOImplCopyWith<$Res> {
  __$$TopTeachersDTOImplCopyWithImpl(
      _$TopTeachersDTOImpl _value, $Res Function(_$TopTeachersDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopTeachersDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacher_id = null,
    Object? teacher_name = null,
    Object? attendance_percent = null,
    Object? total_classes = null,
  }) {
    return _then(_$TopTeachersDTOImpl(
      teacher_id: null == teacher_id
          ? _value.teacher_id
          : teacher_id // ignore: cast_nullable_to_non_nullable
              as int,
      teacher_name: null == teacher_name
          ? _value.teacher_name
          : teacher_name // ignore: cast_nullable_to_non_nullable
              as String,
      attendance_percent: null == attendance_percent
          ? _value.attendance_percent
          : attendance_percent // ignore: cast_nullable_to_non_nullable
              as double,
      total_classes: null == total_classes
          ? _value.total_classes
          : total_classes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopTeachersDTOImpl implements _TopTeachersDTO {
  const _$TopTeachersDTOImpl(
      {required this.teacher_id,
      required this.teacher_name,
      required this.attendance_percent,
      required this.total_classes});

  factory _$TopTeachersDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopTeachersDTOImplFromJson(json);

  @override
  final int teacher_id;
  @override
  final String teacher_name;
  @override
  final double attendance_percent;
  @override
  final int total_classes;

  @override
  String toString() {
    return 'TopTeachersDTO(teacher_id: $teacher_id, teacher_name: $teacher_name, attendance_percent: $attendance_percent, total_classes: $total_classes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopTeachersDTOImpl &&
            (identical(other.teacher_id, teacher_id) ||
                other.teacher_id == teacher_id) &&
            (identical(other.teacher_name, teacher_name) ||
                other.teacher_name == teacher_name) &&
            (identical(other.attendance_percent, attendance_percent) ||
                other.attendance_percent == attendance_percent) &&
            (identical(other.total_classes, total_classes) ||
                other.total_classes == total_classes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, teacher_id, teacher_name, attendance_percent, total_classes);

  /// Create a copy of TopTeachersDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopTeachersDTOImplCopyWith<_$TopTeachersDTOImpl> get copyWith =>
      __$$TopTeachersDTOImplCopyWithImpl<_$TopTeachersDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopTeachersDTOImplToJson(
      this,
    );
  }
}

abstract class _TopTeachersDTO implements TopTeachersDTO {
  const factory _TopTeachersDTO(
      {required final int teacher_id,
      required final String teacher_name,
      required final double attendance_percent,
      required final int total_classes}) = _$TopTeachersDTOImpl;

  factory _TopTeachersDTO.fromJson(Map<String, dynamic> json) =
      _$TopTeachersDTOImpl.fromJson;

  @override
  int get teacher_id;
  @override
  String get teacher_name;
  @override
  double get attendance_percent;
  @override
  int get total_classes;

  /// Create a copy of TopTeachersDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopTeachersDTOImplCopyWith<_$TopTeachersDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
