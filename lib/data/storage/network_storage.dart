// data/storage/network_storage.dart
import '/utils/result.dart';
import '../models/user_dto/user_dto.dart';
import '../models/group_dto/group_dto.dart';
import '../models/institute_dto/institute_dto.dart';
import '../models/statistic_dto/statistic_dto.dart';
import '../models/top_student_dto/top_student_dto.dart';
import '../models/top_teachers_dto/top_teachers_dto.dart';
import '../models/institutes_stat_dto/institutes_stat_dto.dart';
import '../models/cluster_response_dto/cluster_response_dto.dart';
import '../models/top_group_absences_dto/top_group_absences_dto.dart';
import '../models/top_group_attendance_dto/top_group_attendance_dto.dart';

abstract class NetworkStorage {
  // App API
  Future<Result<List<InstituteDTO>>> getInstitutes(String hash);
  Future<Result<List<GroupDTO>>> getGroupsByInstitute(String hash, int instituteId);
  // User API
  Future<Result<UserDTO>> loginByPassword(String login, String password);
  Future<Result<UserDTO>> loginByHash(String hash);
  Future<Result<bool>> logout(String hash);
  // Analytic API
  Future<Result<List<StatisticDTO>>> getUniversityAttendance(String hash,
      String dateStart, String dateEnd);
  Future<Result<List<StatisticDTO>>> getGroupAttendance(String hash,
      int groupId, String dateStart, String dateEnd);
  Future<Result<ClusterResponseDTO>> getGroupClusters(String hash,
      int groupId, String dateStart, String dateEnd);
  Future<Result<List<InstitutesStatDTO>>> getInstitutesAnalysis(String hash,
      String dateStart, String dateEnd);
  Future<Result<List<TopTeachersDTO>>> getTopTeachers(String hash,
      String dateStart, String dateEnd);
  Future<Result<List<TopStudentDTO>>> getTopStudentsAbsences(String hash,
      String dateStart, String dateEnd);
  Future<Result<List<TopGroupAbsencesDTO>>> getTopGroupAbsences(String hash,
      String dateStart, String dateEnd);
  Future<Result<List<TopGroupAttendanceDTO>>> getTopGroupAttendance(String hash,
      String dateStart, String dateEnd);
}