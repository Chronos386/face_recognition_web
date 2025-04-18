// domain/interactors/user_interactor.dart
import '/utils/result.dart';
import '/utils/error_codes.dart';
import '../states/user_state.dart';
import '../models/user_domain.dart';
import 'package:get_it/get_it.dart';
import '/utils/preferences_keys.dart';
import '../repository/user_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserInteractor {
  final userState = GetIt.instance<UserState>();
  final userRepo = GetIt.instance<UserRepository>();
  var sharedPreferences = GetIt.instance<SharedPreferences>();

  Future<Result<UserDomain>> loginUser(String login, String password) async {
    Result<UserDomain> result = await userRepo.loginByPassword(login, password);
    result.when(
      success: (user) {
        if (!user.isAdmin) {
          result = Error(ErrorCodes.UNAUTHORIZED);
        } else {
          userState.setUser(user);
          sharedPreferences.setString(PreferencesKeys.USER_HASH, user.hash);
        }
      },
      error: (code) {},
    );
    return result;
  }

  Future<Result<UserDomain>> getUser() async {
    String? hash = sharedPreferences.getString(PreferencesKeys.USER_HASH);
    if (hash == null) {
      return Error(ErrorCodes.SESSION_IS_CLOSED);
    }
    if (userState.user != null) {
      return Success(userState.user!);
    }
    Result<UserDomain> result = await userRepo.getUser(hash);
    result.when(
      success: (user) {
        userState.setUser(user);
        sharedPreferences.setString(PreferencesKeys.USER_HASH, user.hash);
      },
      error: (code) {},
    );
    return result;
  }

  Future<Result<bool>> logout() async {
    String? hash = sharedPreferences.getString(PreferencesKeys.USER_HASH);
    if (hash == null) {
      return Error(ErrorCodes.SESSION_IS_CLOSED);
    }
    return await userRepo.logout(hash);
  }

  Future<Result<bool>> clearAllHashes() async {
    String? hash = sharedPreferences.getString(PreferencesKeys.USER_HASH);
    if (hash == null) {
      return Error(ErrorCodes.SESSION_IS_CLOSED);
    }
    return await userRepo.clearAllHashes(hash);
  }
}