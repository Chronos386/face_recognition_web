// data/storage/network_storage_impl.dart
import 'dart:io';
import '/utils/result.dart';
import '/utils/logging.dart';
import 'package:dio/dio.dart';
import 'network_storage.dart';
import '/utils/error_codes.dart';
import '../models/user_dto/user_dto.dart';
import '../models/group_dto/group_dto.dart';
import '../models/statistic_dto/statistic_dto.dart';
import '../models/institute_dto/institute_dto.dart';
import '../models/top_student_dto/top_student_dto.dart';
import '../models/top_teachers_dto/top_teachers_dto.dart';
import '../models/institutes_stat_dto/institutes_stat_dto.dart';
import '../models/cluster_response_dto/cluster_response_dto.dart';
import '../models/top_group_absences_dto/top_group_absences_dto.dart';
import '../models/top_group_attendance_dto/top_group_attendance_dto.dart';

class NetworkStorageImpl implements NetworkStorage {
  final dio = Dio();
  final baseURL = "http://127.0.0.1:6583";

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

  @override
  Future<Result<List<GroupDTO>>> getGroupsByInstitute(String hash,
      int instituteId) async {
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
      funcName: 'getGroupsByInstitute',
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
}