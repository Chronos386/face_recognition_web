// data/storage/network_storage.dart
import '/utils/result.dart';
import '../models/user_dto/user_dto.dart';
import '../models/room_dto/room_dto.dart';
import '../models/group_dto/group_dto.dart';
import 'package:file_picker/file_picker.dart';
import '../models/subject_dto/subject_dto.dart';
import '../models/student_dto/student_dto.dart';
import '../models/teacher_dto/teacher_dto.dart';
import '../models/schedule_dto/schedule_dto.dart';
import '../models/building_dto/building_dto.dart';
import '../models/institute_dto/institute_dto.dart';
import '../models/statistic_dto/statistic_dto.dart';
import '../models/department_dto/department_dto.dart';
import '../models/attendance_dto/attendance_dto.dart';
import '../models/top_student_dto/top_student_dto.dart';
import '../models/top_teachers_dto/top_teachers_dto.dart';
import '../models/institutes_stat_dto/institutes_stat_dto.dart';
import '../models/cluster_response_dto/cluster_response_dto.dart';
import '../models/top_group_absences_dto/top_group_absences_dto.dart';
import '../models/top_group_attendance_dto/top_group_attendance_dto.dart';

abstract class NetworkStorage {
  // User API
  Future<Result<UserDTO>> loginByPassword(String login, String password);
  Future<Result<UserDTO>> loginByHash(String hash);
  Future<Result<bool>> logout(String hash);
  Future<Result<bool>> clearAllHashes(String hash);
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

  // Admin API
  // Institutes
  Future<Result<List<InstituteDTO>>> getInstitutes(String hash);
  Future<Result<InstituteDTO>> createInstitute(String hash, String name);
  Future<Result<InstituteDTO>> updateInstitute(String hash, int id,
      String name);
  Future<Result<bool>> deleteInstitute(String hash, int id);
  // Buildings
  Future<Result<List<BuildingDTO>>> getBuildings(String hash);
  Future<Result<BuildingDTO>> createBuilding(String hash, String name,
      String address);
  Future<Result<BuildingDTO>> updateBuilding(String hash, int id,
      String name, String address);
  Future<Result<bool>> deleteBuilding(String hash, int id);
  // Subject
  Future<Result<List<SubjectDTO>>> getSubjects(String hash);
  Future<Result<SubjectDTO>> createSubject(String hash, String name);
  Future<Result<SubjectDTO>> updateSubject(String hash, int id,
      String name);
  Future<Result<bool>> deleteSubject(String hash, int id);
  // Room
  Future<Result<List<RoomDTO>>> getRooms(String hash, int buildingId);
  Future<Result<RoomDTO>> createRoom(String hash, int buildingId,
      String number);
  Future<Result<RoomDTO>> updateRoom(String hash, int id, int buildingId,
      String number);
  Future<Result<bool>> deleteRoom(String hash, int id);
  // Device
  Future<Result<RoomDTO>> createDevice(String hash, int id);
  Future<Result<bool>> deleteDevice(String hash, int id);
  // Department
  Future<Result<List<DepartmentDTO>>> getDepartments(String hash,
      int instituteId);
  Future<Result<DepartmentDTO>> createDepartment(String hash, int instituteId,
      String name);
  Future<Result<DepartmentDTO>> updateDepartment(String hash, int id,
      int instituteId, String name);
  Future<Result<bool>> deleteDepartment(String hash, int id);
  // Group
  Future<Result<List<GroupDTO>>> getGroups(String hash, int instituteId);
  Future<Result<GroupDTO>> createGroup(String hash, int instituteId,
      String name);
  Future<Result<GroupDTO>> updateGroup(String hash, int id, int instituteId,
      String name);
  Future<Result<bool>> deleteGroup(String hash, int id);
  // Teacher
  Future<Result<List<TeacherDTO>>> getTeachers(String hash, int departmentId);
  Future<Result<TeacherDTO>> createTeacher(String hash, int departmentId,
      String name, String email, String password);
  Future<Result<TeacherDTO>> updateTeacher(String hash, int id, int departmentId,
      String name);
  Future<Result<bool>> deleteTeacher(String hash, int id);
  // Schedule
  Future<Result<List<ScheduleDTO>>> getGroupSchedule(String hash, int groupId,
      String dateStart, String dateEnd);
  Future<Result<List<ScheduleDTO>>> getTeacherSchedule(String hash,
      int teacherId, String dateStart, String dateEnd);
  Future<Result<ScheduleDTO>> createSchedule(String hash, String date,
      String timeStart, String timeEnd, int groupId, int subjectId,
      int teacherId, int roomId);
  Future<Result<ScheduleDTO>> updateSchedule(String hash, int scheduleId,
      String date, String timeStart, String timeEnd, int groupId, int subjectId,
      int teacherId, int roomId);
  Future<Result<bool>> deleteSchedule(String hash, int id);
  // Attendance
  Future<Result<List<AttendanceDTO>>> getAttendance(String hash, int scheduleId);
  Future<Result<bool>> setAttendance(String hash, int scheduleId, int studentId,
      bool status);
  // Student
  Future<Result<List<StudentDTO>>> getStudents(String hash, int groupId);
  Future<Result<StudentDTO>> createStudent(String hash, String name,
      String email, String password, int groupId);
  Future<Result<StudentDTO>> updateStudent(String hash, int id, int groupId,
      String name);
  Future<Result<bool>> deleteStudent(String hash, int id);
  Future<Result<List<int>>> addEmbeddings(String hash, int studentId,
      List<PlatformFile> files);
}