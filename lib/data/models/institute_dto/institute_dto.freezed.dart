// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'institute_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InstituteDTO _$InstituteDTOFromJson(Map<String, dynamic> json) {
  return _InstituteDTO.fromJson(json);
}

/// @nodoc
mixin _$InstituteDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this InstituteDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InstituteDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InstituteDTOCopyWith<InstituteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstituteDTOCopyWith<$Res> {
  factory $InstituteDTOCopyWith(
          InstituteDTO value, $Res Function(InstituteDTO) then) =
      _$InstituteDTOCopyWithImpl<$Res, InstituteDTO>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$InstituteDTOCopyWithImpl<$Res, $Val extends InstituteDTO>
    implements $InstituteDTOCopyWith<$Res> {
  _$InstituteDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InstituteDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InstituteDTOImplCopyWith<$Res>
    implements $InstituteDTOCopyWith<$Res> {
  factory _$$InstituteDTOImplCopyWith(
          _$InstituteDTOImpl value, $Res Function(_$InstituteDTOImpl) then) =
      __$$InstituteDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$InstituteDTOImplCopyWithImpl<$Res>
    extends _$InstituteDTOCopyWithImpl<$Res, _$InstituteDTOImpl>
    implements _$$InstituteDTOImplCopyWith<$Res> {
  __$$InstituteDTOImplCopyWithImpl(
      _$InstituteDTOImpl _value, $Res Function(_$InstituteDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of InstituteDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$InstituteDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InstituteDTOImpl implements _InstituteDTO {
  const _$InstituteDTOImpl({required this.id, required this.name});

  factory _$InstituteDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstituteDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'InstituteDTO(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstituteDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of InstituteDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InstituteDTOImplCopyWith<_$InstituteDTOImpl> get copyWith =>
      __$$InstituteDTOImplCopyWithImpl<_$InstituteDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InstituteDTOImplToJson(
      this,
    );
  }
}

abstract class _InstituteDTO implements InstituteDTO {
  const factory _InstituteDTO(
      {required final int id, required final String name}) = _$InstituteDTOImpl;

  factory _InstituteDTO.fromJson(Map<String, dynamic> json) =
      _$InstituteDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of InstituteDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InstituteDTOImplCopyWith<_$InstituteDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
