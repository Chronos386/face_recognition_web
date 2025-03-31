// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_student_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopStudentDTO _$TopStudentDTOFromJson(Map<String, dynamic> json) {
  return _TopStudentDTO.fromJson(json);
}

/// @nodoc
mixin _$TopStudentDTO {
  int get student_id => throw _privateConstructorUsedError;
  String get student_name => throw _privateConstructorUsedError;
  int get absences_count => throw _privateConstructorUsedError;
  String get group => throw _privateConstructorUsedError;

  /// Serializes this TopStudentDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopStudentDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopStudentDTOCopyWith<TopStudentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopStudentDTOCopyWith<$Res> {
  factory $TopStudentDTOCopyWith(
          TopStudentDTO value, $Res Function(TopStudentDTO) then) =
      _$TopStudentDTOCopyWithImpl<$Res, TopStudentDTO>;
  @useResult
  $Res call(
      {int student_id, String student_name, int absences_count, String group});
}

/// @nodoc
class _$TopStudentDTOCopyWithImpl<$Res, $Val extends TopStudentDTO>
    implements $TopStudentDTOCopyWith<$Res> {
  _$TopStudentDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopStudentDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student_id = null,
    Object? student_name = null,
    Object? absences_count = null,
    Object? group = null,
  }) {
    return _then(_value.copyWith(
      student_id: null == student_id
          ? _value.student_id
          : student_id // ignore: cast_nullable_to_non_nullable
              as int,
      student_name: null == student_name
          ? _value.student_name
          : student_name // ignore: cast_nullable_to_non_nullable
              as String,
      absences_count: null == absences_count
          ? _value.absences_count
          : absences_count // ignore: cast_nullable_to_non_nullable
              as int,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopStudentDTOImplCopyWith<$Res>
    implements $TopStudentDTOCopyWith<$Res> {
  factory _$$TopStudentDTOImplCopyWith(
          _$TopStudentDTOImpl value, $Res Function(_$TopStudentDTOImpl) then) =
      __$$TopStudentDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int student_id, String student_name, int absences_count, String group});
}

/// @nodoc
class __$$TopStudentDTOImplCopyWithImpl<$Res>
    extends _$TopStudentDTOCopyWithImpl<$Res, _$TopStudentDTOImpl>
    implements _$$TopStudentDTOImplCopyWith<$Res> {
  __$$TopStudentDTOImplCopyWithImpl(
      _$TopStudentDTOImpl _value, $Res Function(_$TopStudentDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopStudentDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student_id = null,
    Object? student_name = null,
    Object? absences_count = null,
    Object? group = null,
  }) {
    return _then(_$TopStudentDTOImpl(
      student_id: null == student_id
          ? _value.student_id
          : student_id // ignore: cast_nullable_to_non_nullable
              as int,
      student_name: null == student_name
          ? _value.student_name
          : student_name // ignore: cast_nullable_to_non_nullable
              as String,
      absences_count: null == absences_count
          ? _value.absences_count
          : absences_count // ignore: cast_nullable_to_non_nullable
              as int,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopStudentDTOImpl implements _TopStudentDTO {
  const _$TopStudentDTOImpl(
      {required this.student_id,
      required this.student_name,
      required this.absences_count,
      required this.group});

  factory _$TopStudentDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopStudentDTOImplFromJson(json);

  @override
  final int student_id;
  @override
  final String student_name;
  @override
  final int absences_count;
  @override
  final String group;

  @override
  String toString() {
    return 'TopStudentDTO(student_id: $student_id, student_name: $student_name, absences_count: $absences_count, group: $group)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopStudentDTOImpl &&
            (identical(other.student_id, student_id) ||
                other.student_id == student_id) &&
            (identical(other.student_name, student_name) ||
                other.student_name == student_name) &&
            (identical(other.absences_count, absences_count) ||
                other.absences_count == absences_count) &&
            (identical(other.group, group) || other.group == group));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, student_id, student_name, absences_count, group);

  /// Create a copy of TopStudentDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopStudentDTOImplCopyWith<_$TopStudentDTOImpl> get copyWith =>
      __$$TopStudentDTOImplCopyWithImpl<_$TopStudentDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopStudentDTOImplToJson(
      this,
    );
  }
}

abstract class _TopStudentDTO implements TopStudentDTO {
  const factory _TopStudentDTO(
      {required final int student_id,
      required final String student_name,
      required final int absences_count,
      required final String group}) = _$TopStudentDTOImpl;

  factory _TopStudentDTO.fromJson(Map<String, dynamic> json) =
      _$TopStudentDTOImpl.fromJson;

  @override
  int get student_id;
  @override
  String get student_name;
  @override
  int get absences_count;
  @override
  String get group;

  /// Create a copy of TopStudentDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopStudentDTOImplCopyWith<_$TopStudentDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
