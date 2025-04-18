// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_photos_codes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SavedPhotosCodes _$SavedPhotosCodesFromJson(Map<String, dynamic> json) {
  return _SavedPhotosCodes.fromJson(json);
}

/// @nodoc
mixin _$SavedPhotosCodes {
  List<int> get codes => throw _privateConstructorUsedError;

  /// Serializes this SavedPhotosCodes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SavedPhotosCodes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SavedPhotosCodesCopyWith<SavedPhotosCodes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedPhotosCodesCopyWith<$Res> {
  factory $SavedPhotosCodesCopyWith(
          SavedPhotosCodes value, $Res Function(SavedPhotosCodes) then) =
      _$SavedPhotosCodesCopyWithImpl<$Res, SavedPhotosCodes>;
  @useResult
  $Res call({List<int> codes});
}

/// @nodoc
class _$SavedPhotosCodesCopyWithImpl<$Res, $Val extends SavedPhotosCodes>
    implements $SavedPhotosCodesCopyWith<$Res> {
  _$SavedPhotosCodesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SavedPhotosCodes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codes = null,
  }) {
    return _then(_value.copyWith(
      codes: null == codes
          ? _value.codes
          : codes // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavedPhotosCodesImplCopyWith<$Res>
    implements $SavedPhotosCodesCopyWith<$Res> {
  factory _$$SavedPhotosCodesImplCopyWith(_$SavedPhotosCodesImpl value,
          $Res Function(_$SavedPhotosCodesImpl) then) =
      __$$SavedPhotosCodesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> codes});
}

/// @nodoc
class __$$SavedPhotosCodesImplCopyWithImpl<$Res>
    extends _$SavedPhotosCodesCopyWithImpl<$Res, _$SavedPhotosCodesImpl>
    implements _$$SavedPhotosCodesImplCopyWith<$Res> {
  __$$SavedPhotosCodesImplCopyWithImpl(_$SavedPhotosCodesImpl _value,
      $Res Function(_$SavedPhotosCodesImpl) _then)
      : super(_value, _then);

  /// Create a copy of SavedPhotosCodes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codes = null,
  }) {
    return _then(_$SavedPhotosCodesImpl(
      codes: null == codes
          ? _value._codes
          : codes // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SavedPhotosCodesImpl implements _SavedPhotosCodes {
  const _$SavedPhotosCodesImpl({required final List<int> codes})
      : _codes = codes;

  factory _$SavedPhotosCodesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SavedPhotosCodesImplFromJson(json);

  final List<int> _codes;
  @override
  List<int> get codes {
    if (_codes is EqualUnmodifiableListView) return _codes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_codes);
  }

  @override
  String toString() {
    return 'SavedPhotosCodes(codes: $codes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedPhotosCodesImpl &&
            const DeepCollectionEquality().equals(other._codes, _codes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_codes));

  /// Create a copy of SavedPhotosCodes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedPhotosCodesImplCopyWith<_$SavedPhotosCodesImpl> get copyWith =>
      __$$SavedPhotosCodesImplCopyWithImpl<_$SavedPhotosCodesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavedPhotosCodesImplToJson(
      this,
    );
  }
}

abstract class _SavedPhotosCodes implements SavedPhotosCodes {
  const factory _SavedPhotosCodes({required final List<int> codes}) =
      _$SavedPhotosCodesImpl;

  factory _SavedPhotosCodes.fromJson(Map<String, dynamic> json) =
      _$SavedPhotosCodesImpl.fromJson;

  @override
  List<int> get codes;

  /// Create a copy of SavedPhotosCodes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SavedPhotosCodesImplCopyWith<_$SavedPhotosCodesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
