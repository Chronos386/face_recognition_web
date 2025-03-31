// domain/interactors/app_interactor.dart
import '/utils/result.dart';
import '/utils/error_codes.dart';
import 'package:get_it/get_it.dart';
import '/utils/preferences_keys.dart';
import '../states/analytic_state.dart';
import '../models/institute_domain.dart';
import '../repository/app_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppInteractor {
  final appRepo = GetIt.instance<AppRepository>();
  final analyticState = GetIt.instance<AnalyticState>();
  var sharedPreferences = GetIt.instance<SharedPreferences>();

  Future<Result<bool>> loadInstitutes() async {
    String? hash = sharedPreferences.getString(PreferencesKeys.USER_HASH);
    if (hash == null) {
      return Error(ErrorCodes.SESSION_IS_CLOSED);
    }
    late Result<bool> result;
    Result<List<InstituteDomain>> resultTask = await appRepo
        .getInstitutes(hash);
    resultTask.when(
      success: (data) {
        analyticState.addInstitutes(data);
        result = Success(true);
      },
      error: (code) {
        result = Error(code);
      },
    );
    return result;
  }
}