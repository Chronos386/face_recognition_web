// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistic_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StatisticDTO _$StatisticDTOFromJson(Map<String, dynamic> json) {
  return _StatisticDTO.fromJson(json);
}

/// @nodoc
mixin _$StatisticDTO {
  String get date => throw _privateConstructorUsedError;
  double get attendance_per => throw _privateConstructorUsedError;
  String get attendance => throw _privateConstructorUsedError;

  /// Serializes this StatisticDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatisticDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatisticDTOCopyWith<StatisticDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticDTOCopyWith<$Res> {
  factory $StatisticDTOCopyWith(
          StatisticDTO value, $Res Function(StatisticDTO) then) =
      _$StatisticDTOCopyWithImpl<$Res, StatisticDTO>;
  @useResult
  $Res call({String date, double attendance_per, String attendance});
}

/// @nodoc
class _$StatisticDTOCopyWithImpl<$Res, $Val extends StatisticDTO>
    implements $StatisticDTOCopyWith<$Res> {
  _$StatisticDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatisticDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? attendance_per = null,
    Object? attendance = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      attendance_per: null == attendance_per
          ? _value.attendance_per
          : attendance_per // ignore: cast_nullable_to_non_nullable
              as double,
      attendance: null == attendance
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatisticDTOImplCopyWith<$Res>
    implements $StatisticDTOCopyWith<$Res> {
  factory _$$StatisticDTOImplCopyWith(
          _$StatisticDTOImpl value, $Res Function(_$StatisticDTOImpl) then) =
      __$$StatisticDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, double attendance_per, String attendance});
}

/// @nodoc
class __$$StatisticDTOImplCopyWithImpl<$Res>
    extends _$StatisticDTOCopyWithImpl<$Res, _$StatisticDTOImpl>
    implements _$$StatisticDTOImplCopyWith<$Res> {
  __$$StatisticDTOImplCopyWithImpl(
      _$StatisticDTOImpl _value, $Res Function(_$StatisticDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatisticDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? attendance_per = null,
    Object? attendance = null,
  }) {
    return _then(_$StatisticDTOImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      attendance_per: null == attendance_per
          ? _value.attendance_per
          : attendance_per // ignore: cast_nullable_to_non_nullable
              as double,
      attendance: null == attendance
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticDTOImpl implements _StatisticDTO {
  const _$StatisticDTOImpl(
      {required this.date,
      required this.attendance_per,
      required this.attendance});

  factory _$StatisticDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatisticDTOImplFromJson(json);

  @override
  final String date;
  @override
  final double attendance_per;
  @override
  final String attendance;

  @override
  String toString() {
    return 'StatisticDTO(date: $date, attendance_per: $attendance_per, attendance: $attendance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticDTOImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.attendance_per, attendance_per) ||
                other.attendance_per == attendance_per) &&
            (identical(other.attendance, attendance) ||
                other.attendance == attendance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, attendance_per, attendance);

  /// Create a copy of StatisticDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticDTOImplCopyWith<_$StatisticDTOImpl> get copyWith =>
      __$$StatisticDTOImplCopyWithImpl<_$StatisticDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticDTOImplToJson(
      this,
    );
  }
}

abstract class _StatisticDTO implements StatisticDTO {
  const factory _StatisticDTO(
      {required final String date,
      required final double attendance_per,
      required final String attendance}) = _$StatisticDTOImpl;

  factory _StatisticDTO.fromJson(Map<String, dynamic> json) =
      _$StatisticDTOImpl.fromJson;

  @override
  String get date;
  @override
  double get attendance_per;
  @override
  String get attendance;

  /// Create a copy of StatisticDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatisticDTOImplCopyWith<_$StatisticDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
