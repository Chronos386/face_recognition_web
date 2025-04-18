// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'building_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BuildingDTO _$BuildingDTOFromJson(Map<String, dynamic> json) {
  return _BuildingDTO.fromJson(json);
}

/// @nodoc
mixin _$BuildingDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  /// Serializes this BuildingDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BuildingDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BuildingDTOCopyWith<BuildingDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildingDTOCopyWith<$Res> {
  factory $BuildingDTOCopyWith(
          BuildingDTO value, $Res Function(BuildingDTO) then) =
      _$BuildingDTOCopyWithImpl<$Res, BuildingDTO>;
  @useResult
  $Res call({int id, String name, String address});
}

/// @nodoc
class _$BuildingDTOCopyWithImpl<$Res, $Val extends BuildingDTO>
    implements $BuildingDTOCopyWith<$Res> {
  _$BuildingDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BuildingDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
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
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BuildingDTOImplCopyWith<$Res>
    implements $BuildingDTOCopyWith<$Res> {
  factory _$$BuildingDTOImplCopyWith(
          _$BuildingDTOImpl value, $Res Function(_$BuildingDTOImpl) then) =
      __$$BuildingDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String address});
}

/// @nodoc
class __$$BuildingDTOImplCopyWithImpl<$Res>
    extends _$BuildingDTOCopyWithImpl<$Res, _$BuildingDTOImpl>
    implements _$$BuildingDTOImplCopyWith<$Res> {
  __$$BuildingDTOImplCopyWithImpl(
      _$BuildingDTOImpl _value, $Res Function(_$BuildingDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of BuildingDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
  }) {
    return _then(_$BuildingDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BuildingDTOImpl implements _BuildingDTO {
  const _$BuildingDTOImpl(
      {required this.id, required this.name, required this.address});

  factory _$BuildingDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$BuildingDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String address;

  @override
  String toString() {
    return 'BuildingDTO(id: $id, name: $name, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuildingDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, address);

  /// Create a copy of BuildingDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BuildingDTOImplCopyWith<_$BuildingDTOImpl> get copyWith =>
      __$$BuildingDTOImplCopyWithImpl<_$BuildingDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BuildingDTOImplToJson(
      this,
    );
  }
}

abstract class _BuildingDTO implements BuildingDTO {
  const factory _BuildingDTO(
      {required final int id,
      required final String name,
      required final String address}) = _$BuildingDTOImpl;

  factory _BuildingDTO.fromJson(Map<String, dynamic> json) =
      _$BuildingDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get address;

  /// Create a copy of BuildingDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BuildingDTOImplCopyWith<_$BuildingDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
