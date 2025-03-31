// di/di_coordinator.dart
import '/utils/clearer.dart';
import 'package:get_it/get_it.dart';
import '/domain/states/user_state.dart';
import '/domain/states/analytic_state.dart';
import '/data/storage/network_storage.dart';
import '/domain/repository/app_repository.dart';
import '/domain/repository/user_repository.dart';
import '/data/storage/network_storage_impl.dart';
import '/data/repository/app_repository_impl.dart';
import '/data/repository/user_repository_impl.dart';
import '/domain/repository/analytic_repository.dart';
import '/data/repository/analytic_repository_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

final get = GetIt.instance;

void setupGetIt() {
  get.registerSingletonAsync<SharedPreferences>(
          () => SharedPreferences.getInstance()
  );
  get.registerFactory<AppRepository>(() => AppRepositoryImpl());
  get.registerFactory<NetworkStorage>(() => NetworkStorageImpl());
  get.registerFactory<UserRepository>(() => UserRepositoryImpl());
  get.registerFactory<AnalyticRepository>(() => AnalyticRepositoryImpl());

  get.registerLazySingleton<Clearer>(() => Clearer());
  get.registerLazySingleton<UserState>(() => UserState());
  get.registerLazySingleton<AnalyticState>(() => AnalyticState());
}