// domain/interactors/app_interactor.dart
import '/utils/result.dart';
import '../models/has_id.dart';
import '/utils/error_codes.dart';
import 'package:get_it/get_it.dart';
import '../models/room_domain.dart';
import '../models/group_domain.dart';
import '/utils/preferences_keys.dart';
import '../states/analytic_state.dart';
import '../models/subject_domain.dart';
import '../models/teacher_domain.dart';
import '../models/student_domain.dart';
import '../models/schedule_domain.dart';
import '../models/building_domain.dart';
import '../models/institute_domain.dart';
import '../models/attendance_domain.dart';
import '../models/department_domain.dart';
import '../repository/app_repository.dart';
import '../repository/admin_repository.dart';
import 'package:file_picker/file_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppInteractor {
  final appRepo = GetIt.instance<AppRepository>();
  final adminRepo = GetIt.instance<AdminRepository>();
  final analyticState = GetIt.instance<AnalyticState>();
  var sharedPreferences = GetIt.instance<SharedPreferences>();

  // Общие методы
  Future<Result<R>> _withHash<R>(Future<Result<R>> Function(String hash)action)
  async {
    final hash = sharedPreferences.getString(PreferencesKeys.USER_HASH);
    if (hash == null) return Error(ErrorCodes.SESSION_IS_CLOSED);
    return await action(hash);
  }

  Future<Result<List<T>>> _handleListUpdate<T>({
    required Future<Result<List<T>>> Function(String) repoCall,
    required void Function(List<T>) updateState,
  }) async {
    return _withHash<List<T>>((hash) async {
      final result = await repoCall(hash);
      result.whenSuccess(updateState);
      return result;
    });
  }

  Future<Result<List<T>>> _handleItemUpdate<T extends HasId>({
    required Future<Result<T>> Function(String) repoCall,
    required void Function(T) updateState,
    required List<T> currentList,
  }) async {
    return _withHash<List<T>>((hash) async {
      final result = await repoCall(hash);
      return result.when(
        success: (item) {
          updateState(item);
          final newList = _updateList(currentList, item);
          return Success(newList);
        },
        error: (e) => Error(e),
      );
    });
  }

  Future<Result<List<T>>> _handleItemDeletion<T extends HasId>({
    required Future<Result<bool>> Function(String) repoCall,
    required int id,
    required List<T> currentList,
    required void Function(int) updateState,
  }) async {
    return _withHash<List<T>>((hash) async {
      final result = await repoCall(hash);
      return result.when(
        success: (_) {
          updateState(id);
          final newList = _removeFromList(currentList, id);
          return Success(newList);
        },
        error: (e) => Error(e),
      );
    });
  }

  List<T> _updateList<T extends HasId>(List<T> list, T newItem) {
    final index = list.indexWhere((item) => item.id == newItem.id);
    if (index != -1) list[index] = newItem;
    return List.from(list);
  }

  List<T> _removeFromList<T extends HasId>(List<T> list, int id) {
    return list.where((item) => item.id != id).toList();
  }

  // Institute
  Future<Result<bool>> loadInstitutes() async {
    final result = await _handleListUpdate(
      repoCall: appRepo.getInstitutes,
      updateState: analyticState.addInstitutes,
    );
    return result.mapTo((_) => true);
  }

  Future<Result<List<InstituteDomain>>> loadAndReturnInstitutes() {
    return _handleListUpdate(
      repoCall: appRepo.getInstitutes,
      updateState: analyticState.addInstitutes,
    );
  }

  Future<Result<List<InstituteDomain>>> createInstitute(String name) {
    return _handleItemUpdate(
      repoCall: (hash) => adminRepo.createInstitute(hash, name),
      updateState: analyticState.addInstitute,
      currentList: analyticState.institutes,
    );
  }

  Future<Result<List<InstituteDomain>>> updateInstitute(int id,
      String name) {
    return _handleItemUpdate(
      repoCall: (hash) => adminRepo.updateInstitute(hash, id, name),
      updateState: analyticState.updateInstitute,
      currentList: analyticState.institutes,
    );
  }

  Future<Result<List<InstituteDomain>>> deleteInstitute(int id) {
    return _handleItemDeletion(
      repoCall: (hash) => adminRepo.deleteInstitute(hash, id),
      id: id,
      currentList: analyticState.institutes,
      updateState: analyticState.deleteInstitute,
    );
  }

  // Building
  Future<Result<List<BuildingDomain>>> loadBuildings() =>
      _withHash(adminRepo.getBuildings);

  Future<Result<List<BuildingDomain>>> createBuilding(List<BuildingDomain> list,
      String name, String address) {
    return _handleItemUpdate(
      repoCall: (hash) => adminRepo.createBuilding(hash, name, address),
      updateState: list.add,
      currentList: list,
    );
  }

  Future<Result<List<BuildingDomain>>> updateBuilding(List<BuildingDomain> list,
      int id, String name, String address) {
    return _handleItemUpdate(
      repoCall: (hash) => adminRepo.updateBuilding(hash, id, name, address),
      updateState: (item) {
        final index = list.indexWhere((e) => e.id == id);
        if (index != -1) {
          list[index] = item;
        }
      },
      currentList: list,
    );
  }

  Future<Result<List<BuildingDomain>>> deleteBuilding(List<BuildingDomain> list,
      int id) {
    return _handleItemDeletion(
      repoCall: (hash) => adminRepo.deleteBuilding(hash, id),
      id: id,
      currentList: list,
      updateState: (_) => list.removeWhere((e) => e.id == id),
    );
  }

  // Subject
  Future<Result<List<SubjectDomain>>> loadSubjects() =>
      _withHash(adminRepo.getSubjects);

  Future<Result<List<SubjectDomain>>> createSubject(List<SubjectDomain> list,
      String name) {
    return _handleItemUpdate(
      repoCall: (hash) => adminRepo.createSubject(hash, name),
      updateState: list.add,
      currentList: list,
    );
  }

  Future<Result<List<SubjectDomain>>> updateSubject(List<SubjectDomain> list,
      int id, String name) {
    return _handleItemUpdate(
      repoCall: (hash) => adminRepo.updateSubject(hash, id, name),
      updateState: (item) {
        final index = list.indexWhere((e) => e.id == id);
        if (index != -1) {
          list[index] = item;
        }
      },
      currentList: list,
    );
  }

  Future<Result<List<SubjectDomain>>> deleteSubject(List<SubjectDomain> list,
      int id) {
    return _handleItemDeletion(
      repoCall: (hash) => adminRepo.deleteSubject(hash, id),
      id: id,
      currentList: list,
      updateState: (_) => list.removeWhere((e) => e.id == id),
    );
  }

  // Room
  Future<Result<List<RoomDomain>>> getRooms(int buildingId) {
    return _withHash((hash) => adminRepo.getRooms(hash, buildingId));
  }

  Future<Result<List<RoomDomain>>> createRoom(List<RoomDomain> list,
      int buildingId, String number) {
    return _handleItemUpdate(
      repoCall: (hash) => adminRepo.createRoom(hash, buildingId, number),
      updateState: list.add,
      currentList: list,
    );
  }

  Future<Result<List<RoomDomain>>> updateRoom(List<RoomDomain> list, int id,
      int buildingId, String number) {
    return _handleItemUpdate(
      repoCall: (hash) => adminRepo.updateRoom(hash, id, buildingId, number),
      updateState: (item) {
        final index = list.indexWhere((e) => e.id == id);
        if (index != -1) {
          if (list[index].buildingId == item.buildingId) {
            list[index] = item;
          } else {
            list.removeAt(index);
          }
        }
      },
      currentList: list,
    );
  }

  Future<Result<List<RoomDomain>>> deleteRoom(List<RoomDomain> list, int id) {
    return _handleItemDeletion(
      repoCall: (hash) => adminRepo.deleteRoom(hash, id),
      id: id,
      currentList: list,
      updateState: (_) => list.removeWhere((e) => e.id == id),
    );
  }

  // Device
  Future<Result<List<RoomDomain>>> createDevice(List<RoomDomain> list,
      RoomDomain room) {
    return _handleItemUpdate(
      repoCall: (hash) => adminRepo.createDevice(hash, room),
      updateState: (item) {
        final index = list.indexWhere((e) => e.id == room.id);
        if (index != -1) {
          list[index] = item;
        }
      },
      currentList: list,
    );
  }

  Future<Result<List<RoomDomain>>> deleteDevice(List<RoomDomain> list,
      RoomDomain room) {
    return _handleItemUpdate(
      repoCall: (hash) => adminRepo.deleteDevice(hash, room),
      updateState: (item) {
        final index = list.indexWhere((e) => e.id == room.id);
        if (index != -1) {
          list[index] = item;
        }
      },
      currentList: list,
    );
  }

  // Department
  Future<Result<List<DepartmentDomain>>> getDepartments(int buildingId) {
    return _withHash((hash) => adminRepo.getDepartments(hash, buildingId));
  }

  Future<Result<List<DepartmentDomain>>> createDepartment(
      List<DepartmentDomain> list, int instituteId, String name) {
    return _handleItemUpdate(
      repoCall: (hash) => adminRepo.createDepartment(hash, instituteId, name),
      updateState: list.add,
      currentList: list,
    );
  }

  Future<Result<List<DepartmentDomain>>> updateDepartment(
      List<DepartmentDomain> list, int id, int instituteId, String name) {
    return _handleItemUpdate(
      repoCall: (hash) => adminRepo.updateDepartment(hash, id, instituteId,
          name),
      updateState: (item) {
        final index = list.indexWhere((e) => e.id == id);
        if (index != -1) {
          if (list[index].instituteId == item.instituteId) {
            list[index] = item;
          } else {
            list.removeAt(index);
          }
        }
      },
      currentList: list,
    );
  }

  Future<Result<List<DepartmentDomain>>> deleteDepartment(
      List<DepartmentDomain> list, int id) {
    return _handleItemDeletion(
      repoCall: (hash) => adminRepo.deleteDepartment(hash, id),
      id: id,
      currentList: list,
      updateState: (_) => list.removeWhere((e) => e.id == id),
    );
  }

  // Group
  Future<Result<List<GroupDomain>>> getGroups(int instituteId) {
    return _withHash((hash) => appRepo.getGroups(hash, instituteId));
  }

  Future<Result<List<GroupDomain>>> createGroup(List<GroupDomain> list,
      int instituteId, String name) {
    return _handleItemUpdate(
      repoCall: (hash) => adminRepo.createGroup(hash, instituteId, name),
      updateState: list.add,
      currentList: list,
    );
  }
  Future<Result<List<GroupDomain>>> updateGroup(List<GroupDomain> list, int id,
      int instituteId, String name) {
    return _handleItemUpdate(
      repoCall: (hash) => adminRepo.updateGroup(hash, id, instituteId,
          name),
      updateState: (item) {
        final index = list.indexWhere((e) => e.id == id);
        if (index != -1) {
          if (list[index].instituteId == item.instituteId) {
            list[index] = item;
          } else {
            list.removeAt(index);
          }
        }
      },
      currentList: list,
    );
  }

  Future<Result<List<GroupDomain>>> deleteGroup(List<GroupDomain> list,
      int id) {
    return _handleItemDeletion(
      repoCall: (hash) => adminRepo.deleteGroup(hash, id),
      id: id,
      currentList: list,
      updateState: (_) => list.removeWhere((e) => e.id == id),
    );
  }

  // Teacher
  Future<Result<List<TeacherDomain>>> getTeachers(int departmentId) {
    return _withHash((hash) => adminRepo.getTeachers(hash, departmentId));
  }

  Future<Result<List<TeacherDomain>>> createTeacher(List<TeacherDomain> list,
      int departmentId, String name, String email, String password) {
    return _handleItemUpdate(
      repoCall: (hash) => adminRepo.createTeacher(hash, departmentId, name,
          email, password),
      updateState: list.add,
      currentList: list,
    );
  }

  Future<Result<List<TeacherDomain>>> updateTeacher(List<TeacherDomain> list,
      int id, int departmentId, String name) {
    return _handleItemUpdate(
      repoCall: (hash) => adminRepo.updateTeacher(hash, id, departmentId,
          name),
      updateState: (item) {
        final index = list.indexWhere((e) => e.id == id);
        if (index != -1) {
          if (list[index].departmentId == item.departmentId) {
            list[index] = item;
          } else {
            list.removeAt(index);
          }
        }
      },
      currentList: list,
    );
  }

  Future<Result<List<TeacherDomain>>> deleteTeacher(List<TeacherDomain> list,
      int id) {
    return _handleItemDeletion(
      repoCall: (hash) => adminRepo.deleteTeacher(hash, id),
      id: id,
      currentList: list,
      updateState: (_) => list.removeWhere((e) => e.id == id),
    );
  }

  // Schedule
  Future<Result<List<ScheduleDomain>>> getGroupSchedule(int groupId,
      DateTime dateStart, DateTime dateEnd) {
    return _withHash((hash) => adminRepo.getGroupSchedule(hash, groupId,
        dateStart, dateEnd));
  }

  Future<Result<List<ScheduleDomain>>> getTeacherSchedule(int teacherId,
      DateTime dateStart, DateTime dateEnd) {
    return _withHash((hash) => adminRepo.getTeacherSchedule(hash, teacherId,
        dateStart, dateEnd));
  }

  Future<Result<List<ScheduleDomain>>> createSchedule(List<ScheduleDomain> list,
      bool byGroup, DateTime scheduleStart, DateTime scheduleEnd,
      DateTime timeStart, DateTime timeEnd, int groupId, int subjectId,
      int teacherId, int roomId) {
    return _handleItemUpdate(
      repoCall: (hash) => adminRepo.createSchedule(hash, timeStart, timeEnd,
          groupId, subjectId, teacherId, roomId),
      updateState: (item) {
        if (isTimeInRange(timeToCheck: item.timeStart,
            rangeStart: scheduleStart, rangeEnd: scheduleEnd)) {
          if (byGroup) {
            if (list.isNotEmpty && (list[0].groupId != item.groupId)) return;
          } else {
            if (list.isNotEmpty && (list[0].teacherId != item.teacherId)) return;
          }
          list.add(item);
        }
      },
      currentList: list,
    );
  }

  Future<Result<List<ScheduleDomain>>> updateSchedule(List<ScheduleDomain> list,
      bool byGroup, DateTime scheduleStart, DateTime scheduleEnd,
      int scheduleId, DateTime timeStart, DateTime timeEnd, int groupId,
      int subjectId, int teacherId, int roomId) {
    return _handleItemUpdate(
      repoCall: (hash) => adminRepo.updateSchedule(hash, scheduleId, timeStart,
          timeEnd, groupId, subjectId, teacherId, roomId),
      updateState: (item) {
        final index = list.indexWhere((e) => e.id == scheduleId);
        if (index != -1) {
          if (isTimeInRange(timeToCheck: item.timeStart,
              rangeStart: scheduleStart, rangeEnd: scheduleEnd)) {
            if (byGroup) {
              if (list[index].groupId == item.groupId) list[index] = item;
            } else {
              if (list[index].teacherId == item.teacherId) list[index] = item;
            }
          } else {
            list.removeAt(index);
          }
        }
      },
      currentList: list,
    );
  }

  Future<Result<List<ScheduleDomain>>> deleteSchedule(List<ScheduleDomain> list,
      int id) {
    return _handleItemDeletion(
      repoCall: (hash) => adminRepo.deleteSchedule(hash, id),
      id: id,
      currentList: list,
      updateState: (_) => list.removeWhere((e) => e.id == id),
    );
  }

  bool isTimeInRange({required DateTime timeToCheck,
    required DateTime rangeStart, required DateTime rangeEnd}) {
    return (timeToCheck.isAfter(rangeStart) || timeToCheck
        .isAtSameMomentAs(rangeStart)) && (timeToCheck.isBefore(rangeEnd) ||
        timeToCheck.isAtSameMomentAs(rangeEnd));
  }

  // Attendance
  Future<Result<List<AttendanceDomain>>> getAttendance(int scheduleId) {
    return _withHash((hash) => adminRepo.getAttendance(hash, scheduleId));
  }

  Future<Result<List<AttendanceDomain>>> setAttendance(
      List<AttendanceDomain> list, int scheduleId, int studentId,
      bool status) async {
    late Result<List<AttendanceDomain>> resultIt;
    Result<bool> result = await _withHash<bool>((hash) async {
      return await adminRepo.setAttendance(hash, scheduleId, studentId,
          status);
    });
    result.when(
      success: (data) {
        for (int i = 0; i < list.length; i++) {
          if (list[i].studentId == studentId) {
            list[i].status = status;
            break;
          }
        }
        resultIt = Success(list);
      },
      error: (code) {
        resultIt = Error(code);
      },
    );
    return resultIt;
  }

  // Student
  Future<Result<List<StudentDomain>>> getStudents(int groupId) {
    return _withHash((hash) => adminRepo.getStudents(hash, groupId));
  }

  Future<Result<List<StudentDomain>>> createStudent(List<StudentDomain> list,
      String name, String email, String password, int groupId) {
    return _handleItemUpdate(
      repoCall: (hash) => adminRepo.createStudent(hash, name, email, password,
          groupId),
      updateState: list.add,
      currentList: list,
    );
  }

  Future<Result<List<StudentDomain>>> updateStudent(List<StudentDomain> list,
      int id, int groupId, String name) {
    return _handleItemUpdate(
      repoCall: (hash) => adminRepo.updateStudent(hash, id, groupId, name),
      updateState: (item) {
        final index = list.indexWhere((e) => e.id == id);
        if (index != -1) {
          if (list[index].groupId == item.groupId) {
            list[index] = item;
          } else {
            list.removeAt(index);
          }
        }
      },
      currentList: list,
    );
  }

  Future<Result<List<StudentDomain>>> deleteStudent(List<StudentDomain> list,
      int id) {
    return _handleItemDeletion(
      repoCall: (hash) => adminRepo.deleteStudent(hash, id),
      id: id,
      currentList: list,
      updateState: (_) => list.removeWhere((e) => e.id == id),
    );
  }

  Future<Result<String>> addEmbeddings(int studentId, List<PlatformFile> files) async {
    late Result<String> resultIt;
    var result = await _withHash((hash) => adminRepo.addEmbeddings(hash,
        studentId, files));
    result.when(
      success: (data) {
        String res = "";
        for (var ind = 0; ind < data.length; ind++) {
          if (data[ind] != 0) {
            if (res.isEmpty) {
              res = (ind+1).toString();
            } else {
              res.compareTo(", ${ind + 1}");
            }
          }
        }
        resultIt = Success(res);
      },
      error: (code) {
        resultIt = Error(code);
      },
    );
    return resultIt;
  }
}