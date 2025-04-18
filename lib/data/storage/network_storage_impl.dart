// data/storage/network_storage_impl.dart
import 'dart:convert';
import 'dart:io';
import '/utils/result.dart';
import '/utils/logging.dart';
import 'package:dio/dio.dart';
import 'network_storage.dart';
import 'package:mime/mime.dart';
import '/utils/error_codes.dart';
import 'package:http/http.dart' as http;
import 'package:image/image.dart' as img;
import 'package:flutter/foundation.dart';
import '../models/room_dto/room_dto.dart';
import '../models/user_dto/user_dto.dart';
import '../models/group_dto/group_dto.dart';
import 'package:file_picker/file_picker.dart';
import 'package:http_parser/http_parser.dart';
import '../models/student_dto/student_dto.dart';
import '../models/subject_dto/subject_dto.dart';
import '../models/teacher_dto/teacher_dto.dart';
import '../models/building_dto/building_dto.dart';
import '../models/schedule_dto/schedule_dto.dart';
import '../models/statistic_dto/statistic_dto.dart';
import '../models/institute_dto/institute_dto.dart';
import '../models/attendance_dto/attendance_dto.dart';
import '../models/department_dto/department_dto.dart';
import '../models/top_student_dto/top_student_dto.dart';
import '../models/top_teachers_dto/top_teachers_dto.dart';
import '../models/saved_photos_codes/saved_photos_codes.dart';
import '../models/institutes_stat_dto/institutes_stat_dto.dart';
import '../models/cluster_response_dto/cluster_response_dto.dart';
import '../models/top_group_absences_dto/top_group_absences_dto.dart';
import '../models/top_group_attendance_dto/top_group_attendance_dto.dart';

class NetworkStorageImpl implements NetworkStorage {
  final dio = Dio();
  final baseURL = "http://172.20.10.13:6583";

  Future<Result<T>> _performRequest<T>({
    required String method,
    required String path,
    Map<String, dynamic>? data,
    T Function(Response response)? responseParser,
    T Function()? successHandler,
    required String funcName,
  }) async {
    try {
      final formData = data != null ? FormData.fromMap(data) : null;
      final response = await dio.request(
        '$baseURL$path',
        data: formData,
        options: Options(
          method: method,
          validateStatus: (status) => true,
        ),
      );

      if (response.statusCode == 200) {
        if (responseParser != null) {
          final result = responseParser(response);
          return Success(result);
        }
        if (successHandler != null) {
          return Success(successHandler());
        }
        return Success(true as T);
      }
      return Error(response.statusCode ?? ErrorCodes.NOT_FOUND);
    } on SocketException {
      return Error(ErrorCodes.NO_INTERNET);
    } on HttpException catch (e) {
      return Error(e.hashCode);
    } catch (e) {
      ErrorLogger().logErrorWithName(
        "NetworkStorage Error ($funcName)",
        e.toString(),
      );
      return Error(ErrorCodes.EXCEPTION);
    }
  }

  // App API
  @override
  Future<Result<List<InstituteDTO>>> getInstitutes(String hash) async {
    return _performRequest<List<InstituteDTO>>(
      method: 'POST',
      path: '/api/admin/institute/',
      data: {'hash': hash},
      responseParser: (r) {
        List<InstituteDTO> list = [];
        for (var item in r.data) {
          list.add(InstituteDTO.fromJson(item));
        }
        return list;
      },
      funcName: 'getInstitutes',
    );
  }

  // User API
  @override
  Future<Result<UserDTO>> loginByPassword(String login, String password) async {
    return _performRequest<UserDTO>(
      method: 'POST',
      path: '/api/user/account/',
      data: {'login': login, 'password': password},
      responseParser: (r) {
        final user = UserDTO.fromJson(r.data);
        return user;
      },
      funcName: 'loginByPassword',
    );
  }

  @override
  Future<Result<UserDTO>> loginByHash(String hash) async {
    return _performRequest<UserDTO>(
      method: 'PUT',
      path: '/api/user/account/',
      data: {'hash': hash},
      responseParser: (r) => UserDTO.fromJson(r.data),
      funcName: 'loginByHash',
    );
  }

  @override
  Future<Result<bool>> logout(String hash) async {
    return _performRequest<bool>(
      method: 'DELETE',
      path: '/api/user/account/',
      data: {'hash': hash},
      successHandler: () => true,
      funcName: 'logout',
    );
  }

  @override
  Future<Result<bool>> clearAllHashes(String hash) async {
    return _performRequest<bool>(
      method: 'DELETE',
      path: '/api/admin/hashes/',
      data: {'hash': hash},
      successHandler: () => true,
      funcName: 'clearAllHashes',
    );
  }

  // Analytic API
  @override
  Future<Result<List<StatisticDTO>>> getUniversityAttendance(String hash,
      String dateStart, String dateEnd) async {
    return _performRequest<List<StatisticDTO>>(
      method: 'POST',
      path: '/api/stats/university-attendance/',
      data: {'hash': hash, 'date_start': dateStart, 'date_end': dateEnd},
      responseParser: (r) {
        List<StatisticDTO> list = [];
        for (var item in r.data) {
          list.add(StatisticDTO.fromJson(item));
        }
        return list;
      },
      funcName: 'getUniversityAttendance',
    );
  }

  @override
  Future<Result<List<StatisticDTO>>> getGroupAttendance(String hash,
      int groupId, String dateStart, String dateEnd) async {
    return _performRequest<List<StatisticDTO>>(
      method: 'POST',
      path: '/api/stats/group-attendance/',
      data: {
        'hash': hash, 'date_start': dateStart, 'date_end': dateEnd,
        'group_id': groupId.toString()
      },
      responseParser: (r) {
        List<StatisticDTO> list = [];
        for (var item in r.data) {
          list.add(StatisticDTO.fromJson(item));
        }
        return list;
      },
      funcName: 'getGroupAttendance',
    );
  }

  @override
  Future<Result<ClusterResponseDTO>> getGroupClusters(String hash,
      int groupId, String dateStart, String dateEnd) async {
    return _performRequest<ClusterResponseDTO>(
      method: 'POST',
      path: '/api/stats/group-clusters/',
      data: {
        'hash': hash, 'date_start': dateStart, 'date_end': dateEnd,
        'group_id': groupId.toString()
      },
      responseParser: (r) => ClusterResponseDTO.fromJson(r.data),
      funcName: 'getGroupClusters',
    );
  }

  @override
  Future<Result<List<InstitutesStatDTO>>> getInstitutesAnalysis(String hash,
      String dateStart, String dateEnd) async {
    return _performRequest<List<InstitutesStatDTO>>(
      method: 'POST',
      path: '/api/stats/institutes-analysis/',
      data: {
        'hash': hash, 'date_start': dateStart, 'date_end': dateEnd
      },
      responseParser: (r) {
        List<InstitutesStatDTO> list = [];
        for (var item in r.data) {
          list.add(InstitutesStatDTO.fromJson(item));
        }
        return list;
      },
      funcName: 'getInstitutesAnalysis',
    );
  }

  @override
  Future<Result<List<TopTeachersDTO>>> getTopTeachers(String hash,
      String dateStart, String dateEnd) async {
    return _performRequest<List<TopTeachersDTO>>(
      method: 'POST',
      path: '/api/stats/top-teachers/',
      data: {
        'hash': hash, 'date_start': dateStart, 'date_end': dateEnd
      },
      responseParser: (r) {
        List<TopTeachersDTO> list = [];
        for (var item in r.data) {
          list.add(TopTeachersDTO.fromJson(item));
        }
        return list;
      },
      funcName: 'getTopTeachers',
    );
  }

  @override
  Future<Result<List<TopStudentDTO>>> getTopStudentsAbsences(String hash,
      String dateStart, String dateEnd) async {
    return _performRequest<List<TopStudentDTO>>(
      method: 'POST',
      path: '/api/stats/top-students-absences/',
      data: {
        'hash': hash, 'date_start': dateStart, 'date_end': dateEnd
      },
      responseParser: (r) {
        List<TopStudentDTO> list = [];
        for (var item in r.data) {
          list.add(TopStudentDTO.fromJson(item));
        }
        return list;
      },
      funcName: 'getTopStudentsAbsences',
    );
  }

  @override
  Future<Result<List<TopGroupAbsencesDTO>>> getTopGroupAbsences(String hash,
      String dateStart, String dateEnd) async {
    return _performRequest<List<TopGroupAbsencesDTO>>(
      method: 'POST',
      path: '/api/stats/top-groups-absences/',
      data: {
        'hash': hash, 'date_start': dateStart, 'date_end': dateEnd
      },
      responseParser: (r) {
        List<TopGroupAbsencesDTO> list = [];
        for (var item in r.data) {
          list.add(TopGroupAbsencesDTO.fromJson(item));
        }
        return list;
      },
      funcName: 'getTopGroupAbsences',
    );
  }

  @override
  Future<Result<List<TopGroupAttendanceDTO>>> getTopGroupAttendance(String hash,
      String dateStart, String dateEnd) async {
    return _performRequest<List<TopGroupAttendanceDTO>>(
      method: 'POST',
      path: '/api/stats/top-groups-attendance/',
      data: {
        'hash': hash, 'date_start': dateStart, 'date_end': dateEnd
      },
      responseParser: (r) {
        List<TopGroupAttendanceDTO> list = [];
        for (var item in r.data) {
          list.add(TopGroupAttendanceDTO.fromJson(item));
        }
        return list;
      },
      funcName: 'getTopGroupAbsences',
    );
  }

  // Admin API
  // Institutes
  @override
  Future<Result<InstituteDTO>> createInstitute(String hash, String name) async {
    return _performRequest<InstituteDTO>(
      method: 'POST',
      path: '/api/admin/institute/actions/',
      data: {'hash': hash, 'name': name},
      responseParser: (r) => InstituteDTO.fromJson(r.data),
      funcName: 'createInstitute',
    );
  }

  @override
  Future<Result<InstituteDTO>> updateInstitute(String hash, int id,
      String name) async {
    return _performRequest<InstituteDTO>(
      method: 'PUT',
      path: '/api/admin/institute/actions/',
      data: {'hash': hash, 'id_institute': id, 'name': name},
      responseParser: (r) => InstituteDTO.fromJson(r.data),
      funcName: 'updateInstitute',
    );
  }

  @override
  Future<Result<bool>> deleteInstitute(String hash, int id) async {
    return _performRequest<bool>(
      method: 'DELETE',
      path: '/api/admin/institute/actions/',
      data: {'hash': hash, 'id_institute': id},
      successHandler: () => true,
      funcName: 'deleteInstitute',
    );
  }

  // Buildings
  @override
  Future<Result<List<BuildingDTO>>> getBuildings(String hash) async {
    return _performRequest<List<BuildingDTO>>(
      method: 'POST',
      path: '/api/admin/building/',
      data: {'hash': hash},
      responseParser: (r) {
        List<BuildingDTO> list = [];
        for (var item in r.data) {
          list.add(BuildingDTO.fromJson(item));
        }
        return list;
      },
      funcName: 'getBuildings',
    );
  }

  @override
  Future<Result<BuildingDTO>> createBuilding(String hash, String name,
      String address) async {
    return _performRequest<BuildingDTO>(
      method: 'POST',
      path: '/api/admin/building/actions/',
      data: {'hash': hash, 'name': name, 'address': address},
      responseParser: (r) => BuildingDTO.fromJson(r.data),
      funcName: 'createBuilding',
    );
  }

  @override
  Future<Result<BuildingDTO>> updateBuilding(String hash, int id,
      String name, String address) async {
    return _performRequest<BuildingDTO>(
      method: 'PUT',
      path: '/api/admin/building/actions/',
      data: {'hash': hash, 'building_id': id, 'name': name, 'address': address},
      responseParser: (r) => BuildingDTO.fromJson(r.data),
      funcName: 'updateBuilding',
    );
  }

  @override
  Future<Result<bool>> deleteBuilding(String hash, int id) async {
    return _performRequest<bool>(
      method: 'DELETE',
      path: '/api/admin/building/actions/',
      data: {'hash': hash, 'building_id': id},
      successHandler: () => true,
      funcName: 'deleteBuilding',
    );
  }

  // Subjects
  @override
  Future<Result<List<SubjectDTO>>> getSubjects(String hash) async {
    return _performRequest<List<SubjectDTO>>(
      method: 'POST',
      path: '/api/admin/subject/',
      data: {'hash': hash},
      responseParser: (r) {
        List<SubjectDTO> list = [];
        for (var item in r.data) {
          list.add(SubjectDTO.fromJson(item));
        }
        return list;
      },
      funcName: 'getSubjects',
    );
  }

  @override
  Future<Result<SubjectDTO>> createSubject(String hash, String name) async {
    return _performRequest<SubjectDTO>(
      method: 'POST',
      path: '/api/admin/subject/actions/',
      data: {'hash': hash, 'name': name},
      responseParser: (r) => SubjectDTO.fromJson(r.data),
      funcName: 'createSubject',
    );
  }

  @override
  Future<Result<SubjectDTO>> updateSubject(String hash, int id,
      String name) async {
    return _performRequest<SubjectDTO>(
      method: 'PUT',
      path: '/api/admin/subject/actions/',
      data: {'hash': hash, 'subject_id': id, 'name': name},
      responseParser: (r) => SubjectDTO.fromJson(r.data),
      funcName: 'updateSubject',
    );
  }

  @override
  Future<Result<bool>> deleteSubject(String hash, int id) async {
    return _performRequest<bool>(
      method: 'DELETE',
      path: '/api/admin/subject/actions/',
      data: {'hash': hash, 'subject_id': id},
      successHandler: () => true,
      funcName: 'deleteSubject',
    );
  }

  // Room
  @override
  Future<Result<List<RoomDTO>>> getRooms(String hash, int buildingId) async {
    return _performRequest<List<RoomDTO>>(
      method: 'POST',
      path: '/api/admin/room/',
      data: {'hash': hash, 'building_id': buildingId},
      responseParser: (r) {
        List<RoomDTO> list = [];
        for (var item in r.data) {
          list.add(RoomDTO.fromJson(item));
        }
        return list;
      },
      funcName: 'getRooms',
    );
  }

  @override
  Future<Result<RoomDTO>> createRoom(String hash, int buildingId,
      String number) async {
    return _performRequest<RoomDTO>(
      method: 'POST',
      path: '/api/admin/room/actions/',
      data: {'hash': hash, 'building_id': buildingId, 'number': number},
      responseParser: (r) => RoomDTO.fromJson(r.data),
      funcName: 'createRoom',
    );
  }

  @override
  Future<Result<RoomDTO>> updateRoom(String hash, int id, int buildingId,
      String number) async {
    return _performRequest<RoomDTO>(
      method: 'PUT',
      path: '/api/admin/room/actions/',
      data: {'hash': hash, 'room_id': id, 'building_id': buildingId,
        'number': number},
      responseParser: (r) => RoomDTO.fromJson(r.data),
      funcName: 'updateRoom',
    );
  }

  @override
  Future<Result<bool>> deleteRoom(String hash, int id) async {
    return _performRequest<bool>(
      method: 'DELETE',
      path: '/api/admin/room/actions/',
      data: {'hash': hash, 'room_id': id},
      successHandler: () => true,
      funcName: 'deleteRoom',
    );
  }

  // Device
  @override
  Future<Result<RoomDTO>> createDevice(String hash, int id) async {
    return _performRequest<RoomDTO>(
      method: 'POST',
      path: '/api/admin/device/actions/',
      data: {'hash': hash, 'room_id': id},
      responseParser: (r) => RoomDTO.fromJson(r.data),
      funcName: 'createDevice',
    );
  }

  @override
  Future<Result<bool>> deleteDevice(String hash, int id) async {
    return _performRequest<bool>(
      method: 'DELETE',
      path: '/api/admin/device/actions/',
      data: {'hash': hash, 'device_id': id},
      successHandler: () => true,
      funcName: 'deleteDevice',
    );
  }

  // Department
  @override
  Future<Result<List<DepartmentDTO>>> getDepartments(String hash,
      int instituteId) async {
    return _performRequest<List<DepartmentDTO>>(
      method: 'POST',
      path: '/api/admin/department/',
      data: {'hash': hash, 'id_institute': instituteId},
      responseParser: (r) {
        List<DepartmentDTO> list = [];
        for (var item in r.data) {
          list.add(DepartmentDTO.fromJson(item));
        }
        return list;
      },
      funcName: 'getDepartments',
    );
  }

  @override
  Future<Result<DepartmentDTO>> createDepartment(String hash, int instituteId,
      String name) async {
    return _performRequest<DepartmentDTO>(
      method: 'POST',
      path: '/api/admin/department/actions/',
      data: {'hash': hash, 'id_institute': instituteId, 'name': name},
      responseParser: (r) => DepartmentDTO.fromJson(r.data),
      funcName: 'createDepartment',
    );
  }

  @override
  Future<Result<DepartmentDTO>> updateDepartment(String hash, int id,
      int instituteId, String name) async {
    return _performRequest<DepartmentDTO>(
      method: 'PUT',
      path: '/api/admin/department/actions/',
      data: {'hash': hash, 'id_department': id, 'id_institute': instituteId,
        'name': name},
      responseParser: (r) => DepartmentDTO.fromJson(r.data),
      funcName: 'updateDepartment',
    );
  }

  @override
  Future<Result<bool>> deleteDepartment(String hash, int id) async {
    return _performRequest<bool>(
      method: 'DELETE',
      path: '/api/admin/department/actions/',
      data: {'hash': hash, 'id_department': id},
      successHandler: () => true,
      funcName: 'deleteDepartment',
    );
  }

  // Group
  @override
  Future<Result<List<GroupDTO>>> getGroups(String hash, int instituteId) async {
    return _performRequest<List<GroupDTO>>(
      method: 'POST',
      path: '/api/admin/group/',
      data: {'hash': hash, 'institute_id': instituteId.toString()},
      responseParser: (r) {
        List<GroupDTO> list = [];
        for (var item in r.data) {
          list.add(GroupDTO.fromJson(item));
        }
        return list;
      },
      funcName: 'getGroups',
    );
  }

  @override
  Future<Result<GroupDTO>> createGroup(String hash, int instituteId,
      String name) async {
    return _performRequest<GroupDTO>(
      method: 'POST',
      path: '/api/admin/group/actions/',
      data: {'hash': hash, 'institute_id': instituteId, 'name': name},
      responseParser: (r) => GroupDTO.fromJson(r.data),
      funcName: 'createGroup',
    );
  }

  @override
  Future<Result<GroupDTO>> updateGroup(String hash, int id, int instituteId,
      String name) async {
    return _performRequest<GroupDTO>(
      method: 'PUT',
      path: '/api/admin/group/actions/',
      data: {'hash': hash, 'group_id': id, 'institute_id': instituteId,
        'name': name},
      responseParser: (r) => GroupDTO.fromJson(r.data),
      funcName: 'updateGroup',
    );
  }

  @override
  Future<Result<bool>> deleteGroup(String hash, int id) async {
    return _performRequest<bool>(
      method: 'DELETE',
      path: '/api/admin/group/actions/',
      data: {'hash': hash, 'group_id': id},
      successHandler: () => true,
      funcName: 'deleteGroup',
    );
  }

  // Teacher
  @override
  Future<Result<List<TeacherDTO>>> getTeachers(String hash,
      int departmentId) async {
    return _performRequest<List<TeacherDTO>>(
      method: 'POST',
      path: '/api/admin/teacher/',
      data: {'hash': hash, 'department_id': departmentId.toString()},
      responseParser: (r) {
        List<TeacherDTO> list = [];
        for (var item in r.data) {
          list.add(TeacherDTO.fromJson(item));
        }
        return list;
      },
      funcName: 'getTeachers',
    );
  }

  @override
  Future<Result<TeacherDTO>> createTeacher(String hash, int departmentId,
      String name, String email, String password) async {
    return _performRequest<TeacherDTO>(
      method: 'POST',
      path: '/api/admin/teacher/actions/',
      data: {'hash': hash, 'department_id': departmentId, 'name': name,
        'email': email, 'password': password},
      responseParser: (r) => TeacherDTO.fromJson(r.data),
      funcName: 'createTeacher',
    );
  }

  @override
  Future<Result<TeacherDTO>> updateTeacher(String hash, int id,
      int departmentId, String name) async {
    return _performRequest<TeacherDTO>(
      method: 'PUT',
      path: '/api/admin/teacher/actions/',
      data: {'hash': hash, 'id_teacher': id, 'department_id': departmentId,
        'name': name},
      responseParser: (r) => TeacherDTO.fromJson(r.data),
      funcName: 'updateTeacher',
    );
  }

  @override
  Future<Result<bool>> deleteTeacher(String hash, int id) async {
    return _performRequest<bool>(
      method: 'DELETE',
      path: '/api/admin/teacher/actions/',
      data: {'hash': hash, 'id_teacher': id},
      successHandler: () => true,
      funcName: 'deleteTeacher',
    );
  }

  // Schedule
  @override
  Future<Result<List<ScheduleDTO>>> getGroupSchedule(String hash, int groupId,
      String dateStart, String dateEnd) async {
    return _performRequest<List<ScheduleDTO>>(
      method: 'POST',
      path: '/api/admin/group/schedule/',
      data: {'hash': hash, 'group_id': groupId.toString(),
        'date_start': dateStart, 'date_end': dateEnd},
      responseParser: (r) {
        List<ScheduleDTO> list = [];
        for (var item in r.data) {
          list.add(ScheduleDTO.fromJson(item));
        }
        return list;
      },
      funcName: 'getGroupSchedule',
    );
  }

  @override
  Future<Result<List<ScheduleDTO>>> getTeacherSchedule(String hash,
      int teacherId, String dateStart, String dateEnd) async {
    return _performRequest<List<ScheduleDTO>>(
      method: 'POST',
      path: '/api/admin/teacher/schedule/',
      data: {'hash': hash, 'teacher_id': teacherId.toString(),
        'date_start': dateStart, 'date_end': dateEnd},
      responseParser: (r) {
        List<ScheduleDTO> list = [];
        for (var item in r.data) {
          list.add(ScheduleDTO.fromJson(item));
        }
        return list;
      },
      funcName: 'getTeacherSchedule',
    );
  }

  @override
  Future<Result<ScheduleDTO>> createSchedule(String hash, String date,
      String timeStart, String timeEnd, int groupId, int subjectId,
      int teacherId, int roomId) async {
    return _performRequest<ScheduleDTO>(
      method: 'POST',
      path: '/api/admin/schedule/actions/',
      data: {'hash': hash, 'date': date, 'time_start': timeStart,
        'time_end': timeEnd, 'group_id': groupId, 'subject_id': subjectId,
        'teacher_id': teacherId, 'room_id': roomId},
      responseParser: (r) => ScheduleDTO.fromJson(r.data),
      funcName: 'createSchedule',
    );
  }

  @override
  Future<Result<ScheduleDTO>> updateSchedule(String hash, int scheduleId,
      String date, String timeStart, String timeEnd, int groupId, int subjectId,
      int teacherId, int roomId) async {
    return _performRequest<ScheduleDTO>(
      method: 'PUT',
      path: '/api/admin/schedule/actions/',
      data: {'hash': hash, 'schedule_id': scheduleId, 'date': date,
        'time_start': timeStart, 'time_end': timeEnd, 'group_id': groupId,
        'subject_id': subjectId, 'teacher_id': teacherId, 'room_id': roomId},
      responseParser: (r) => ScheduleDTO.fromJson(r.data),
      funcName: 'updateSchedule',
    );
  }

  @override
  Future<Result<bool>> deleteSchedule(String hash, int id) async {
    return _performRequest<bool>(
      method: 'DELETE',
      path: '/api/admin/schedule/actions/',
      data: {'hash': hash, 'schedule_id': id},
      successHandler: () => true,
      funcName: 'deleteSchedule',
    );
  }

  // Attendance
  @override
  Future<Result<List<AttendanceDTO>>> getAttendance(String hash,
      int scheduleId) async {
    return _performRequest<List<AttendanceDTO>>(
      method: 'POST',
      path: '/api/teacher/group/attendance/',
      data: {'hash': hash, 'schedule_id': scheduleId},
      responseParser: (r) {
        List<AttendanceDTO> list = [];
        for (var item in r.data) {
          list.add(AttendanceDTO.fromJson(item));
        }
        return list;
      },
      funcName: 'getAttendance',
    );
  }

  @override
  Future<Result<bool>> setAttendance(String hash, int scheduleId, int studentId,
      bool status) async {
    return _performRequest<bool>(
      method: 'POST',
      path: '/api/teacher/attendance/',
      data: {'hash': hash, 'schedule_id': scheduleId, 'student_id': studentId,
        'status': status ? "true" : "false"},
      successHandler: () => true,
      funcName: 'setAttendance',
    );
  }

  // Student
  @override
  Future<Result<List<StudentDTO>>> getStudents(String hash,
      int groupId) async {
    return _performRequest<List<StudentDTO>>(
      method: 'POST',
      path: '/api/user/student/',
      data: {'hash': hash, 'group_id': groupId},
      responseParser: (r) {
        List<StudentDTO> list = [];
        for (var item in r.data) {
          list.add(StudentDTO.fromJson(item));
        }
        return list;
      },
      funcName: 'getStudents',
    );
  }

  @override
  Future<Result<StudentDTO>> createStudent(String hash, String name,
      String email, String password, int groupId) async {
    return _performRequest<StudentDTO>(
      method: 'POST',
      path: '/api/admin/student/actions/',
      data: {'hash': hash, 'name': name, 'email': email,
        'password': password, 'group_id': groupId},
      responseParser: (r) => StudentDTO.fromJson(r.data),
      funcName: 'createStudent',
    );
  }

  @override
  Future<Result<StudentDTO>> updateStudent(String hash, int id, int groupId,
      String name) async {
    return _performRequest<StudentDTO>(
      method: 'PUT',
      path: '/api/admin/student/actions/',
      data: {'hash': hash, 'student_id': id, 'group_id': groupId, 'name': name},
      responseParser: (r) => StudentDTO.fromJson(r.data),
      funcName: 'updateStudent',
    );
  }

  @override
  Future<Result<bool>> deleteStudent(String hash, int id) async {
    return _performRequest<bool>(
      method: 'DELETE',
      path: '/api/admin/student/actions/',
      data: {'hash': hash, 'student_id': id},
      successHandler: () => true,
      funcName: 'deleteStudent',
    );
  }

  @override
  Future<Result<List<int>>> addEmbeddings(String hash, int studentId,
      List<PlatformFile> files) async {
    try {
      var request = http.MultipartRequest(
        'POST',
        Uri.parse('$baseURL/api/admin/embeddings/'),
      );
      List<PlatformFile> newFilesList = await processImages(files);
      for (var file in newFilesList) {
        if (file.bytes == null) continue;
        var imageStream = http.ByteStream(Stream.fromIterable([file.bytes!]));
        var imageLength = file.size;
        String contentType = getContentTypeFromFileExtension(file.name);
        request.files.add(
          http.MultipartFile(
            'photos',
            imageStream,
            imageLength,
            filename: "photo.jpg",
            contentType: MediaType.parse(contentType),
          ),
        );
      }
      request.fields['hash'] = hash;
      request.fields['student_id'] = studentId.toString();
      var response = await request.send();
      if (response.statusCode == 200) {
        String responseBody = await response.stream.bytesToString();
        var jsonResult = json.decode(responseBody);
        SavedPhotosCodes data = SavedPhotosCodes.fromJson(jsonResult);
        return Success(data.codes);
      } else {
        return Error(response.statusCode);
      }
    } on SocketException {
      return Error(ErrorCodes.NO_INTERNET);
    } on HttpException catch (e) {
      return Error(e.hashCode);
    } catch (e) {
      ErrorLogger().logErrorWithName(
        "NetworkStorage Error (addEmbeddings)",
        e.toString(),
      );
      return Error(ErrorCodes.EXCEPTION);
    }
  }

  Future<List<PlatformFile>> processImages(List<PlatformFile> files) async {
    return await compute(_processImagesInBackground, files);
  }

  Future<List<PlatformFile>> _processImagesInBackground(List<PlatformFile> files) async {
    List<PlatformFile> processedFiles = [];
    for (var file in files) {
      if (file.bytes == null) continue;
      //Uint8List compressedBytes = file.bytes!;//await compressImage(file.bytes!, file.name, 1920);
      Uint8List newestBytes = file.bytes!;//await compressImage2(compressedBytes, file.name, 50);
      processedFiles.add(
        PlatformFile(
          name: file.name,
          size: newestBytes.length,
          bytes: newestBytes,
        ),
      );
    }
    return processedFiles;
  }

  String getContentTypeFromFileExtension(String fileName) {
    final mimeType = lookupMimeType(fileName);
    return mimeType ?? 'application/octet-stream';
  }

  Future<Uint8List> compressImage(Uint8List originalBytes, String fileName, int maxSize) async {
    img.Image originalImage = img.decodeImage(originalBytes)!;
    int width = originalImage.width;
    int height = originalImage.height;
    double aspectRatio = width / height;
    if (aspectRatio > 1) {
      width = maxSize;
      height = (width / aspectRatio).toInt();
    } else {
      height = maxSize;
      width = (height * aspectRatio).toInt();
    }
    img.Image resizedImage = img.copyResize(originalImage, width: width, height: height);
    List<int> encodedImage = img.encodeJpg(resizedImage);
    return Uint8List.fromList(encodedImage);
  }

  Future<Uint8List> compressImage2(Uint8List originalBytes, String fileName, int quality) async {
    img.Image originalImage = img.decodeImage(originalBytes)!;
    List<int> encodedImage = img.encodeJpg(originalImage, quality: quality);
    return Uint8List.fromList(encodedImage);
  }
}