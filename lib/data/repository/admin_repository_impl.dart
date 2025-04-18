// data/repository/admin_repository_impl.dart
import '/utils/result.dart';
import 'package:get_it/get_it.dart';
import '../storage/network_storage.dart';
import '/domain/models/room_domain.dart';
import '../models/room_dto/room_dto.dart';
import '../models/group_dto/group_dto.dart';
import '/domain/models/subject_domain.dart';
import '/domain/models/student_domain.dart';
import '/domain/models/schedule_domain.dart';
import '/domain/models/building_domain.dart';
import '/domain/models/institute_domain.dart';
import 'package:file_picker/file_picker.dart';
import '/domain/models/department_domain.dart';
import '../../domain/models/group_domain.dart';
import '/domain/models/attendance_domain.dart';
import '../models/student_dto/student_dto.dart';
import '../models/subject_dto/subject_dto.dart';
import '../models/teacher_dto/teacher_dto.dart';
import '../../domain/models/teacher_domain.dart';
import '/domain/repository/admin_repository.dart';
import '../models/schedule_dto/schedule_dto.dart';
import '../models/institute_dto/institute_dto.dart';
import '/data/models/building_dto/building_dto.dart';
import '../models/department_dto/department_dto.dart';
import '../models/attendance_dto/attendance_dto.dart';
import 'package:easy_localization/easy_localization.dart';

class AdminRepositoryImpl implements AdminRepository {
  final networkStorage = GetIt.instance<NetworkStorage>();

  // Institute
  @override
  Future<Result<InstituteDomain>> createInstitute(String hash,
      String name) async {
    late Result<InstituteDomain> resultNew;
    var result = await networkStorage.createInstitute(hash, name);
    result.when(
      success: (data) {
        resultNew = Success(data.toDomain());
      },
      error: (code) => resultNew = Error(code),
    );
    return resultNew;
  }

  @override
  Future<Result<InstituteDomain>> updateInstitute(String hash, int id,
      String name) async {
    late Result<InstituteDomain> resultNew;
    var result = await networkStorage.updateInstitute(hash, id, name);
    result.when(
      success: (data) {
        resultNew = Success(data.toDomain());
      },
      error: (code) => resultNew = Error(code),
    );
    return resultNew;
  }

  @override
  Future<Result<bool>> deleteInstitute(String hash, int id) async {
    return await networkStorage.deleteInstitute(hash, id);
  }

  // Building
  @override
  Future<Result<List<BuildingDomain>>> getBuildings(String hash) async {
    List<BuildingDomain> list = [];
    late Result<List<BuildingDomain>> resultStat;
    final result = await networkStorage.getBuildings(hash);
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
  Future<Result<BuildingDomain>> createBuilding(String hash, String name,
      String address) async {
    late Result<BuildingDomain> resultNew;
    var result = await networkStorage.createBuilding(hash, name, address);
    result.when(
      success: (data) {
        resultNew = Success(data.toDomain());
      },
      error: (code) => resultNew = Error(code),
    );
    return resultNew;
  }

  @override
  Future<Result<BuildingDomain>> updateBuilding(String hash, int id,
      String name, String address) async {
    late Result<BuildingDomain> resultNew;
    var result = await networkStorage.updateBuilding(hash, id, name, address);
    result.when(
      success: (data) {
        resultNew = Success(data.toDomain());
      },
      error: (code) => resultNew = Error(code),
    );
    return resultNew;
  }

  @override
  Future<Result<bool>> deleteBuilding(String hash, int id) async {
    return await networkStorage.deleteBuilding(hash, id);
  }

  // Subject
  @override
  Future<Result<List<SubjectDomain>>> getSubjects(String hash) async {
    List<SubjectDomain> list = [];
    late Result<List<SubjectDomain>> resultStat;
    final result = await networkStorage.getSubjects(hash);
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
  Future<Result<SubjectDomain>> createSubject(String hash, String name) async {
    late Result<SubjectDomain> resultNew;
    var result = await networkStorage.createSubject(hash, name);
    result.when(
      success: (data) {
        resultNew = Success(data.toDomain());
      },
      error: (code) => resultNew = Error(code),
    );
    return resultNew;
  }

  @override
  Future<Result<SubjectDomain>> updateSubject(String hash, int id,
      String name) async {
    late Result<SubjectDomain> resultNew;
    var result = await networkStorage.updateSubject(hash, id, name);
    result.when(
      success: (data) {
        resultNew = Success(data.toDomain());
      },
      error: (code) => resultNew = Error(code),
    );
    return resultNew;
  }

  @override
  Future<Result<bool>> deleteSubject(String hash, int id) async {
    return await networkStorage.deleteSubject(hash, id);
  }

  // Room
  @override
  Future<Result<List<RoomDomain>>> getRooms(String hash, int buildingId) async {
    List<RoomDomain> list = [];
    late Result<List<RoomDomain>> resultStat;
    final result = await networkStorage.getRooms(hash, buildingId);
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
  Future<Result<RoomDomain>> createRoom(String hash, int buildingId,
      String number) async {
    late Result<RoomDomain> resultNew;
    var result = await networkStorage.createRoom(hash, buildingId, number);
    result.when(
      success: (data) {
        resultNew = Success(data.toDomain());
      },
      error: (code) => resultNew = Error(code),
    );
    return resultNew;
  }

  @override
  Future<Result<RoomDomain>> updateRoom(String hash, int id, int buildingId,
      String number) async {
    late Result<RoomDomain> resultNew;
    var result = await networkStorage.updateRoom(hash, id, buildingId, number);
    result.when(
      success: (data) {
        resultNew = Success(data.toDomain());
      },
      error: (code) => resultNew = Error(code),
    );
    return resultNew;
  }

  @override
  Future<Result<bool>> deleteRoom(String hash, int id) async {
    return await networkStorage.deleteRoom(hash, id);
  }

  // Device
  @override
  Future<Result<RoomDomain>> createDevice(String hash, RoomDomain room) async {
    late Result<RoomDomain> resultNew;
    var result = await networkStorage.createDevice(hash, room.id);
    result.when(
      success: (data) {
        resultNew = Success(data.toDomain());
      },
      error: (code) => resultNew = Error(code),
    );
    return resultNew;
  }

  @override
  Future<Result<RoomDomain>> deleteDevice(String hash, RoomDomain room) async {
    late Result<RoomDomain> resultNew;
    var result = await networkStorage.deleteDevice(hash, room.deviceId!);
    result.when(
      success: (data) {
        room.deviceId = null;
        resultNew = Success(room);
      },
      error: (code) => resultNew = Error(code),
    );
    return resultNew;
  }

  // Department
  @override
  Future<Result<List<DepartmentDomain>>> getDepartments(String hash,
      int instituteId) async {
    List<DepartmentDomain> list = [];
    late Result<List<DepartmentDomain>> resultStat;
    final result = await networkStorage.getDepartments(hash, instituteId);
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
  Future<Result<DepartmentDomain>> createDepartment(String hash,
      int instituteId, String name) async {
    late Result<DepartmentDomain> resultNew;
    var result = await networkStorage.createDepartment(hash, instituteId, name);
    result.when(
      success: (data) {
        resultNew = Success(data.toDomain());
      },
      error: (code) => resultNew = Error(code),
    );
    return resultNew;
  }

  @override
  Future<Result<DepartmentDomain>> updateDepartment(String hash, int id,
      int instituteId, String name) async {
    late Result<DepartmentDomain> resultNew;
    var result = await networkStorage.updateDepartment(hash, id, instituteId,
        name);
    result.when(
      success: (data) {
        resultNew = Success(data.toDomain());
      },
      error: (code) => resultNew = Error(code),
    );
    return resultNew;
  }

  @override
  Future<Result<bool>> deleteDepartment(String hash, int id) async {
    return await networkStorage.deleteDepartment(hash, id);
  }

  // Group
  @override
  Future<Result<GroupDomain>> createGroup(String hash, int instituteId,
      String name) async {
    late Result<GroupDomain> resultNew;
    var result = await networkStorage.createGroup(hash, instituteId, name);
    result.when(
      success: (data) {
        resultNew = Success(data.toDomain());
      },
      error: (code) => resultNew = Error(code),
    );
    return resultNew;
  }

  @override
  Future<Result<GroupDomain>> updateGroup(String hash, int id, int instituteId,
      String name) async {
    late Result<GroupDomain> resultNew;
    var result = await networkStorage.updateGroup(hash, id, instituteId,
        name);
    result.when(
      success: (data) {
        resultNew = Success(data.toDomain());
      },
      error: (code) => resultNew = Error(code),
    );
    return resultNew;
  }

  @override
  Future<Result<bool>> deleteGroup(String hash, int id) async {
    return await networkStorage.deleteGroup(hash, id);
  }

  // Teacher
  @override
  Future<Result<List<TeacherDomain>>> getTeachers(String hash,
      int departmentId) async {
    List<TeacherDomain> list = [];
    late Result<List<TeacherDomain>> resultStat;
    final result = await networkStorage.getTeachers(hash, departmentId);
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
  Future<Result<TeacherDomain>> createTeacher(String hash, int departmentId,
      String name, String email, String password) async {
    late Result<TeacherDomain> resultNew;
    var result = await networkStorage.createTeacher(hash, departmentId, name,
        email, password);
    result.when(
      success: (data) {
        resultNew = Success(data.toDomain());
      },
      error: (code) => resultNew = Error(code),
    );
    return resultNew;
  }

  @override
  Future<Result<TeacherDomain>> updateTeacher(String hash, int id,
      int departmentId, String name) async {
    late Result<TeacherDomain> resultNew;
    var result = await networkStorage.updateTeacher(hash, id, departmentId,
        name);
    result.when(
      success: (data) {
        resultNew = Success(data.toDomain());
      },
      error: (code) => resultNew = Error(code),
    );
    return resultNew;
  }

  @override
  Future<Result<bool>> deleteTeacher(String hash, int id) async {
    return await networkStorage.deleteTeacher(hash, id);
  }

  // Schedule
  @override
  Future<Result<List<ScheduleDomain>>> getGroupSchedule(String hash,
      int groupId, DateTime dateStart, DateTime dateEnd) async {
    List<ScheduleDomain> list = [];
    late Result<List<ScheduleDomain>> resultStat;
    final result = await networkStorage.getGroupSchedule(hash, groupId,
        DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS").format(dateStart),
        DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS").format(dateEnd));
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
  Future<Result<List<ScheduleDomain>>> getTeacherSchedule(String hash,
      int teacherId, DateTime dateStart, DateTime dateEnd) async {
    List<ScheduleDomain> list = [];
    late Result<List<ScheduleDomain>> resultStat;
    final result = await networkStorage.getTeacherSchedule(hash, teacherId,
        DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS").format(dateStart),
        DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS").format(dateEnd));
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
  Future<Result<ScheduleDomain>> createSchedule(String hash, DateTime timeStart,
      DateTime timeEnd, int groupId, int subjectId,
      int teacherId, int roomId) async {
    late Result<ScheduleDomain> resultNew;
    var result = await networkStorage.createSchedule(hash,
        DateFormat("yyyy-MM-dd'T00:00:00.000'").format(timeStart),
        DateFormat('HH:mm').format(timeStart), DateFormat('HH:mm')
            .format(timeEnd), groupId, subjectId, teacherId, roomId);
    result.when(
      success: (data) {
        resultNew = Success(data.toDomain());
      },
      error: (code) => resultNew = Error(code),
    );
    return resultNew;
  }

  @override
  Future<Result<ScheduleDomain>> updateSchedule(String hash, int scheduleId,
      DateTime timeStart, DateTime timeEnd, int groupId, int subjectId,
      int teacherId, int roomId) async {
    late Result<ScheduleDomain> resultNew;
    var result = await networkStorage.updateSchedule(hash, scheduleId,
        DateFormat("yyyy-MM-dd'T00:00:00.000'").format(timeStart),
        DateFormat('HH:mm').format(timeStart), DateFormat('HH:mm')
            .format(timeEnd), groupId, subjectId, teacherId, roomId);
    result.when(
      success: (data) {
        resultNew = Success(data.toDomain());
      },
      error: (code) => resultNew = Error(code),
    );
    return resultNew;
  }

  @override
  Future<Result<bool>> deleteSchedule(String hash, int id) async {
    return await networkStorage.deleteSchedule(hash, id);
  }

  // Attendance
  @override
  Future<Result<List<AttendanceDomain>>> getAttendance(String hash,
      int scheduleId) async {
    List<AttendanceDomain> list = [];
    late Result<List<AttendanceDomain>> resultStat;
    final result = await networkStorage.getAttendance(hash, scheduleId);
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
  Future<Result<bool>> setAttendance(String hash, int scheduleId, int studentId,
      bool status) async {
    return await networkStorage.setAttendance(hash, scheduleId, studentId,
        status);
  }

  // Student
  @override
  Future<Result<List<StudentDomain>>> getStudents(String hash,
      int groupId) async {
    List<StudentDomain> list = [];
    late Result<List<StudentDomain>> resultStat;
    final result = await networkStorage.getStudents(hash, groupId);
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
  Future<Result<StudentDomain>> createStudent(String hash, String name,
      String email, String password, int groupId) async {
    late Result<StudentDomain> resultNew;
    var result = await networkStorage.createStudent(hash, name, email, password,
        groupId);
    result.when(
      success: (data) {
        resultNew = Success(data.toDomain());
      },
      error: (code) => resultNew = Error(code),
    );
    return resultNew;
  }

  @override
  Future<Result<StudentDomain>> updateStudent(String hash, int id, int groupId,
      String name) async {
    late Result<StudentDomain> resultNew;
    var result = await networkStorage.updateStudent(hash, id, groupId, name);
    result.when(
      success: (data) {
        resultNew = Success(data.toDomain());
      },
      error: (code) => resultNew = Error(code),
    );
    return resultNew;
  }

  @override
  Future<Result<bool>> deleteStudent(String hash, int id) async {
    return await networkStorage.deleteStudent(hash, id);
  }

  @override
  Future<Result<List<int>>> addEmbeddings(String hash, int studentId,
      List<PlatformFile> files) async {
    return await networkStorage.addEmbeddings(hash, studentId, files);
  }
}