// domain/states/user_state.dart
import '../models/user_domain.dart';

class UserState {
  UserDomain? _user;
  UserDomain? get user => _user;

  void setUser(UserDomain newUser) {
    _user = newUser;
  }

  void clearUser() {
    _user = null;
  }
}