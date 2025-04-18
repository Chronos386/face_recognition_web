// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubjectDTO _$SubjectDTOFromJson(Map<String, dynamic> json) {
  return _SubjectDTO.fromJson(json);
}

/// @nodoc
mixin _$SubjectDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this SubjectDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubjectDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubjectDTOCopyWith<SubjectDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectDTOCopyWith<$Res> {
  factory $SubjectDTOCopyWith(
          SubjectDTO value, $Res Function(SubjectDTO) then) =
      _$SubjectDTOCopyWithImpl<$Res, SubjectDTO>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$SubjectDTOCopyWithImpl<$Res, $Val extends SubjectDTO>
    implements $SubjectDTOCopyWith<$Res> {
  _$SubjectDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubjectDTO
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
abstract class _$$SubjectDTOImplCopyWith<$Res>
    implements $SubjectDTOCopyWith<$Res> {
  factory _$$SubjectDTOImplCopyWith(
          _$SubjectDTOImpl value, $Res Function(_$SubjectDTOImpl) then) =
      __$$SubjectDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$SubjectDTOImplCopyWithImpl<$Res>
    extends _$SubjectDTOCopyWithImpl<$Res, _$SubjectDTOImpl>
    implements _$$SubjectDTOImplCopyWith<$Res> {
  __$$SubjectDTOImplCopyWithImpl(
      _$SubjectDTOImpl _value, $Res Function(_$SubjectDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubjectDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$SubjectDTOImpl(
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
class _$SubjectDTOImpl implements _SubjectDTO {
  const _$SubjectDTOImpl({required this.id, required this.name});

  factory _$SubjectDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'SubjectDTO(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of SubjectDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectDTOImplCopyWith<_$SubjectDTOImpl> get copyWith =>
      __$$SubjectDTOImplCopyWithImpl<_$SubjectDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectDTOImplToJson(
      this,
    );
  }
}

abstract class _SubjectDTO implements SubjectDTO {
  const factory _SubjectDTO(
      {required final int id, required final String name}) = _$SubjectDTOImpl;

  factory _SubjectDTO.fromJson(Map<String, dynamic> json) =
      _$SubjectDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of SubjectDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubjectDTOImplCopyWith<_$SubjectDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
