// utils/clearer.dart
import 'package:get_it/get_it.dart';
import '../domain/states/user_state.dart';
import '../domain/states/analytic_state.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:face_recognition_web/utils/preferences_keys.dart';

class Clearer {
  final userState = GetIt.instance<UserState>();
  final analyticState = GetIt.instance<AnalyticState>();
  final _sharedPreferences = GetIt.instance<SharedPreferences>();

  void clearApp() {
    userState.clearUser();
    analyticState.clearState();
    _sharedPreferences.remove(PreferencesKeys.USER_HASH);
  }
}