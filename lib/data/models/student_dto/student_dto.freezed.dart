// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentDTO _$StudentDTOFromJson(Map<String, dynamic> json) {
  return _StudentDTO.fromJson(json);
}

/// @nodoc
mixin _$StudentDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get group => throw _privateConstructorUsedError;
  int get group_id => throw _privateConstructorUsedError;
  int get acc_id => throw _privateConstructorUsedError;

  /// Serializes this StudentDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentDTOCopyWith<StudentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentDTOCopyWith<$Res> {
  factory $StudentDTOCopyWith(
          StudentDTO value, $Res Function(StudentDTO) then) =
      _$StudentDTOCopyWithImpl<$Res, StudentDTO>;
  @useResult
  $Res call({int id, String name, String group, int group_id, int acc_id});
}

/// @nodoc
class _$StudentDTOCopyWithImpl<$Res, $Val extends StudentDTO>
    implements $StudentDTOCopyWith<$Res> {
  _$StudentDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? group = null,
    Object? group_id = null,
    Object? acc_id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      group_id: null == group_id
          ? _value.group_id
          : group_id // ignore: cast_nullable_to_non_nullable
              as int,
      acc_id: null == acc_id
          ? _value.acc_id
          : acc_id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentDTOImplCopyWith<$Res>
    implements $StudentDTOCopyWith<$Res> {
  factory _$$StudentDTOImplCopyWith(
          _$StudentDTOImpl value, $Res Function(_$StudentDTOImpl) then) =
      __$$StudentDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String group, int group_id, int acc_id});
}

/// @nodoc
class __$$StudentDTOImplCopyWithImpl<$Res>
    extends _$StudentDTOCopyWithImpl<$Res, _$StudentDTOImpl>
    implements _$$StudentDTOImplCopyWith<$Res> {
  __$$StudentDTOImplCopyWithImpl(
      _$StudentDTOImpl _value, $Res Function(_$StudentDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? group = null,
    Object? group_id = null,
    Object? acc_id = null,
  }) {
    return _then(_$StudentDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      group_id: null == group_id
          ? _value.group_id
          : group_id // ignore: cast_nullable_to_non_nullable
              as int,
      acc_id: null == acc_id
          ? _value.acc_id
          : acc_id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentDTOImpl implements _StudentDTO {
  const _$StudentDTOImpl(
      {required this.id,
      required this.name,
      required this.group,
      required this.group_id,
      required this.acc_id});

  factory _$StudentDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String group;
  @override
  final int group_id;
  @override
  final int acc_id;

  @override
  String toString() {
    return 'StudentDTO(id: $id, name: $name, group: $group, group_id: $group_id, acc_id: $acc_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.group_id, group_id) ||
                other.group_id == group_id) &&
            (identical(other.acc_id, acc_id) || other.acc_id == acc_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, group, group_id, acc_id);

  /// Create a copy of StudentDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentDTOImplCopyWith<_$StudentDTOImpl> get copyWith =>
      __$$StudentDTOImplCopyWithImpl<_$StudentDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentDTOImplToJson(
      this,
    );
  }
}

abstract class _StudentDTO implements StudentDTO {
  const factory _StudentDTO(
      {required final int id,
      required final String name,
      required final String group,
      required final int group_id,
      required final int acc_id}) = _$StudentDTOImpl;

  factory _StudentDTO.fromJson(Map<String, dynamic> json) =
      _$StudentDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get group;
  @override
  int get group_id;
  @override
  int get acc_id;

  /// Create a copy of StudentDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentDTOImplCopyWith<_$StudentDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
