// presentation/bloc/login_bloc/login_event.dart
part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.login(String login, String password) = LoginEventLogin;
  const factory LoginEvent.toLoaded() = LoginEventToLoaded;
}