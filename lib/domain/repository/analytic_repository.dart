// domain/repository/analytic_repository.dart
import '/utils/result.dart';
import '../models/analytic/cluster_domain.dart';
import '../models/analytic/statistic_domain.dart';
import '../models/analytic/top_student_domain.dart';
import '../models/analytic/top_teachers_domain.dart';
import '../models/analytic/institutes_stat_domain.dart';
import '../models/analytic/top_group_absences_domain.dart';
import '../models/analytic/top_group_attendance_domain.dart';

abstract class AnalyticRepository {
  Future<Result<List<StatisticDomain>>> getUniversityAttendance(String hash,
      String dateStart, String dateEnd);
  Future<Result<List<StatisticDomain>>> getGroupAttendance(String hash,
      int groupId, String dateStart, String dateEnd);
  Future<Result<List<ClusterDomain>>> getGroupClusters(String hash,
      int groupId, String dateStart, String dateEnd);
  Future<Result<List<InstitutesStatDomain>>> getInstitutesAnalysis(String hash,
      String dateStart, String dateEnd);
  Future<Result<List<TopTeachersDomain>>> getTopTeachers(String hash,
      String dateStart, String dateEnd);
  Future<Result<List<TopStudentDomain>>> getTopStudentsAbsences(String hash,
      String dateStart, String dateEnd);
  Future<Result<List<TopGroupAbsencesDomain>>> getTopGroupAbsences(String hash,
      String dateStart, String dateEnd);
  Future<Result<List<TopGroupAttendanceDomain>>> getTopGroupAttendance(String hash,
      String dateStart, String dateEnd);
}