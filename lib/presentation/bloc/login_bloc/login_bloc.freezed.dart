// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) login,
    required TResult Function() toLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password)? login,
    TResult? Function()? toLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? login,
    TResult Function()? toLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventLogin value) login,
    required TResult Function(LoginEventToLoaded value) toLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEventLogin value)? login,
    TResult? Function(LoginEventToLoaded value)? toLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventLogin value)? login,
    TResult Function(LoginEventToLoaded value)? toLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginEventLoginImplCopyWith<$Res> {
  factory _$$LoginEventLoginImplCopyWith(_$LoginEventLoginImpl value,
          $Res Function(_$LoginEventLoginImpl) then) =
      __$$LoginEventLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String login, String password});
}

/// @nodoc
class __$$LoginEventLoginImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginEventLoginImpl>
    implements _$$LoginEventLoginImplCopyWith<$Res> {
  __$$LoginEventLoginImplCopyWithImpl(
      _$LoginEventLoginImpl _value, $Res Function(_$LoginEventLoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
  }) {
    return _then(_$LoginEventLoginImpl(
      null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginEventLoginImpl implements LoginEventLogin {
  const _$LoginEventLoginImpl(this.login, this.password);

  @override
  final String login;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.login(login: $login, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEventLoginImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login, password);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEventLoginImplCopyWith<_$LoginEventLoginImpl> get copyWith =>
      __$$LoginEventLoginImplCopyWithImpl<_$LoginEventLoginImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) login,
    required TResult Function() toLoaded,
  }) {
    return login(this.login, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password)? login,
    TResult? Function()? toLoaded,
  }) {
    return login?.call(this.login, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? login,
    TResult Function()? toLoaded,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this.login, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventLogin value) login,
    required TResult Function(LoginEventToLoaded value) toLoaded,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEventLogin value)? login,
    TResult? Function(LoginEventToLoaded value)? toLoaded,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventLogin value)? login,
    TResult Function(LoginEventToLoaded value)? toLoaded,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginEventLogin implements LoginEvent {
  const factory LoginEventLogin(final String login, final String password) =
      _$LoginEventLoginImpl;

  String get login;
  String get password;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginEventLoginImplCopyWith<_$LoginEventLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginEventToLoadedImplCopyWith<$Res> {
  factory _$$LoginEventToLoadedImplCopyWith(_$LoginEventToLoadedImpl value,
          $Res Function(_$LoginEventToLoadedImpl) then) =
      __$$LoginEventToLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginEventToLoadedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginEventToLoadedImpl>
    implements _$$LoginEventToLoadedImplCopyWith<$Res> {
  __$$LoginEventToLoadedImplCopyWithImpl(_$LoginEventToLoadedImpl _value,
      $Res Function(_$LoginEventToLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginEventToLoadedImpl implements LoginEventToLoaded {
  const _$LoginEventToLoadedImpl();

  @override
  String toString() {
    return 'LoginEvent.toLoaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginEventToLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) login,
    required TResult Function() toLoaded,
  }) {
    return toLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password)? login,
    TResult? Function()? toLoaded,
  }) {
    return toLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? login,
    TResult Function()? toLoaded,
    required TResult orElse(),
  }) {
    if (toLoaded != null) {
      return toLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventLogin value) login,
    required TResult Function(LoginEventToLoaded value) toLoaded,
  }) {
    return toLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEventLogin value)? login,
    TResult? Function(LoginEventToLoaded value)? toLoaded,
  }) {
    return toLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventLogin value)? login,
    TResult Function(LoginEventToLoaded value)? toLoaded,
    required TResult orElse(),
  }) {
    if (toLoaded != null) {
      return toLoaded(this);
    }
    return orElse();
  }
}

abstract class LoginEventToLoaded implements LoginEvent {
  const factory LoginEventToLoaded() = _$LoginEventToLoadedImpl;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(UserModel user) successLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(UserModel user)? successLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(UserModel user)? successLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateLoaded value) loaded,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateError value) error,
    required TResult Function(LoginStateSuccessLoaded value) successLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateLoaded value)? loaded,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateError value)? error,
    TResult? Function(LoginStateSuccessLoaded value)? successLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateLoaded value)? loaded,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateError value)? error,
    TResult Function(LoginStateSuccessLoaded value)? successLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginStateLoadedImplCopyWith<$Res> {
  factory _$$LoginStateLoadedImplCopyWith(_$LoginStateLoadedImpl value,
          $Res Function(_$LoginStateLoadedImpl) then) =
      __$$LoginStateLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginStateLoadedImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateLoadedImpl>
    implements _$$LoginStateLoadedImplCopyWith<$Res> {
  __$$LoginStateLoadedImplCopyWithImpl(_$LoginStateLoadedImpl _value,
      $Res Function(_$LoginStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginStateLoadedImpl implements LoginStateLoaded {
  const _$LoginStateLoadedImpl();

  @override
  String toString() {
    return 'LoginState.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginStateLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(UserModel user) successLoaded,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(UserModel user)? successLoaded,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(UserModel user)? successLoaded,
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
    required TResult Function(LoginStateLoaded value) loaded,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateError value) error,
    required TResult Function(LoginStateSuccessLoaded value) successLoaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateLoaded value)? loaded,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateError value)? error,
    TResult? Function(LoginStateSuccessLoaded value)? successLoaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateLoaded value)? loaded,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateError value)? error,
    TResult Function(LoginStateSuccessLoaded value)? successLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoginStateLoaded implements LoginState {
  const factory LoginStateLoaded() = _$LoginStateLoadedImpl;
}

/// @nodoc
abstract class _$$LoginStateLoadingImplCopyWith<$Res> {
  factory _$$LoginStateLoadingImplCopyWith(_$LoginStateLoadingImpl value,
          $Res Function(_$LoginStateLoadingImpl) then) =
      __$$LoginStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginStateLoadingImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateLoadingImpl>
    implements _$$LoginStateLoadingImplCopyWith<$Res> {
  __$$LoginStateLoadingImplCopyWithImpl(_$LoginStateLoadingImpl _value,
      $Res Function(_$LoginStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginStateLoadingImpl implements LoginStateLoading {
  const _$LoginStateLoadingImpl();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(UserModel user) successLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(UserModel user)? successLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(UserModel user)? successLoaded,
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
    required TResult Function(LoginStateLoaded value) loaded,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateError value) error,
    required TResult Function(LoginStateSuccessLoaded value) successLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateLoaded value)? loaded,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateError value)? error,
    TResult? Function(LoginStateSuccessLoaded value)? successLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateLoaded value)? loaded,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateError value)? error,
    TResult Function(LoginStateSuccessLoaded value)? successLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoginStateLoading implements LoginState {
  const factory LoginStateLoading() = _$LoginStateLoadingImpl;
}

/// @nodoc
abstract class _$$LoginStateErrorImplCopyWith<$Res> {
  factory _$$LoginStateErrorImplCopyWith(_$LoginStateErrorImpl value,
          $Res Function(_$LoginStateErrorImpl) then) =
      __$$LoginStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$LoginStateErrorImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateErrorImpl>
    implements _$$LoginStateErrorImplCopyWith<$Res> {
  __$$LoginStateErrorImplCopyWithImpl(
      _$LoginStateErrorImpl _value, $Res Function(_$LoginStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LoginStateErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginStateErrorImpl implements LoginStateError {
  const _$LoginStateErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'LoginState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateErrorImplCopyWith<_$LoginStateErrorImpl> get copyWith =>
      __$$LoginStateErrorImplCopyWithImpl<_$LoginStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(UserModel user) successLoaded,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(UserModel user)? successLoaded,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(UserModel user)? successLoaded,
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
    required TResult Function(LoginStateLoaded value) loaded,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateError value) error,
    required TResult Function(LoginStateSuccessLoaded value) successLoaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateLoaded value)? loaded,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateError value)? error,
    TResult? Function(LoginStateSuccessLoaded value)? successLoaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateLoaded value)? loaded,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateError value)? error,
    TResult Function(LoginStateSuccessLoaded value)? successLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginStateError implements LoginState {
  const factory LoginStateError({required final String error}) =
      _$LoginStateErrorImpl;

  String get error;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginStateErrorImplCopyWith<_$LoginStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginStateSuccessLoadedImplCopyWith<$Res> {
  factory _$$LoginStateSuccessLoadedImplCopyWith(
          _$LoginStateSuccessLoadedImpl value,
          $Res Function(_$LoginStateSuccessLoadedImpl) then) =
      __$$LoginStateSuccessLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});
}

/// @nodoc
class __$$LoginStateSuccessLoadedImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateSuccessLoadedImpl>
    implements _$$LoginStateSuccessLoadedImplCopyWith<$Res> {
  __$$LoginStateSuccessLoadedImplCopyWithImpl(
      _$LoginStateSuccessLoadedImpl _value,
      $Res Function(_$LoginStateSuccessLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$LoginStateSuccessLoadedImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$LoginStateSuccessLoadedImpl implements LoginStateSuccessLoaded {
  const _$LoginStateSuccessLoadedImpl({required this.user});

  @override
  final UserModel user;

  @override
  String toString() {
    return 'LoginState.successLoaded(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateSuccessLoadedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateSuccessLoadedImplCopyWith<_$LoginStateSuccessLoadedImpl>
      get copyWith => __$$LoginStateSuccessLoadedImplCopyWithImpl<
          _$LoginStateSuccessLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(UserModel user) successLoaded,
  }) {
    return successLoaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(UserModel user)? successLoaded,
  }) {
    return successLoaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(UserModel user)? successLoaded,
    required TResult orElse(),
  }) {
    if (successLoaded != null) {
      return successLoaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateLoaded value) loaded,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateError value) error,
    required TResult Function(LoginStateSuccessLoaded value) successLoaded,
  }) {
    return successLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateLoaded value)? loaded,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateError value)? error,
    TResult? Function(LoginStateSuccessLoaded value)? successLoaded,
  }) {
    return successLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateLoaded value)? loaded,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateError value)? error,
    TResult Function(LoginStateSuccessLoaded value)? successLoaded,
    required TResult orElse(),
  }) {
    if (successLoaded != null) {
      return successLoaded(this);
    }
    return orElse();
  }
}

abstract class LoginStateSuccessLoaded implements LoginState {
  const factory LoginStateSuccessLoaded({required final UserModel user}) =
      _$LoginStateSuccessLoadedImpl;

  UserModel get user;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginStateSuccessLoadedImplCopyWith<_$LoginStateSuccessLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
