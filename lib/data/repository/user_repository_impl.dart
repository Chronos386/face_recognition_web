// data/repository/user_repository_impl.dart
import '/utils/result.dart';
import 'package:get_it/get_it.dart';
import '../storage/network_storage.dart';
import '/domain/models/user_domain.dart';
import '../models/user_dto/user_dto.dart';
import '/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final networkStorage = GetIt.instance<NetworkStorage>();

  @override
  Future<Result<UserDomain>> loginByPassword(String login, String password) async {
    late Result<UserDomain> resultUser;
    final result = await networkStorage.loginByPassword(login, password);
    result.when(
      success: (user) => resultUser = Success(user.toDomain()),
      error: (code) => resultUser = Error(code),
    );
    return resultUser;
  }

  @override
  Future<Result<UserDomain>> getUser(String hash) async {
    late Result<UserDomain> resultUser;
    final result = await networkStorage.loginByHash(hash);
    result.when(
      success: (user) => resultUser = Success(user.toDomain()),
      error: (code) => resultUser = Error(code),
    );
    return resultUser;
  }

  @override
  Future<Result<bool>> logout(String hash) async {
    return await networkStorage.logout(hash);
  }

  @override
  Future<Result<bool>> clearAllHashes(String hash) async {
    return await networkStorage.clearAllHashes(hash);
  }
}