// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainEventLoadData value) loadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainEventLoadData value)? loadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainEventLoadData value)? loadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MainEventLoadDataImplCopyWith<$Res> {
  factory _$$MainEventLoadDataImplCopyWith(_$MainEventLoadDataImpl value,
          $Res Function(_$MainEventLoadDataImpl) then) =
      __$$MainEventLoadDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainEventLoadDataImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$MainEventLoadDataImpl>
    implements _$$MainEventLoadDataImplCopyWith<$Res> {
  __$$MainEventLoadDataImplCopyWithImpl(_$MainEventLoadDataImpl _value,
      $Res Function(_$MainEventLoadDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MainEventLoadDataImpl implements MainEventLoadData {
  const _$MainEventLoadDataImpl();

  @override
  String toString() {
    return 'MainEvent.loadData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainEventLoadDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
  }) {
    return loadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadData,
  }) {
    return loadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainEventLoadData value) loadData,
  }) {
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainEventLoadData value)? loadData,
  }) {
    return loadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainEventLoadData value)? loadData,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class MainEventLoadData implements MainEvent {
  const factory MainEventLoadData() = _$MainEventLoadDataImpl;
}

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainStateLoaded value) loaded,
    required TResult Function(MainStateLoading value) loading,
    required TResult Function(MainStateError value) error,
    required TResult Function(MainStateEndedSession value) endedSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainStateLoaded value)? loaded,
    TResult? Function(MainStateLoading value)? loading,
    TResult? Function(MainStateError value)? error,
    TResult? Function(MainStateEndedSession value)? endedSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainStateLoaded value)? loaded,
    TResult Function(MainStateLoading value)? loading,
    TResult Function(MainStateError value)? error,
    TResult Function(MainStateEndedSession value)? endedSession,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MainStateLoadedImplCopyWith<$Res> {
  factory _$$MainStateLoadedImplCopyWith(_$MainStateLoadedImpl value,
          $Res Function(_$MainStateLoadedImpl) then) =
      __$$MainStateLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainStateLoadedImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainStateLoadedImpl>
    implements _$$MainStateLoadedImplCopyWith<$Res> {
  __$$MainStateLoadedImplCopyWithImpl(
      _$MainStateLoadedImpl _value, $Res Function(_$MainStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MainStateLoadedImpl implements MainStateLoaded {
  const _$MainStateLoadedImpl();

  @override
  String toString() {
    return 'MainState.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainStateLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainStateLoaded value) loaded,
    required TResult Function(MainStateLoading value) loading,
    required TResult Function(MainStateError value) error,
    required TResult Function(MainStateEndedSession value) endedSession,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainStateLoaded value)? loaded,
    TResult? Function(MainStateLoading value)? loading,
    TResult? Function(MainStateError value)? error,
    TResult? Function(MainStateEndedSession value)? endedSession,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainStateLoaded value)? loaded,
    TResult Function(MainStateLoading value)? loading,
    TResult Function(MainStateError value)? error,
    TResult Function(MainStateEndedSession value)? endedSession,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MainStateLoaded implements MainState {
  const factory MainStateLoaded() = _$MainStateLoadedImpl;
}

/// @nodoc
abstract class _$$MainStateLoadingImplCopyWith<$Res> {
  factory _$$MainStateLoadingImplCopyWith(_$MainStateLoadingImpl value,
          $Res Function(_$MainStateLoadingImpl) then) =
      __$$MainStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainStateLoadingImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainStateLoadingImpl>
    implements _$$MainStateLoadingImplCopyWith<$Res> {
  __$$MainStateLoadingImplCopyWithImpl(_$MainStateLoadingImpl _value,
      $Res Function(_$MainStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MainStateLoadingImpl implements MainStateLoading {
  const _$MainStateLoadingImpl();

  @override
  String toString() {
    return 'MainState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainStateLoaded value) loaded,
    required TResult Function(MainStateLoading value) loading,
    required TResult Function(MainStateError value) error,
    required TResult Function(MainStateEndedSession value) endedSession,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainStateLoaded value)? loaded,
    TResult? Function(MainStateLoading value)? loading,
    TResult? Function(MainStateError value)? error,
    TResult? Function(MainStateEndedSession value)? endedSession,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainStateLoaded value)? loaded,
    TResult Function(MainStateLoading value)? loading,
    TResult Function(MainStateError value)? error,
    TResult Function(MainStateEndedSession value)? endedSession,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MainStateLoading implements MainState {
  const factory MainStateLoading() = _$MainStateLoadingImpl;
}

/// @nodoc
abstract class _$$MainStateErrorImplCopyWith<$Res> {
  factory _$$MainStateErrorImplCopyWith(_$MainStateErrorImpl value,
          $Res Function(_$MainStateErrorImpl) then) =
      __$$MainStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$MainStateErrorImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainStateErrorImpl>
    implements _$$MainStateErrorImplCopyWith<$Res> {
  __$$MainStateErrorImplCopyWithImpl(
      _$MainStateErrorImpl _value, $Res Function(_$MainStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$MainStateErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MainStateErrorImpl implements MainStateError {
  const _$MainStateErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'MainState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainStateErrorImplCopyWith<_$MainStateErrorImpl> get copyWith =>
      __$$MainStateErrorImplCopyWithImpl<_$MainStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainStateLoaded value) loaded,
    required TResult Function(MainStateLoading value) loading,
    required TResult Function(MainStateError value) error,
    required TResult Function(MainStateEndedSession value) endedSession,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainStateLoaded value)? loaded,
    TResult? Function(MainStateLoading value)? loading,
    TResult? Function(MainStateError value)? error,
    TResult? Function(MainStateEndedSession value)? endedSession,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainStateLoaded value)? loaded,
    TResult Function(MainStateLoading value)? loading,
    TResult Function(MainStateError value)? error,
    TResult Function(MainStateEndedSession value)? endedSession,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MainStateError implements MainState {
  const factory MainStateError({required final String error}) =
      _$MainStateErrorImpl;

  String get error;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainStateErrorImplCopyWith<_$MainStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MainStateEndedSessionImplCopyWith<$Res> {
  factory _$$MainStateEndedSessionImplCopyWith(
          _$MainStateEndedSessionImpl value,
          $Res Function(_$MainStateEndedSessionImpl) then) =
      __$$MainStateEndedSessionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainStateEndedSessionImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainStateEndedSessionImpl>
    implements _$$MainStateEndedSessionImplCopyWith<$Res> {
  __$$MainStateEndedSessionImplCopyWithImpl(_$MainStateEndedSessionImpl _value,
      $Res Function(_$MainStateEndedSessionImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MainStateEndedSessionImpl implements MainStateEndedSession {
  const _$MainStateEndedSessionImpl();

  @override
  String toString() {
    return 'MainState.endedSession()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainStateEndedSessionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
  }) {
    return endedSession();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
  }) {
    return endedSession?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    required TResult orElse(),
  }) {
    if (endedSession != null) {
      return endedSession();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainStateLoaded value) loaded,
    required TResult Function(MainStateLoading value) loading,
    required TResult Function(MainStateError value) error,
    required TResult Function(MainStateEndedSession value) endedSession,
  }) {
    return endedSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainStateLoaded value)? loaded,
    TResult? Function(MainStateLoading value)? loading,
    TResult? Function(MainStateError value)? error,
    TResult? Function(MainStateEndedSession value)? endedSession,
  }) {
    return endedSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainStateLoaded value)? loaded,
    TResult Function(MainStateLoading value)? loading,
    TResult Function(MainStateError value)? error,
    TResult Function(MainStateEndedSession value)? endedSession,
    required TResult orElse(),
  }) {
    if (endedSession != null) {
      return endedSession(this);
    }
    return orElse();
  }
}

abstract class MainStateEndedSession implements MainState {
  const factory MainStateEndedSession() = _$MainStateEndedSessionImpl;
}
