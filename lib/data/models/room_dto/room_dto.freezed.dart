// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoomDTO _$RoomDTOFromJson(Map<String, dynamic> json) {
  return _RoomDTO.fromJson(json);
}

/// @nodoc
mixin _$RoomDTO {
  int get id => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  int? get device_id => throw _privateConstructorUsedError;
  int get building_id => throw _privateConstructorUsedError;

  /// Serializes this RoomDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoomDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoomDTOCopyWith<RoomDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomDTOCopyWith<$Res> {
  factory $RoomDTOCopyWith(RoomDTO value, $Res Function(RoomDTO) then) =
      _$RoomDTOCopyWithImpl<$Res, RoomDTO>;
  @useResult
  $Res call({int id, String number, int? device_id, int building_id});
}

/// @nodoc
class _$RoomDTOCopyWithImpl<$Res, $Val extends RoomDTO>
    implements $RoomDTOCopyWith<$Res> {
  _$RoomDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? device_id = freezed,
    Object? building_id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      device_id: freezed == device_id
          ? _value.device_id
          : device_id // ignore: cast_nullable_to_non_nullable
              as int?,
      building_id: null == building_id
          ? _value.building_id
          : building_id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomDTOImplCopyWith<$Res> implements $RoomDTOCopyWith<$Res> {
  factory _$$RoomDTOImplCopyWith(
          _$RoomDTOImpl value, $Res Function(_$RoomDTOImpl) then) =
      __$$RoomDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String number, int? device_id, int building_id});
}

/// @nodoc
class __$$RoomDTOImplCopyWithImpl<$Res>
    extends _$RoomDTOCopyWithImpl<$Res, _$RoomDTOImpl>
    implements _$$RoomDTOImplCopyWith<$Res> {
  __$$RoomDTOImplCopyWithImpl(
      _$RoomDTOImpl _value, $Res Function(_$RoomDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? device_id = freezed,
    Object? building_id = null,
  }) {
    return _then(_$RoomDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      device_id: freezed == device_id
          ? _value.device_id
          : device_id // ignore: cast_nullable_to_non_nullable
              as int?,
      building_id: null == building_id
          ? _value.building_id
          : building_id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomDTOImpl implements _RoomDTO {
  const _$RoomDTOImpl(
      {required this.id,
      required this.number,
      required this.device_id,
      required this.building_id});

  factory _$RoomDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String number;
  @override
  final int? device_id;
  @override
  final int building_id;

  @override
  String toString() {
    return 'RoomDTO(id: $id, number: $number, device_id: $device_id, building_id: $building_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.device_id, device_id) ||
                other.device_id == device_id) &&
            (identical(other.building_id, building_id) ||
                other.building_id == building_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, number, device_id, building_id);

  /// Create a copy of RoomDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomDTOImplCopyWith<_$RoomDTOImpl> get copyWith =>
      __$$RoomDTOImplCopyWithImpl<_$RoomDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomDTOImplToJson(
      this,
    );
  }
}

abstract class _RoomDTO implements RoomDTO {
  const factory _RoomDTO(
      {required final int id,
      required final String number,
      required final int? device_id,
      required final int building_id}) = _$RoomDTOImpl;

  factory _RoomDTO.fromJson(Map<String, dynamic> json) = _$RoomDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get number;
  @override
  int? get device_id;
  @override
  int get building_id;

  /// Create a copy of RoomDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomDTOImplCopyWith<_$RoomDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
