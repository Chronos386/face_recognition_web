// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cluster_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClusterResponseDTO _$ClusterResponseDTOFromJson(Map<String, dynamic> json) {
  return _ClusterResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$ClusterResponseDTO {
  Map<String, List<StudentClusterDTO>> get clusters =>
      throw _privateConstructorUsedError;

  /// Serializes this ClusterResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClusterResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClusterResponseDTOCopyWith<ClusterResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClusterResponseDTOCopyWith<$Res> {
  factory $ClusterResponseDTOCopyWith(
          ClusterResponseDTO value, $Res Function(ClusterResponseDTO) then) =
      _$ClusterResponseDTOCopyWithImpl<$Res, ClusterResponseDTO>;
  @useResult
  $Res call({Map<String, List<StudentClusterDTO>> clusters});
}

/// @nodoc
class _$ClusterResponseDTOCopyWithImpl<$Res, $Val extends ClusterResponseDTO>
    implements $ClusterResponseDTOCopyWith<$Res> {
  _$ClusterResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClusterResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clusters = null,
  }) {
    return _then(_value.copyWith(
      clusters: null == clusters
          ? _value.clusters
          : clusters // ignore: cast_nullable_to_non_nullable
              as Map<String, List<StudentClusterDTO>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClusterResponseDTOImplCopyWith<$Res>
    implements $ClusterResponseDTOCopyWith<$Res> {
  factory _$$ClusterResponseDTOImplCopyWith(_$ClusterResponseDTOImpl value,
          $Res Function(_$ClusterResponseDTOImpl) then) =
      __$$ClusterResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, List<StudentClusterDTO>> clusters});
}

/// @nodoc
class __$$ClusterResponseDTOImplCopyWithImpl<$Res>
    extends _$ClusterResponseDTOCopyWithImpl<$Res, _$ClusterResponseDTOImpl>
    implements _$$ClusterResponseDTOImplCopyWith<$Res> {
  __$$ClusterResponseDTOImplCopyWithImpl(_$ClusterResponseDTOImpl _value,
      $Res Function(_$ClusterResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClusterResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clusters = null,
  }) {
    return _then(_$ClusterResponseDTOImpl(
      clusters: null == clusters
          ? _value._clusters
          : clusters // ignore: cast_nullable_to_non_nullable
              as Map<String, List<StudentClusterDTO>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClusterResponseDTOImpl implements _ClusterResponseDTO {
  const _$ClusterResponseDTOImpl(
      {required final Map<String, List<StudentClusterDTO>> clusters})
      : _clusters = clusters;

  factory _$ClusterResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClusterResponseDTOImplFromJson(json);

  final Map<String, List<StudentClusterDTO>> _clusters;
  @override
  Map<String, List<StudentClusterDTO>> get clusters {
    if (_clusters is EqualUnmodifiableMapView) return _clusters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_clusters);
  }

  @override
  String toString() {
    return 'ClusterResponseDTO(clusters: $clusters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClusterResponseDTOImpl &&
            const DeepCollectionEquality().equals(other._clusters, _clusters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_clusters));

  /// Create a copy of ClusterResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClusterResponseDTOImplCopyWith<_$ClusterResponseDTOImpl> get copyWith =>
      __$$ClusterResponseDTOImplCopyWithImpl<_$ClusterResponseDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClusterResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _ClusterResponseDTO implements ClusterResponseDTO {
  const factory _ClusterResponseDTO(
          {required final Map<String, List<StudentClusterDTO>> clusters}) =
      _$ClusterResponseDTOImpl;

  factory _ClusterResponseDTO.fromJson(Map<String, dynamic> json) =
      _$ClusterResponseDTOImpl.fromJson;

  @override
  Map<String, List<StudentClusterDTO>> get clusters;

  /// Create a copy of ClusterResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClusterResponseDTOImplCopyWith<_$ClusterResponseDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StudentClusterDTO _$StudentClusterDTOFromJson(Map<String, dynamic> json) {
  return _StudentClusterDTO.fromJson(json);
}

/// @nodoc
mixin _$StudentClusterDTO {
  int get student_id => throw _privateConstructorUsedError;
  String get student_name => throw _privateConstructorUsedError;
  double get attendance_percent => throw _privateConstructorUsedError;
  String get cluster => throw _privateConstructorUsedError;

  /// Serializes this StudentClusterDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentClusterDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentClusterDTOCopyWith<StudentClusterDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentClusterDTOCopyWith<$Res> {
  factory $StudentClusterDTOCopyWith(
          StudentClusterDTO value, $Res Function(StudentClusterDTO) then) =
      _$StudentClusterDTOCopyWithImpl<$Res, StudentClusterDTO>;
  @useResult
  $Res call(
      {int student_id,
      String student_name,
      double attendance_percent,
      String cluster});
}

/// @nodoc
class _$StudentClusterDTOCopyWithImpl<$Res, $Val extends StudentClusterDTO>
    implements $StudentClusterDTOCopyWith<$Res> {
  _$StudentClusterDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentClusterDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student_id = null,
    Object? student_name = null,
    Object? attendance_percent = null,
    Object? cluster = null,
  }) {
    return _then(_value.copyWith(
      student_id: null == student_id
          ? _value.student_id
          : student_id // ignore: cast_nullable_to_non_nullable
              as int,
      student_name: null == student_name
          ? _value.student_name
          : student_name // ignore: cast_nullable_to_non_nullable
              as String,
      attendance_percent: null == attendance_percent
          ? _value.attendance_percent
          : attendance_percent // ignore: cast_nullable_to_non_nullable
              as double,
      cluster: null == cluster
          ? _value.cluster
          : cluster // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentClusterDTOImplCopyWith<$Res>
    implements $StudentClusterDTOCopyWith<$Res> {
  factory _$$StudentClusterDTOImplCopyWith(_$StudentClusterDTOImpl value,
          $Res Function(_$StudentClusterDTOImpl) then) =
      __$$StudentClusterDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int student_id,
      String student_name,
      double attendance_percent,
      String cluster});
}

/// @nodoc
class __$$StudentClusterDTOImplCopyWithImpl<$Res>
    extends _$StudentClusterDTOCopyWithImpl<$Res, _$StudentClusterDTOImpl>
    implements _$$StudentClusterDTOImplCopyWith<$Res> {
  __$$StudentClusterDTOImplCopyWithImpl(_$StudentClusterDTOImpl _value,
      $Res Function(_$StudentClusterDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentClusterDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student_id = null,
    Object? student_name = null,
    Object? attendance_percent = null,
    Object? cluster = null,
  }) {
    return _then(_$StudentClusterDTOImpl(
      student_id: null == student_id
          ? _value.student_id
          : student_id // ignore: cast_nullable_to_non_nullable
              as int,
      student_name: null == student_name
          ? _value.student_name
          : student_name // ignore: cast_nullable_to_non_nullable
              as String,
      attendance_percent: null == attendance_percent
          ? _value.attendance_percent
          : attendance_percent // ignore: cast_nullable_to_non_nullable
              as double,
      cluster: null == cluster
          ? _value.cluster
          : cluster // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentClusterDTOImpl implements _StudentClusterDTO {
  const _$StudentClusterDTOImpl(
      {required this.student_id,
      required this.student_name,
      required this.attendance_percent,
      required this.cluster});

  factory _$StudentClusterDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentClusterDTOImplFromJson(json);

  @override
  final int student_id;
  @override
  final String student_name;
  @override
  final double attendance_percent;
  @override
  final String cluster;

  @override
  String toString() {
    return 'StudentClusterDTO(student_id: $student_id, student_name: $student_name, attendance_percent: $attendance_percent, cluster: $cluster)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentClusterDTOImpl &&
            (identical(other.student_id, student_id) ||
                other.student_id == student_id) &&
            (identical(other.student_name, student_name) ||
                other.student_name == student_name) &&
            (identical(other.attendance_percent, attendance_percent) ||
                other.attendance_percent == attendance_percent) &&
            (identical(other.cluster, cluster) || other.cluster == cluster));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, student_id, student_name, attendance_percent, cluster);

  /// Create a copy of StudentClusterDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentClusterDTOImplCopyWith<_$StudentClusterDTOImpl> get copyWith =>
      __$$StudentClusterDTOImplCopyWithImpl<_$StudentClusterDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentClusterDTOImplToJson(
      this,
    );
  }
}

abstract class _StudentClusterDTO implements StudentClusterDTO {
  const factory _StudentClusterDTO(
      {required final int student_id,
      required final String student_name,
      required final double attendance_percent,
      required final String cluster}) = _$StudentClusterDTOImpl;

  factory _StudentClusterDTO.fromJson(Map<String, dynamic> json) =
      _$StudentClusterDTOImpl.fromJson;

  @override
  int get student_id;
  @override
  String get student_name;
  @override
  double get attendance_percent;
  @override
  String get cluster;

  /// Create a copy of StudentClusterDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentClusterDTOImplCopyWith<_$StudentClusterDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
