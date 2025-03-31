// data/repository/analytic_repository_impl.dart
import '/utils/result.dart';
import 'package:get_it/get_it.dart';
import '../storage/network_storage.dart';
import '/domain/models/analytic/cluster_domain.dart';
import '/domain/repository/analytic_repository.dart';
import '/domain/models/analytic/statistic_domain.dart';
import '/data/models/statistic_dto/statistic_dto.dart';
import '/domain/models/analytic/top_student_domain.dart';
import '/domain/models/analytic/top_teachers_domain.dart';
import '/data/models/top_student_dto/top_student_dto.dart';
import '/domain/models/analytic/institutes_stat_domain.dart';
import '/data/models/top_teachers_dto/top_teachers_dto.dart';
import '/domain/models/analytic/top_group_absences_domain.dart';
import '/domain/models/analytic/top_group_attendance_domain.dart';
import '/data/models/institutes_stat_dto/institutes_stat_dto.dart';
import '/data/models/cluster_response_dto/cluster_response_dto.dart';
import '/data/models/top_group_absences_dto/top_group_absences_dto.dart';
import '/data/models/top_group_attendance_dto/top_group_attendance_dto.dart';

class AnalyticRepositoryImpl implements AnalyticRepository {
  final networkStorage = GetIt.instance<NetworkStorage>();

  @override
  Future<Result<List<StatisticDomain>>> getUniversityAttendance(String hash,
      String dateStart, String dateEnd) async {
    List<StatisticDomain> list = [];
    late Result<List<StatisticDomain>> resultStat;
    final result = await networkStorage.getUniversityAttendance(hash, dateStart,
        dateEnd);
    result.when(
      success: (stats) {
        for (var stat in stats) {
          list.add(stat.toDomain());
        }
        resultStat = Success(list);
      },
      error: (code) => resultStat = Error(code),
    );
    return resultStat;
  }

  @override
  Future<Result<List<StatisticDomain>>> getGroupAttendance(String hash,
      int groupId, String dateStart, String dateEnd) async {
    List<StatisticDomain> list = [];
    late Result<List<StatisticDomain>> resultStat;
    final result = await networkStorage.getGroupAttendance(hash, groupId,
        dateStart, dateEnd);
    result.when(
      success: (stats) {
        for (var stat in stats) {
          list.add(stat.toDomain());
        }
        resultStat = Success(list);
      },
      error: (code) => resultStat = Error(code),
    );
    return resultStat;
  }

  @override
  Future<Result<List<ClusterDomain>>> getGroupClusters(String hash, int groupId,
      String dateStart, String dateEnd) async {
    late Result<List<ClusterDomain>> resultStat;
    final result = await networkStorage.getGroupClusters(hash, groupId,
        dateStart, dateEnd);
    result.when(
      success: (stats) {
        resultStat = Success(stats.toDomain());
      },
      error: (code) => resultStat = Error(code),
    );
    return resultStat;
  }

  @override
  Future<Result<List<InstitutesStatDomain>>> getInstitutesAnalysis(String hash,
      String dateStart, String dateEnd) async {
    List<InstitutesStatDomain> list = [];
    late Result<List<InstitutesStatDomain>> resultStat;
    final result = await networkStorage.getInstitutesAnalysis(hash, dateStart,
        dateEnd);
    result.when(
      success: (stats) {
        for (var stat in stats) {
          list.add(stat.toDomain());
        }
        resultStat = Success(list);
      },
      error: (code) => resultStat = Error(code),
    );
    return resultStat;
  }

  @override
  Future<Result<List<TopTeachersDomain>>> getTopTeachers(String hash,
      String dateStart, String dateEnd) async {
    List<TopTeachersDomain> list = [];
    late Result<List<TopTeachersDomain>> resultStat;
    final result = await networkStorage.getTopTeachers(hash, dateStart,
        dateEnd);
    result.when(
      success: (stats) {
        for (var stat in stats) {
          list.add(stat.toDomain());
        }
        resultStat = Success(list);
      },
      error: (code) => resultStat = Error(code),
    );
    return resultStat;
  }

  @override
  Future<Result<List<TopStudentDomain>>> getTopStudentsAbsences(String hash,
      String dateStart, String dateEnd) async {
    List<TopStudentDomain> list = [];
    late Result<List<TopStudentDomain>> resultStat;
    final result = await networkStorage.getTopStudentsAbsences(hash, dateStart,
        dateEnd);
    result.when(
      success: (stats) {
        for (var stat in stats) {
          list.add(stat.toDomain());
        }
        resultStat = Success(list);
      },
      error: (code) => resultStat = Error(code),
    );
    return resultStat;
  }

  @override
  Future<Result<List<TopGroupAbsencesDomain>>> getTopGroupAbsences(String hash,
      String dateStart, String dateEnd) async {
    List<TopGroupAbsencesDomain> list = [];
    late Result<List<TopGroupAbsencesDomain>> resultStat;
    final result = await networkStorage.getTopGroupAbsences(hash, dateStart,
        dateEnd);
    result.when(
      success: (stats) {
        for (var stat in stats) {
          list.add(stat.toDomain());
        }
        resultStat = Success(list);
      },
      error: (code) => resultStat = Error(code),
    );
    return resultStat;
  }

  @override
  Future<Result<List<TopGroupAttendanceDomain>>> getTopGroupAttendance(
      String hash, String dateStart, String dateEnd) async {
    List<TopGroupAttendanceDomain> list = [];
    late Result<List<TopGroupAttendanceDomain>> resultStat;
    final result = await networkStorage.getTopGroupAttendance(hash, dateStart,
        dateEnd);
    result.when(
      success: (stats) {
        for (var stat in stats) {
          list.add(stat.toDomain());
        }
        resultStat = Success(list);
      },
      error: (code) => resultStat = Error(code),
    );
    return resultStat;
  }
}