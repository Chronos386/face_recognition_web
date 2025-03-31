// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'institutes_stat_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InstitutesStatDTO _$InstitutesStatDTOFromJson(Map<String, dynamic> json) {
  return _InstitutesStatDTO.fromJson(json);
}

/// @nodoc
mixin _$InstitutesStatDTO {
  int get institute_id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get attendance_percent => throw _privateConstructorUsedError;

  /// Serializes this InstitutesStatDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InstitutesStatDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InstitutesStatDTOCopyWith<InstitutesStatDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstitutesStatDTOCopyWith<$Res> {
  factory $InstitutesStatDTOCopyWith(
          InstitutesStatDTO value, $Res Function(InstitutesStatDTO) then) =
      _$InstitutesStatDTOCopyWithImpl<$Res, InstitutesStatDTO>;
  @useResult
  $Res call({int institute_id, String name, double attendance_percent});
}

/// @nodoc
class _$InstitutesStatDTOCopyWithImpl<$Res, $Val extends InstitutesStatDTO>
    implements $InstitutesStatDTOCopyWith<$Res> {
  _$InstitutesStatDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InstitutesStatDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? institute_id = null,
    Object? name = null,
    Object? attendance_percent = null,
  }) {
    return _then(_value.copyWith(
      institute_id: null == institute_id
          ? _value.institute_id
          : institute_id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      attendance_percent: null == attendance_percent
          ? _value.attendance_percent
          : attendance_percent // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InstitutesStatDTOImplCopyWith<$Res>
    implements $InstitutesStatDTOCopyWith<$Res> {
  factory _$$InstitutesStatDTOImplCopyWith(_$InstitutesStatDTOImpl value,
          $Res Function(_$InstitutesStatDTOImpl) then) =
      __$$InstitutesStatDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int institute_id, String name, double attendance_percent});
}

/// @nodoc
class __$$InstitutesStatDTOImplCopyWithImpl<$Res>
    extends _$InstitutesStatDTOCopyWithImpl<$Res, _$InstitutesStatDTOImpl>
    implements _$$InstitutesStatDTOImplCopyWith<$Res> {
  __$$InstitutesStatDTOImplCopyWithImpl(_$InstitutesStatDTOImpl _value,
      $Res Function(_$InstitutesStatDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of InstitutesStatDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? institute_id = null,
    Object? name = null,
    Object? attendance_percent = null,
  }) {
    return _then(_$InstitutesStatDTOImpl(
      institute_id: null == institute_id
          ? _value.institute_id
          : institute_id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      attendance_percent: null == attendance_percent
          ? _value.attendance_percent
          : attendance_percent // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InstitutesStatDTOImpl implements _InstitutesStatDTO {
  const _$InstitutesStatDTOImpl(
      {required this.institute_id,
      required this.name,
      required this.attendance_percent});

  factory _$InstitutesStatDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstitutesStatDTOImplFromJson(json);

  @override
  final int institute_id;
  @override
  final String name;
  @override
  final double attendance_percent;

  @override
  String toString() {
    return 'InstitutesStatDTO(institute_id: $institute_id, name: $name, attendance_percent: $attendance_percent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstitutesStatDTOImpl &&
            (identical(other.institute_id, institute_id) ||
                other.institute_id == institute_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.attendance_percent, attendance_percent) ||
                other.attendance_percent == attendance_percent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, institute_id, name, attendance_percent);

  /// Create a copy of InstitutesStatDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InstitutesStatDTOImplCopyWith<_$InstitutesStatDTOImpl> get copyWith =>
      __$$InstitutesStatDTOImplCopyWithImpl<_$InstitutesStatDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InstitutesStatDTOImplToJson(
      this,
    );
  }
}

abstract class _InstitutesStatDTO implements InstitutesStatDTO {
  const factory _InstitutesStatDTO(
      {required final int institute_id,
      required final String name,
      required final double attendance_percent}) = _$InstitutesStatDTOImpl;

  factory _InstitutesStatDTO.fromJson(Map<String, dynamic> json) =
      _$InstitutesStatDTOImpl.fromJson;

  @override
  int get institute_id;
  @override
  String get name;
  @override
  double get attendance_percent;

  /// Create a copy of InstitutesStatDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InstitutesStatDTOImplCopyWith<_$InstitutesStatDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
