// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeacherDTO _$TeacherDTOFromJson(Map<String, dynamic> json) {
  return _TeacherDTO.fromJson(json);
}

/// @nodoc
mixin _$TeacherDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get acc_id => throw _privateConstructorUsedError;
  String get department => throw _privateConstructorUsedError;
  int get department_id => throw _privateConstructorUsedError;

  /// Serializes this TeacherDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeacherDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherDTOCopyWith<TeacherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherDTOCopyWith<$Res> {
  factory $TeacherDTOCopyWith(
          TeacherDTO value, $Res Function(TeacherDTO) then) =
      _$TeacherDTOCopyWithImpl<$Res, TeacherDTO>;
  @useResult
  $Res call(
      {int id, String name, int acc_id, String department, int department_id});
}

/// @nodoc
class _$TeacherDTOCopyWithImpl<$Res, $Val extends TeacherDTO>
    implements $TeacherDTOCopyWith<$Res> {
  _$TeacherDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? acc_id = null,
    Object? department = null,
    Object? department_id = null,
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
      acc_id: null == acc_id
          ? _value.acc_id
          : acc_id // ignore: cast_nullable_to_non_nullable
              as int,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      department_id: null == department_id
          ? _value.department_id
          : department_id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherDTOImplCopyWith<$Res>
    implements $TeacherDTOCopyWith<$Res> {
  factory _$$TeacherDTOImplCopyWith(
          _$TeacherDTOImpl value, $Res Function(_$TeacherDTOImpl) then) =
      __$$TeacherDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, int acc_id, String department, int department_id});
}

/// @nodoc
class __$$TeacherDTOImplCopyWithImpl<$Res>
    extends _$TeacherDTOCopyWithImpl<$Res, _$TeacherDTOImpl>
    implements _$$TeacherDTOImplCopyWith<$Res> {
  __$$TeacherDTOImplCopyWithImpl(
      _$TeacherDTOImpl _value, $Res Function(_$TeacherDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? acc_id = null,
    Object? department = null,
    Object? department_id = null,
  }) {
    return _then(_$TeacherDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      acc_id: null == acc_id
          ? _value.acc_id
          : acc_id // ignore: cast_nullable_to_non_nullable
              as int,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      department_id: null == department_id
          ? _value.department_id
          : department_id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherDTOImpl implements _TeacherDTO {
  const _$TeacherDTOImpl(
      {required this.id,
      required this.name,
      required this.acc_id,
      required this.department,
      required this.department_id});

  factory _$TeacherDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int acc_id;
  @override
  final String department;
  @override
  final int department_id;

  @override
  String toString() {
    return 'TeacherDTO(id: $id, name: $name, acc_id: $acc_id, department: $department, department_id: $department_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.acc_id, acc_id) || other.acc_id == acc_id) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.department_id, department_id) ||
                other.department_id == department_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, acc_id, department, department_id);

  /// Create a copy of TeacherDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherDTOImplCopyWith<_$TeacherDTOImpl> get copyWith =>
      __$$TeacherDTOImplCopyWithImpl<_$TeacherDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherDTOImplToJson(
      this,
    );
  }
}

abstract class _TeacherDTO implements TeacherDTO {
  const factory _TeacherDTO(
      {required final int id,
      required final String name,
      required final int acc_id,
      required final String department,
      required final int department_id}) = _$TeacherDTOImpl;

  factory _TeacherDTO.fromJson(Map<String, dynamic> json) =
      _$TeacherDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get acc_id;
  @override
  String get department;
  @override
  int get department_id;

  /// Create a copy of TeacherDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherDTOImplCopyWith<_$TeacherDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
