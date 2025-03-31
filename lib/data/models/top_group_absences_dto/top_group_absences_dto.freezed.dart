// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_group_absences_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopGroupAbsencesDTO _$TopGroupAbsencesDTOFromJson(Map<String, dynamic> json) {
  return _TopGroupAbsencesDTO.fromJson(json);
}

/// @nodoc
mixin _$TopGroupAbsencesDTO {
  int get group_id => throw _privateConstructorUsedError;
  String get group_name => throw _privateConstructorUsedError;
  int get absences_count => throw _privateConstructorUsedError;

  /// Serializes this TopGroupAbsencesDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopGroupAbsencesDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopGroupAbsencesDTOCopyWith<TopGroupAbsencesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopGroupAbsencesDTOCopyWith<$Res> {
  factory $TopGroupAbsencesDTOCopyWith(
          TopGroupAbsencesDTO value, $Res Function(TopGroupAbsencesDTO) then) =
      _$TopGroupAbsencesDTOCopyWithImpl<$Res, TopGroupAbsencesDTO>;
  @useResult
  $Res call({int group_id, String group_name, int absences_count});
}

/// @nodoc
class _$TopGroupAbsencesDTOCopyWithImpl<$Res, $Val extends TopGroupAbsencesDTO>
    implements $TopGroupAbsencesDTOCopyWith<$Res> {
  _$TopGroupAbsencesDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopGroupAbsencesDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group_id = null,
    Object? group_name = null,
    Object? absences_count = null,
  }) {
    return _then(_value.copyWith(
      group_id: null == group_id
          ? _value.group_id
          : group_id // ignore: cast_nullable_to_non_nullable
              as int,
      group_name: null == group_name
          ? _value.group_name
          : group_name // ignore: cast_nullable_to_non_nullable
              as String,
      absences_count: null == absences_count
          ? _value.absences_count
          : absences_count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopGroupAbsencesDTOImplCopyWith<$Res>
    implements $TopGroupAbsencesDTOCopyWith<$Res> {
  factory _$$TopGroupAbsencesDTOImplCopyWith(_$TopGroupAbsencesDTOImpl value,
          $Res Function(_$TopGroupAbsencesDTOImpl) then) =
      __$$TopGroupAbsencesDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int group_id, String group_name, int absences_count});
}

/// @nodoc
class __$$TopGroupAbsencesDTOImplCopyWithImpl<$Res>
    extends _$TopGroupAbsencesDTOCopyWithImpl<$Res, _$TopGroupAbsencesDTOImpl>
    implements _$$TopGroupAbsencesDTOImplCopyWith<$Res> {
  __$$TopGroupAbsencesDTOImplCopyWithImpl(_$TopGroupAbsencesDTOImpl _value,
      $Res Function(_$TopGroupAbsencesDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopGroupAbsencesDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group_id = null,
    Object? group_name = null,
    Object? absences_count = null,
  }) {
    return _then(_$TopGroupAbsencesDTOImpl(
      group_id: null == group_id
          ? _value.group_id
          : group_id // ignore: cast_nullable_to_non_nullable
              as int,
      group_name: null == group_name
          ? _value.group_name
          : group_name // ignore: cast_nullable_to_non_nullable
              as String,
      absences_count: null == absences_count
          ? _value.absences_count
          : absences_count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopGroupAbsencesDTOImpl implements _TopGroupAbsencesDTO {
  const _$TopGroupAbsencesDTOImpl(
      {required this.group_id,
      required this.group_name,
      required this.absences_count});

  factory _$TopGroupAbsencesDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopGroupAbsencesDTOImplFromJson(json);

  @override
  final int group_id;
  @override
  final String group_name;
  @override
  final int absences_count;

  @override
  String toString() {
    return 'TopGroupAbsencesDTO(group_id: $group_id, group_name: $group_name, absences_count: $absences_count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopGroupAbsencesDTOImpl &&
            (identical(other.group_id, group_id) ||
                other.group_id == group_id) &&
            (identical(other.group_name, group_name) ||
                other.group_name == group_name) &&
            (identical(other.absences_count, absences_count) ||
                other.absences_count == absences_count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, group_id, group_name, absences_count);

  /// Create a copy of TopGroupAbsencesDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopGroupAbsencesDTOImplCopyWith<_$TopGroupAbsencesDTOImpl> get copyWith =>
      __$$TopGroupAbsencesDTOImplCopyWithImpl<_$TopGroupAbsencesDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopGroupAbsencesDTOImplToJson(
      this,
    );
  }
}

abstract class _TopGroupAbsencesDTO implements TopGroupAbsencesDTO {
  const factory _TopGroupAbsencesDTO(
      {required final int group_id,
      required final String group_name,
      required final int absences_count}) = _$TopGroupAbsencesDTOImpl;

  factory _TopGroupAbsencesDTO.fromJson(Map<String, dynamic> json) =
      _$TopGroupAbsencesDTOImpl.fromJson;

  @override
  int get group_id;
  @override
  String get group_name;
  @override
  int get absences_count;

  /// Create a copy of TopGroupAbsencesDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopGroupAbsencesDTOImplCopyWith<_$TopGroupAbsencesDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
