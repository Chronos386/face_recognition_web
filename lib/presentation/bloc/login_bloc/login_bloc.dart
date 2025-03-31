// presentation/bloc/login_bloc/login_bloc.dart
import '/utils/result.dart';
import '/utils/error_codes.dart';
import '../../models/user_model.dart';
import '/domain/models/user_domain.dart';
import '/res/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/domain/interactors/user_interactor.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final userInteractor = UserInteractor();

  LoginBloc() : super(const LoginState.loaded()) {
    on<LoginEventLogin>((event, emit) async {
      emit(const LoginState.loading());
      try {
        Result<UserDomain> result = await userInteractor.loginUser(
          event.login, event.password,
        );
        result.when(
          success: (user) {
            emit(LoginState.successLoaded(user: UserModel.fromDomain(user)));
          },
          error: (code) {
            String error = getErrorByCode(code);
            emit(LoginState.error(error: error));
          },
        );
      } catch (e) {
        emit(LoginState.error(error: e.toString()));
      }
    });

    on<LoginEventToLoaded>((event, emit) async {
      emit(const LoginState.loaded());
    });
  }

  String getErrorByCode(int code) {
    switch (code) {
      case ErrorCodes.NO_INTERNET:
        return LocaleKeys.check_internet_connection.tr();
      case ErrorCodes.SESSION_IS_CLOSED:
        return LocaleKeys.invalid_credentials.tr();
      case ErrorCodes.NOT_FOUND:
        return LocaleKeys.user_not_found.tr();
      default:
        return LocaleKeys.error_load_data.tr();
    }
  }
}