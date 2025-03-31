// domain/repository/user_repository.dart
import '/utils/result.dart';
import '../models/user_domain.dart';

abstract class UserRepository {
  Future<Result<UserDomain>> loginByPassword(String login, String password);
  Future<Result<UserDomain>> getUser(String hash);
  Future<Result<bool>> logout(String hash);
}