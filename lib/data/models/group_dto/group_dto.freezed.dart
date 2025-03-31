// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GroupDTO _$GroupDTOFromJson(Map<String, dynamic> json) {
  return _GroupDTO.fromJson(json);
}

/// @nodoc
mixin _$GroupDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get institute_id => throw _privateConstructorUsedError;

  /// Serializes this GroupDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupDTOCopyWith<GroupDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupDTOCopyWith<$Res> {
  factory $GroupDTOCopyWith(GroupDTO value, $Res Function(GroupDTO) then) =
      _$GroupDTOCopyWithImpl<$Res, GroupDTO>;
  @useResult
  $Res call({int id, String name, int institute_id});
}

/// @nodoc
class _$GroupDTOCopyWithImpl<$Res, $Val extends GroupDTO>
    implements $GroupDTOCopyWith<$Res> {
  _$GroupDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? institute_id = null,
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
      institute_id: null == institute_id
          ? _value.institute_id
          : institute_id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupDTOImplCopyWith<$Res>
    implements $GroupDTOCopyWith<$Res> {
  factory _$$GroupDTOImplCopyWith(
          _$GroupDTOImpl value, $Res Function(_$GroupDTOImpl) then) =
      __$$GroupDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int institute_id});
}

/// @nodoc
class __$$GroupDTOImplCopyWithImpl<$Res>
    extends _$GroupDTOCopyWithImpl<$Res, _$GroupDTOImpl>
    implements _$$GroupDTOImplCopyWith<$Res> {
  __$$GroupDTOImplCopyWithImpl(
      _$GroupDTOImpl _value, $Res Function(_$GroupDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? institute_id = null,
  }) {
    return _then(_$GroupDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      institute_id: null == institute_id
          ? _value.institute_id
          : institute_id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupDTOImpl implements _GroupDTO {
  const _$GroupDTOImpl(
      {required this.id, required this.name, required this.institute_id});

  factory _$GroupDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int institute_id;

  @override
  String toString() {
    return 'GroupDTO(id: $id, name: $name, institute_id: $institute_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.institute_id, institute_id) ||
                other.institute_id == institute_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, institute_id);

  /// Create a copy of GroupDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupDTOImplCopyWith<_$GroupDTOImpl> get copyWith =>
      __$$GroupDTOImplCopyWithImpl<_$GroupDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupDTOImplToJson(
      this,
    );
  }
}

abstract class _GroupDTO implements GroupDTO {
  const factory _GroupDTO(
      {required final int id,
      required final String name,
      required final int institute_id}) = _$GroupDTOImpl;

  factory _GroupDTO.fromJson(Map<String, dynamic> json) =
      _$GroupDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get institute_id;

  /// Create a copy of GroupDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupDTOImplCopyWith<_$GroupDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
