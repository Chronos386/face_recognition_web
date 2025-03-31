// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDTO _$UserDTOFromJson(Map<String, dynamic> json) {
  return _UserDTO.fromJson(json);
}

/// @nodoc
mixin _$UserDTO {
  int get id => throw _privateConstructorUsedError;
  bool get is_admin => throw _privateConstructorUsedError;
  String get login => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get hash => throw _privateConstructorUsedError;
  int? get group_id => throw _privateConstructorUsedError;
  String? get group_name => throw _privateConstructorUsedError;
  int? get department_id => throw _privateConstructorUsedError;
  String? get department_name => throw _privateConstructorUsedError;
  int get institute_id => throw _privateConstructorUsedError;
  String get institute_name => throw _privateConstructorUsedError;

  /// Serializes this UserDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDTOCopyWith<UserDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDTOCopyWith<$Res> {
  factory $UserDTOCopyWith(UserDTO value, $Res Function(UserDTO) then) =
      _$UserDTOCopyWithImpl<$Res, UserDTO>;
  @useResult
  $Res call(
      {int id,
      bool is_admin,
      String login,
      String name,
      String hash,
      int? group_id,
      String? group_name,
      int? department_id,
      String? department_name,
      int institute_id,
      String institute_name});
}

/// @nodoc
class _$UserDTOCopyWithImpl<$Res, $Val extends UserDTO>
    implements $UserDTOCopyWith<$Res> {
  _$UserDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? is_admin = null,
    Object? login = null,
    Object? name = null,
    Object? hash = null,
    Object? group_id = freezed,
    Object? group_name = freezed,
    Object? department_id = freezed,
    Object? department_name = freezed,
    Object? institute_id = null,
    Object? institute_name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      is_admin: null == is_admin
          ? _value.is_admin
          : is_admin // ignore: cast_nullable_to_non_nullable
              as bool,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      group_id: freezed == group_id
          ? _value.group_id
          : group_id // ignore: cast_nullable_to_non_nullable
              as int?,
      group_name: freezed == group_name
          ? _value.group_name
          : group_name // ignore: cast_nullable_to_non_nullable
              as String?,
      department_id: freezed == department_id
          ? _value.department_id
          : department_id // ignore: cast_nullable_to_non_nullable
              as int?,
      department_name: freezed == department_name
          ? _value.department_name
          : department_name // ignore: cast_nullable_to_non_nullable
              as String?,
      institute_id: null == institute_id
          ? _value.institute_id
          : institute_id // ignore: cast_nullable_to_non_nullable
              as int,
      institute_name: null == institute_name
          ? _value.institute_name
          : institute_name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDTOImplCopyWith<$Res> implements $UserDTOCopyWith<$Res> {
  factory _$$UserDTOImplCopyWith(
          _$UserDTOImpl value, $Res Function(_$UserDTOImpl) then) =
      __$$UserDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      bool is_admin,
      String login,
      String name,
      String hash,
      int? group_id,
      String? group_name,
      int? department_id,
      String? department_name,
      int institute_id,
      String institute_name});
}

/// @nodoc
class __$$UserDTOImplCopyWithImpl<$Res>
    extends _$UserDTOCopyWithImpl<$Res, _$UserDTOImpl>
    implements _$$UserDTOImplCopyWith<$Res> {
  __$$UserDTOImplCopyWithImpl(
      _$UserDTOImpl _value, $Res Function(_$UserDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? is_admin = null,
    Object? login = null,
    Object? name = null,
    Object? hash = null,
    Object? group_id = freezed,
    Object? group_name = freezed,
    Object? department_id = freezed,
    Object? department_name = freezed,
    Object? institute_id = null,
    Object? institute_name = null,
  }) {
    return _then(_$UserDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      is_admin: null == is_admin
          ? _value.is_admin
          : is_admin // ignore: cast_nullable_to_non_nullable
              as bool,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      group_id: freezed == group_id
          ? _value.group_id
          : group_id // ignore: cast_nullable_to_non_nullable
              as int?,
      group_name: freezed == group_name
          ? _value.group_name
          : group_name // ignore: cast_nullable_to_non_nullable
              as String?,
      department_id: freezed == department_id
          ? _value.department_id
          : department_id // ignore: cast_nullable_to_non_nullable
              as int?,
      department_name: freezed == department_name
          ? _value.department_name
          : department_name // ignore: cast_nullable_to_non_nullable
              as String?,
      institute_id: null == institute_id
          ? _value.institute_id
          : institute_id // ignore: cast_nullable_to_non_nullable
              as int,
      institute_name: null == institute_name
          ? _value.institute_name
          : institute_name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDTOImpl implements _UserDTO {
  const _$UserDTOImpl(
      {required this.id,
      required this.is_admin,
      required this.login,
      required this.name,
      required this.hash,
      required this.group_id,
      required this.group_name,
      required this.department_id,
      required this.department_name,
      required this.institute_id,
      required this.institute_name});

  factory _$UserDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDTOImplFromJson(json);

  @override
  final int id;
  @override
  final bool is_admin;
  @override
  final String login;
  @override
  final String name;
  @override
  final String hash;
  @override
  final int? group_id;
  @override
  final String? group_name;
  @override
  final int? department_id;
  @override
  final String? department_name;
  @override
  final int institute_id;
  @override
  final String institute_name;

  @override
  String toString() {
    return 'UserDTO(id: $id, is_admin: $is_admin, login: $login, name: $name, hash: $hash, group_id: $group_id, group_name: $group_name, department_id: $department_id, department_name: $department_name, institute_id: $institute_id, institute_name: $institute_name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.is_admin, is_admin) ||
                other.is_admin == is_admin) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.group_id, group_id) ||
                other.group_id == group_id) &&
            (identical(other.group_name, group_name) ||
                other.group_name == group_name) &&
            (identical(other.department_id, department_id) ||
                other.department_id == department_id) &&
            (identical(other.department_name, department_name) ||
                other.department_name == department_name) &&
            (identical(other.institute_id, institute_id) ||
                other.institute_id == institute_id) &&
            (identical(other.institute_name, institute_name) ||
                other.institute_name == institute_name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      is_admin,
      login,
      name,
      hash,
      group_id,
      group_name,
      department_id,
      department_name,
      institute_id,
      institute_name);

  /// Create a copy of UserDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDTOImplCopyWith<_$UserDTOImpl> get copyWith =>
      __$$UserDTOImplCopyWithImpl<_$UserDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDTOImplToJson(
      this,
    );
  }
}

abstract class _UserDTO implements UserDTO {
  const factory _UserDTO(
      {required final int id,
      required final bool is_admin,
      required final String login,
      required final String name,
      required final String hash,
      required final int? group_id,
      required final String? group_name,
      required final int? department_id,
      required final String? department_name,
      required final int institute_id,
      required final String institute_name}) = _$UserDTOImpl;

  factory _UserDTO.fromJson(Map<String, dynamic> json) = _$UserDTOImpl.fromJson;

  @override
  int get id;
  @override
  bool get is_admin;
  @override
  String get login;
  @override
  String get name;
  @override
  String get hash;
  @override
  int? get group_id;
  @override
  String? get group_name;
  @override
  int? get department_id;
  @override
  String? get department_name;
  @override
  int get institute_id;
  @override
  String get institute_name;

  /// Create a copy of UserDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDTOImplCopyWith<_$UserDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
