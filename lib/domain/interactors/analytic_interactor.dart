// domain/interactors/analytic_interactor.dart
import '/utils/result.dart';
import '/utils/error_codes.dart';
import 'package:get_it/get_it.dart';
import '/utils/date_formatter.dart';
import '../models/group_domain.dart';
import '/utils/preferences_keys.dart';
import '../states/analytic_state.dart';
import '../models/institute_domain.dart';
import '../repository/app_repository.dart';
import '../models/analytic/cluster_domain.dart';
import '../repository/analytic_repository.dart';
import '../models/analytic/analytic_domain.dart';
import '../models/analytic/statistic_domain.dart';
import '../models/analytic/top_student_domain.dart';
import '../models/analytic/top_teachers_domain.dart';
import '../models/analytic/institutes_stat_domain.dart';
import '../models/analytic/top_group_absences_domain.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/analytic/top_group_attendance_domain.dart';

class AnalyticInteractor {
  final appRepo = GetIt.instance<AppRepository>();
  final analyticState = GetIt.instance<AnalyticState>();
  final analyticRepo = GetIt.instance<AnalyticRepository>();
  var sharedPreferences = GetIt.instance<SharedPreferences>();

  Future<Result<AnalyticDomain>> loadGroupsEx2(InstituteDomain institute) async {
    String? hash = sharedPreferences.getString(PreferencesKeys.USER_HASH);
    if (hash == null) {
      return Error(ErrorCodes.SESSION_IS_CLOSED);
    }
    late Result<AnalyticDomain> result;
    Result<List<GroupDomain>> resultTask = await appRepo
        .getGroups(hash, institute.id);
    resultTask.when(
      success: (data) {
        analyticState.addGroupsEx2(institute, data);
        result = Success(analyticState.returnData());
      },
      error: (code) {
        result = Error(code);
      },
    );
    return result;
  }

  Future<Result<AnalyticDomain>> loadGroupsEx3(InstituteDomain institute) async {
    String? hash = sharedPreferences.getString(PreferencesKeys.USER_HASH);
    if (hash == null) {
      return Error(ErrorCodes.SESSION_IS_CLOSED);
    }
    late Result<AnalyticDomain> result;
    Result<List<GroupDomain>> resultTask = await appRepo
        .getGroups(hash, institute.id);
    resultTask.when(
      success: (data) {
        analyticState.addGroupsEx3(institute, data);
        result = Success(analyticState.returnData());
      },
      error: (code) {
        result = Error(code);
      },
    );
    return result;
  }

  AnalyticDomain getAnalytic() {
    return analyticState.returnData();
  }

  // 1
  Future<Result<AnalyticDomain>> getUniversityAttendance(DateTime dateStart,
      DateTime dateEnd) async {
    String? hash = sharedPreferences.getString(PreferencesKeys.USER_HASH);
    if (hash == null) {
      return Error(ErrorCodes.SESSION_IS_CLOSED);
    }
    late Result<AnalyticDomain> result;
    Result<List<StatisticDomain>> resultTask = await analyticRepo
        .getUniversityAttendance(hash, DateFormatter.formatDateTime(dateStart),
        DateFormatter.formatDateTime(dateEnd));
    resultTask.when(
      success: (data) {
        analyticState.addForEx1(dateStart, dateEnd, data);
        result = Success(analyticState.returnData());
      },
      error: (code) {
        result = Error(code);
      },
    );
    return result;
  }

  // 2
  Future<Result<AnalyticDomain>> getGroupAttendance(GroupDomain group,
      DateTime dateStart, DateTime dateEnd) async {
    String? hash = sharedPreferences.getString(PreferencesKeys.USER_HASH);
    if (hash == null) {
      return Error(ErrorCodes.SESSION_IS_CLOSED);
    }
    late Result<AnalyticDomain> result;
    Result<List<StatisticDomain>> resultTask = await analyticRepo
        .getGroupAttendance(hash, group.id,
        DateFormatter.formatDateTime(dateStart),
        DateFormatter.formatDateTime(dateEnd));
    resultTask.when(
      success: (data) {
        analyticState.addForEx2(dateStart, dateEnd, group, data);
        result = Success(analyticState.returnData());
      },
      error: (code) {
        result = Error(code);
      },
    );
    return result;
  }

  // 3
  Future<Result<AnalyticDomain>> getGroupClusters(GroupDomain group,
      DateTime dateStart, DateTime dateEnd) async {
    String? hash = sharedPreferences.getString(PreferencesKeys.USER_HASH);
    if (hash == null) {
      return Error(ErrorCodes.SESSION_IS_CLOSED);
    }
    late Result<AnalyticDomain> result;
    Result<List<ClusterDomain>> resultTask = await analyticRepo
        .getGroupClusters(hash, group.id,
        DateFormatter.formatDateTime(dateStart),
        DateFormatter.formatDateTime(dateEnd));
    resultTask.when(
      success: (data) {
        analyticState.addForEx3(dateStart, dateEnd, group, data);
        result = Success(analyticState.returnData());
      },
      error: (code) {
        result = Error(code);
      },
    );
    return result;
  }

  // 4
  Future<Result<AnalyticDomain>> getInstitutesAnalysis(DateTime dateStart,
      DateTime dateEnd) async {
    String? hash = sharedPreferences.getString(PreferencesKeys.USER_HASH);
    if (hash == null) {
      return Error(ErrorCodes.SESSION_IS_CLOSED);
    }
    late Result<AnalyticDomain> result;
    Result<List<InstitutesStatDomain>> resultTask = await analyticRepo
        .getInstitutesAnalysis(hash,
        DateFormatter.formatDateTime(dateStart),
        DateFormatter.formatDateTime(dateEnd));
    resultTask.when(
      success: (data) {
        analyticState.addForEx4(dateStart, dateEnd, data);
        result = Success(analyticState.returnData());
      },
      error: (code) {
        result = Error(code);
      },
    );
    return result;
  }

  // 5
  Future<Result<AnalyticDomain>> getTopTeachers(DateTime dateStart,
      DateTime dateEnd) async {
    String? hash = sharedPreferences.getString(PreferencesKeys.USER_HASH);
    if (hash == null) {
      return Error(ErrorCodes.SESSION_IS_CLOSED);
    }
    late Result<AnalyticDomain> result;
    Result<List<TopTeachersDomain>> resultTask = await analyticRepo
        .getTopTeachers(hash,
        DateFormatter.formatDateTime(dateStart),
        DateFormatter.formatDateTime(dateEnd));
    resultTask.when(
      success: (data) {
        analyticState.addForEx5(dateStart, dateEnd, data);
        result = Success(analyticState.returnData());
      },
      error: (code) {
        result = Error(code);
      },
    );
    return result;
  }

  // 6
  Future<Result<AnalyticDomain>> getTopStudentsAbsences(DateTime dateStart,
      DateTime dateEnd) async {
    String? hash = sharedPreferences.getString(PreferencesKeys.USER_HASH);
    if (hash == null) {
      return Error(ErrorCodes.SESSION_IS_CLOSED);
    }
    late Result<AnalyticDomain> result;
    Result<List<TopStudentDomain>> resultTask = await analyticRepo
        .getTopStudentsAbsences(hash,
        DateFormatter.formatDateTime(dateStart),
        DateFormatter.formatDateTime(dateEnd));
    resultTask.when(
      success: (data) {
        analyticState.addForEx6(dateStart, dateEnd, data);
        result = Success(analyticState.returnData());
      },
      error: (code) {
        result = Error(code);
      },
    );
    return result;
  }

  // 7
  Future<Result<AnalyticDomain>> getTopGroupAbsences(DateTime dateStart,
      DateTime dateEnd) async {
    String? hash = sharedPreferences.getString(PreferencesKeys.USER_HASH);
    if (hash == null) {
      return Error(ErrorCodes.SESSION_IS_CLOSED);
    }
    late Result<AnalyticDomain> result;
    Result<List<TopGroupAbsencesDomain>> resultTask = await analyticRepo
        .getTopGroupAbsences(hash,
        DateFormatter.formatDateTime(dateStart),
        DateFormatter.formatDateTime(dateEnd));
    resultTask.when(
      success: (data) {
        analyticState.addForEx7(dateStart, dateEnd, data);
        result = Success(analyticState.returnData());
      },
      error: (code) {
        result = Error(code);
      },
    );
    return result;
  }

  // 8
  Future<Result<AnalyticDomain>> getTopGroupAttendance(DateTime dateStart,
      DateTime dateEnd) async {
    String? hash = sharedPreferences.getString(PreferencesKeys.USER_HASH);
    if (hash == null) {
      return Error(ErrorCodes.SESSION_IS_CLOSED);
    }
    late Result<AnalyticDomain> result;
    Result<List<TopGroupAttendanceDomain>> resultTask = await analyticRepo
        .getTopGroupAttendance(hash,
        DateFormatter.formatDateTime(dateStart),
        DateFormatter.formatDateTime(dateEnd));
    resultTask.when(
      success: (data) {
        analyticState.addForEx8(dateStart, dateEnd, data);
        result = Success(analyticState.returnData());
      },
      error: (code) {
        result = Error(code);
      },
    );
    return result;
  }
}