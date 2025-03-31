// presentation/bloc/login_bloc/login_state.dart
part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.loaded() = LoginStateLoaded;
  const factory LoginState.loading() = LoginStateLoading;
  const factory LoginState.error({required String error}) = LoginStateError;
  const factory LoginState.successLoaded({required UserModel user}) = LoginStateSuccessLoaded;
}