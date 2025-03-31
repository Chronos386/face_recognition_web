// utils/clearer.dart
import 'package:get_it/get_it.dart';
import '../domain/states/user_state.dart';
import '../domain/states/analytic_state.dart';

class Clearer {
  final userState = GetIt.instance<UserState>();
  final analyticState = GetIt.instance<AnalyticState>();

  void clearApp() {
    userState.clearUser();
    analyticState.clearState();
  }
}