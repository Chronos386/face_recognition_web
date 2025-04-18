// domain/repository/admin_repository.dart
import '/utils/result.dart';
import '../models/room_domain.dart';
import '../models/group_domain.dart';
import '../models/subject_domain.dart';
import '../models/teacher_domain.dart';
import '../models/student_domain.dart';
import '../models/schedule_domain.dart';
import '../models/building_domain.dart';
import '../models/attendance_domain.dart';
import '../models/department_domain.dart';
import '/domain/models/institute_domain.dart';
import 'package:file_picker/file_picker.dart';

abstract class AdminRepository {
  // Institute
  Future<Result<InstituteDomain>> createInstitute(String hash, String name);
  Future<Result<InstituteDomain>> updateInstitute(String hash, int id,
      String name);
  Future<Result<bool>> deleteInstitute(String hash, int id);
  // Building
  Future<Result<List<BuildingDomain>>> getBuildings(String hash);
  Future<Result<BuildingDomain>> createBuilding(String hash, String name,
      String address);
  Future<Result<BuildingDomain>> updateBuilding(String hash, int id,
      String name, String address);
  Future<Result<bool>> deleteBuilding(String hash, int id);
  // Subject
  Future<Result<List<SubjectDomain>>> getSubjects(String hash);
  Future<Result<SubjectDomain>> createSubject(String hash, String name);
  Future<Result<SubjectDomain>> updateSubject(String hash, int id, String name);
  Future<Result<bool>> deleteSubject(String hash, int id);
  // Room
  Future<Result<List<RoomDomain>>> getRooms(String hash, int buildingId);
  Future<Result<RoomDomain>> createRoom(String hash, int buildingId,
      String number);
  Future<Result<RoomDomain>> updateRoom(String hash, int id, int buildingId,
      String number);
  Future<Result<bool>> deleteRoom(String hash, int id);
  // Device
  Future<Result<RoomDomain>> createDevice(String hash, RoomDomain room);
  Future<Result<RoomDomain>> deleteDevice(String hash, RoomDomain room);
  // Department
  Future<Result<List<DepartmentDomain>>> getDepartments(String hash,
      int instituteId);
  Future<Result<DepartmentDomain>> createDepartment(String hash,
      int instituteId, String name);
  Future<Result<DepartmentDomain>> updateDepartment(String hash, int id,
      int instituteId, String name);
  Future<Result<bool>> deleteDepartment(String hash, int id);
  // Group
  Future<Result<GroupDomain>> createGroup(String hash, int instituteId,
      String name);
  Future<Result<GroupDomain>> updateGroup(String hash, int id, int instituteId,
      String name);
  Future<Result<bool>> deleteGroup(String hash, int id);
  // Teacher
  Future<Result<List<TeacherDomain>>> getTeachers(String hash, int departmentId);
  Future<Result<TeacherDomain>> createTeacher(String hash, int departmentId,
      String name, String email, String password);
  Future<Result<TeacherDomain>> updateTeacher(String hash, int id,
      int departmentId, String name);
  Future<Result<bool>> deleteTeacher(String hash, int id);
  // Schedule
  Future<Result<List<ScheduleDomain>>> getGroupSchedule(String hash,
      int groupId, DateTime dateStart, DateTime dateEnd);
  Future<Result<List<ScheduleDomain>>> getTeacherSchedule(String hash,
      int teacherId, DateTime dateStart, DateTime dateEnd);
  Future<Result<ScheduleDomain>> createSchedule(String hash, DateTime timeStart,
      DateTime timeEnd, int groupId, int subjectId,
      int teacherId, int roomId);
  Future<Result<ScheduleDomain>> updateSchedule(String hash, int scheduleId,
      DateTime timeStart, DateTime timeEnd, int groupId, int subjectId,
      int teacherId, int roomId);
  Future<Result<bool>> deleteSchedule(String hash, int id);
  // Attendance
  Future<Result<List<AttendanceDomain>>> getAttendance(String hash,
      int scheduleId);
  Future<Result<bool>> setAttendance(String hash, int scheduleId, int studentId,
      bool status);
  // Student
  Future<Result<List<StudentDomain>>> getStudents(String hash, int groupId);
  Future<Result<StudentDomain>> createStudent(String hash, String name,
      String email, String password, int groupId);
  Future<Result<StudentDomain>> updateStudent(String hash, int id, int groupId,
      String name);
  Future<Result<bool>> deleteStudent(String hash, int id);
  Future<Result<List<int>>> addEmbeddings(String hash, int studentId,
      List<PlatformFile> files);
}