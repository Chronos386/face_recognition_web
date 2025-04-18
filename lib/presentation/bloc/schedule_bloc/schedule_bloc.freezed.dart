// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScheduleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitial,
    required TResult Function(int instituteId) loadDepartments,
    required TResult Function(int departmentId) loadTeachers,
    required TResult Function(int instituteId) loadGroups,
    required TResult Function(int buildingId) loadRooms,
    required TResult Function(
            int teacherId, DateTime dateStart, DateTime dateEnd)
        loadTeacherSchedule,
    required TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)
        loadGroupSchedule,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)
        toLoaded,
    required TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)
        createSchedule,
    required TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)
        updateSchedule,
    required TResult Function(List<ScheduleModel> schedule, int scheduleId)
        deleteSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInitial,
    TResult? Function(int instituteId)? loadDepartments,
    TResult? Function(int departmentId)? loadTeachers,
    TResult? Function(int instituteId)? loadGroups,
    TResult? Function(int buildingId)? loadRooms,
    TResult? Function(int teacherId, DateTime dateStart, DateTime dateEnd)?
        loadTeacherSchedule,
    TResult? Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadGroupSchedule,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        toLoaded,
    TResult? Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        createSchedule,
    TResult? Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        updateSchedule,
    TResult? Function(List<ScheduleModel> schedule, int scheduleId)?
        deleteSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitial,
    TResult Function(int instituteId)? loadDepartments,
    TResult Function(int departmentId)? loadTeachers,
    TResult Function(int instituteId)? loadGroups,
    TResult Function(int buildingId)? loadRooms,
    TResult Function(int teacherId, DateTime dateStart, DateTime dateEnd)?
        loadTeacherSchedule,
    TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadGroupSchedule,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        toLoaded,
    TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        createSchedule,
    TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        updateSchedule,
    TResult Function(List<ScheduleModel> schedule, int scheduleId)?
        deleteSchedule,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEventLoadInitial value) loadInitial,
    required TResult Function(ScheduleEventLoadDepartments value)
        loadDepartments,
    required TResult Function(ScheduleEventLoadTeachers value) loadTeachers,
    required TResult Function(ScheduleEventLoadGroups value) loadGroups,
    required TResult Function(ScheduleEventLoadRooms value) loadRooms,
    required TResult Function(ScheduleEventLoadTeacherSchedule value)
        loadTeacherSchedule,
    required TResult Function(ScheduleEventLoadGroupSchedule value)
        loadGroupSchedule,
    required TResult Function(ScheduleEventToLoaded value) toLoaded,
    required TResult Function(ScheduleEventCreateSchedule value) createSchedule,
    required TResult Function(ScheduleEventUpdateSchedule value) updateSchedule,
    required TResult Function(ScheduleEventDeleteSchedule value) deleteSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEventLoadInitial value)? loadInitial,
    TResult? Function(ScheduleEventLoadDepartments value)? loadDepartments,
    TResult? Function(ScheduleEventLoadTeachers value)? loadTeachers,
    TResult? Function(ScheduleEventLoadGroups value)? loadGroups,
    TResult? Function(ScheduleEventLoadRooms value)? loadRooms,
    TResult? Function(ScheduleEventLoadTeacherSchedule value)?
        loadTeacherSchedule,
    TResult? Function(ScheduleEventLoadGroupSchedule value)? loadGroupSchedule,
    TResult? Function(ScheduleEventToLoaded value)? toLoaded,
    TResult? Function(ScheduleEventCreateSchedule value)? createSchedule,
    TResult? Function(ScheduleEventUpdateSchedule value)? updateSchedule,
    TResult? Function(ScheduleEventDeleteSchedule value)? deleteSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEventLoadInitial value)? loadInitial,
    TResult Function(ScheduleEventLoadDepartments value)? loadDepartments,
    TResult Function(ScheduleEventLoadTeachers value)? loadTeachers,
    TResult Function(ScheduleEventLoadGroups value)? loadGroups,
    TResult Function(ScheduleEventLoadRooms value)? loadRooms,
    TResult Function(ScheduleEventLoadTeacherSchedule value)?
        loadTeacherSchedule,
    TResult Function(ScheduleEventLoadGroupSchedule value)? loadGroupSchedule,
    TResult Function(ScheduleEventToLoaded value)? toLoaded,
    TResult Function(ScheduleEventCreateSchedule value)? createSchedule,
    TResult Function(ScheduleEventUpdateSchedule value)? updateSchedule,
    TResult Function(ScheduleEventDeleteSchedule value)? deleteSchedule,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEventCopyWith<$Res> {
  factory $ScheduleEventCopyWith(
          ScheduleEvent value, $Res Function(ScheduleEvent) then) =
      _$ScheduleEventCopyWithImpl<$Res, ScheduleEvent>;
}

/// @nodoc
class _$ScheduleEventCopyWithImpl<$Res, $Val extends ScheduleEvent>
    implements $ScheduleEventCopyWith<$Res> {
  _$ScheduleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ScheduleEventLoadInitialImplCopyWith<$Res> {
  factory _$$ScheduleEventLoadInitialImplCopyWith(
          _$ScheduleEventLoadInitialImpl value,
          $Res Function(_$ScheduleEventLoadInitialImpl) then) =
      __$$ScheduleEventLoadInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScheduleEventLoadInitialImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$ScheduleEventLoadInitialImpl>
    implements _$$ScheduleEventLoadInitialImplCopyWith<$Res> {
  __$$ScheduleEventLoadInitialImplCopyWithImpl(
      _$ScheduleEventLoadInitialImpl _value,
      $Res Function(_$ScheduleEventLoadInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ScheduleEventLoadInitialImpl implements ScheduleEventLoadInitial {
  const _$ScheduleEventLoadInitialImpl();

  @override
  String toString() {
    return 'ScheduleEvent.loadInitial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEventLoadInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitial,
    required TResult Function(int instituteId) loadDepartments,
    required TResult Function(int departmentId) loadTeachers,
    required TResult Function(int instituteId) loadGroups,
    required TResult Function(int buildingId) loadRooms,
    required TResult Function(
            int teacherId, DateTime dateStart, DateTime dateEnd)
        loadTeacherSchedule,
    required TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)
        loadGroupSchedule,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)
        toLoaded,
    required TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)
        createSchedule,
    required TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)
        updateSchedule,
    required TResult Function(List<ScheduleModel> schedule, int scheduleId)
        deleteSchedule,
  }) {
    return loadInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInitial,
    TResult? Function(int instituteId)? loadDepartments,
    TResult? Function(int departmentId)? loadTeachers,
    TResult? Function(int instituteId)? loadGroups,
    TResult? Function(int buildingId)? loadRooms,
    TResult? Function(int teacherId, DateTime dateStart, DateTime dateEnd)?
        loadTeacherSchedule,
    TResult? Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadGroupSchedule,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        toLoaded,
    TResult? Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        createSchedule,
    TResult? Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        updateSchedule,
    TResult? Function(List<ScheduleModel> schedule, int scheduleId)?
        deleteSchedule,
  }) {
    return loadInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitial,
    TResult Function(int instituteId)? loadDepartments,
    TResult Function(int departmentId)? loadTeachers,
    TResult Function(int instituteId)? loadGroups,
    TResult Function(int buildingId)? loadRooms,
    TResult Function(int teacherId, DateTime dateStart, DateTime dateEnd)?
        loadTeacherSchedule,
    TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadGroupSchedule,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        toLoaded,
    TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        createSchedule,
    TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        updateSchedule,
    TResult Function(List<ScheduleModel> schedule, int scheduleId)?
        deleteSchedule,
    required TResult orElse(),
  }) {
    if (loadInitial != null) {
      return loadInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEventLoadInitial value) loadInitial,
    required TResult Function(ScheduleEventLoadDepartments value)
        loadDepartments,
    required TResult Function(ScheduleEventLoadTeachers value) loadTeachers,
    required TResult Function(ScheduleEventLoadGroups value) loadGroups,
    required TResult Function(ScheduleEventLoadRooms value) loadRooms,
    required TResult Function(ScheduleEventLoadTeacherSchedule value)
        loadTeacherSchedule,
    required TResult Function(ScheduleEventLoadGroupSchedule value)
        loadGroupSchedule,
    required TResult Function(ScheduleEventToLoaded value) toLoaded,
    required TResult Function(ScheduleEventCreateSchedule value) createSchedule,
    required TResult Function(ScheduleEventUpdateSchedule value) updateSchedule,
    required TResult Function(ScheduleEventDeleteSchedule value) deleteSchedule,
  }) {
    return loadInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEventLoadInitial value)? loadInitial,
    TResult? Function(ScheduleEventLoadDepartments value)? loadDepartments,
    TResult? Function(ScheduleEventLoadTeachers value)? loadTeachers,
    TResult? Function(ScheduleEventLoadGroups value)? loadGroups,
    TResult? Function(ScheduleEventLoadRooms value)? loadRooms,
    TResult? Function(ScheduleEventLoadTeacherSchedule value)?
        loadTeacherSchedule,
    TResult? Function(ScheduleEventLoadGroupSchedule value)? loadGroupSchedule,
    TResult? Function(ScheduleEventToLoaded value)? toLoaded,
    TResult? Function(ScheduleEventCreateSchedule value)? createSchedule,
    TResult? Function(ScheduleEventUpdateSchedule value)? updateSchedule,
    TResult? Function(ScheduleEventDeleteSchedule value)? deleteSchedule,
  }) {
    return loadInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEventLoadInitial value)? loadInitial,
    TResult Function(ScheduleEventLoadDepartments value)? loadDepartments,
    TResult Function(ScheduleEventLoadTeachers value)? loadTeachers,
    TResult Function(ScheduleEventLoadGroups value)? loadGroups,
    TResult Function(ScheduleEventLoadRooms value)? loadRooms,
    TResult Function(ScheduleEventLoadTeacherSchedule value)?
        loadTeacherSchedule,
    TResult Function(ScheduleEventLoadGroupSchedule value)? loadGroupSchedule,
    TResult Function(ScheduleEventToLoaded value)? toLoaded,
    TResult Function(ScheduleEventCreateSchedule value)? createSchedule,
    TResult Function(ScheduleEventUpdateSchedule value)? updateSchedule,
    TResult Function(ScheduleEventDeleteSchedule value)? deleteSchedule,
    required TResult orElse(),
  }) {
    if (loadInitial != null) {
      return loadInitial(this);
    }
    return orElse();
  }
}

abstract class ScheduleEventLoadInitial implements ScheduleEvent {
  const factory ScheduleEventLoadInitial() = _$ScheduleEventLoadInitialImpl;
}

/// @nodoc
abstract class _$$ScheduleEventLoadDepartmentsImplCopyWith<$Res> {
  factory _$$ScheduleEventLoadDepartmentsImplCopyWith(
          _$ScheduleEventLoadDepartmentsImpl value,
          $Res Function(_$ScheduleEventLoadDepartmentsImpl) then) =
      __$$ScheduleEventLoadDepartmentsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int instituteId});
}

/// @nodoc
class __$$ScheduleEventLoadDepartmentsImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res,
        _$ScheduleEventLoadDepartmentsImpl>
    implements _$$ScheduleEventLoadDepartmentsImplCopyWith<$Res> {
  __$$ScheduleEventLoadDepartmentsImplCopyWithImpl(
      _$ScheduleEventLoadDepartmentsImpl _value,
      $Res Function(_$ScheduleEventLoadDepartmentsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instituteId = null,
  }) {
    return _then(_$ScheduleEventLoadDepartmentsImpl(
      instituteId: null == instituteId
          ? _value.instituteId
          : instituteId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ScheduleEventLoadDepartmentsImpl
    implements ScheduleEventLoadDepartments {
  const _$ScheduleEventLoadDepartmentsImpl({required this.instituteId});

  @override
  final int instituteId;

  @override
  String toString() {
    return 'ScheduleEvent.loadDepartments(instituteId: $instituteId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEventLoadDepartmentsImpl &&
            (identical(other.instituteId, instituteId) ||
                other.instituteId == instituteId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, instituteId);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEventLoadDepartmentsImplCopyWith<
          _$ScheduleEventLoadDepartmentsImpl>
      get copyWith => __$$ScheduleEventLoadDepartmentsImplCopyWithImpl<
          _$ScheduleEventLoadDepartmentsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitial,
    required TResult Function(int instituteId) loadDepartments,
    required TResult Function(int departmentId) loadTeachers,
    required TResult Function(int instituteId) loadGroups,
    required TResult Function(int buildingId) loadRooms,
    required TResult Function(
            int teacherId, DateTime dateStart, DateTime dateEnd)
        loadTeacherSchedule,
    required TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)
        loadGroupSchedule,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)
        toLoaded,
    required TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)
        createSchedule,
    required TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)
        updateSchedule,
    required TResult Function(List<ScheduleModel> schedule, int scheduleId)
        deleteSchedule,
  }) {
    return loadDepartments(instituteId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInitial,
    TResult? Function(int instituteId)? loadDepartments,
    TResult? Function(int departmentId)? loadTeachers,
    TResult? Function(int instituteId)? loadGroups,
    TResult? Function(int buildingId)? loadRooms,
    TResult? Function(int teacherId, DateTime dateStart, DateTime dateEnd)?
        loadTeacherSchedule,
    TResult? Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadGroupSchedule,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        toLoaded,
    TResult? Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        createSchedule,
    TResult? Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        updateSchedule,
    TResult? Function(List<ScheduleModel> schedule, int scheduleId)?
        deleteSchedule,
  }) {
    return loadDepartments?.call(instituteId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitial,
    TResult Function(int instituteId)? loadDepartments,
    TResult Function(int departmentId)? loadTeachers,
    TResult Function(int instituteId)? loadGroups,
    TResult Function(int buildingId)? loadRooms,
    TResult Function(int teacherId, DateTime dateStart, DateTime dateEnd)?
        loadTeacherSchedule,
    TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadGroupSchedule,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        toLoaded,
    TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        createSchedule,
    TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        updateSchedule,
    TResult Function(List<ScheduleModel> schedule, int scheduleId)?
        deleteSchedule,
    required TResult orElse(),
  }) {
    if (loadDepartments != null) {
      return loadDepartments(instituteId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEventLoadInitial value) loadInitial,
    required TResult Function(ScheduleEventLoadDepartments value)
        loadDepartments,
    required TResult Function(ScheduleEventLoadTeachers value) loadTeachers,
    required TResult Function(ScheduleEventLoadGroups value) loadGroups,
    required TResult Function(ScheduleEventLoadRooms value) loadRooms,
    required TResult Function(ScheduleEventLoadTeacherSchedule value)
        loadTeacherSchedule,
    required TResult Function(ScheduleEventLoadGroupSchedule value)
        loadGroupSchedule,
    required TResult Function(ScheduleEventToLoaded value) toLoaded,
    required TResult Function(ScheduleEventCreateSchedule value) createSchedule,
    required TResult Function(ScheduleEventUpdateSchedule value) updateSchedule,
    required TResult Function(ScheduleEventDeleteSchedule value) deleteSchedule,
  }) {
    return loadDepartments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEventLoadInitial value)? loadInitial,
    TResult? Function(ScheduleEventLoadDepartments value)? loadDepartments,
    TResult? Function(ScheduleEventLoadTeachers value)? loadTeachers,
    TResult? Function(ScheduleEventLoadGroups value)? loadGroups,
    TResult? Function(ScheduleEventLoadRooms value)? loadRooms,
    TResult? Function(ScheduleEventLoadTeacherSchedule value)?
        loadTeacherSchedule,
    TResult? Function(ScheduleEventLoadGroupSchedule value)? loadGroupSchedule,
    TResult? Function(ScheduleEventToLoaded value)? toLoaded,
    TResult? Function(ScheduleEventCreateSchedule value)? createSchedule,
    TResult? Function(ScheduleEventUpdateSchedule value)? updateSchedule,
    TResult? Function(ScheduleEventDeleteSchedule value)? deleteSchedule,
  }) {
    return loadDepartments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEventLoadInitial value)? loadInitial,
    TResult Function(ScheduleEventLoadDepartments value)? loadDepartments,
    TResult Function(ScheduleEventLoadTeachers value)? loadTeachers,
    TResult Function(ScheduleEventLoadGroups value)? loadGroups,
    TResult Function(ScheduleEventLoadRooms value)? loadRooms,
    TResult Function(ScheduleEventLoadTeacherSchedule value)?
        loadTeacherSchedule,
    TResult Function(ScheduleEventLoadGroupSchedule value)? loadGroupSchedule,
    TResult Function(ScheduleEventToLoaded value)? toLoaded,
    TResult Function(ScheduleEventCreateSchedule value)? createSchedule,
    TResult Function(ScheduleEventUpdateSchedule value)? updateSchedule,
    TResult Function(ScheduleEventDeleteSchedule value)? deleteSchedule,
    required TResult orElse(),
  }) {
    if (loadDepartments != null) {
      return loadDepartments(this);
    }
    return orElse();
  }
}

abstract class ScheduleEventLoadDepartments implements ScheduleEvent {
  const factory ScheduleEventLoadDepartments({required final int instituteId}) =
      _$ScheduleEventLoadDepartmentsImpl;

  int get instituteId;

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleEventLoadDepartmentsImplCopyWith<
          _$ScheduleEventLoadDepartmentsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleEventLoadTeachersImplCopyWith<$Res> {
  factory _$$ScheduleEventLoadTeachersImplCopyWith(
          _$ScheduleEventLoadTeachersImpl value,
          $Res Function(_$ScheduleEventLoadTeachersImpl) then) =
      __$$ScheduleEventLoadTeachersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int departmentId});
}

/// @nodoc
class __$$ScheduleEventLoadTeachersImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$ScheduleEventLoadTeachersImpl>
    implements _$$ScheduleEventLoadTeachersImplCopyWith<$Res> {
  __$$ScheduleEventLoadTeachersImplCopyWithImpl(
      _$ScheduleEventLoadTeachersImpl _value,
      $Res Function(_$ScheduleEventLoadTeachersImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departmentId = null,
  }) {
    return _then(_$ScheduleEventLoadTeachersImpl(
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ScheduleEventLoadTeachersImpl implements ScheduleEventLoadTeachers {
  const _$ScheduleEventLoadTeachersImpl({required this.departmentId});

  @override
  final int departmentId;

  @override
  String toString() {
    return 'ScheduleEvent.loadTeachers(departmentId: $departmentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEventLoadTeachersImpl &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, departmentId);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEventLoadTeachersImplCopyWith<_$ScheduleEventLoadTeachersImpl>
      get copyWith => __$$ScheduleEventLoadTeachersImplCopyWithImpl<
          _$ScheduleEventLoadTeachersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitial,
    required TResult Function(int instituteId) loadDepartments,
    required TResult Function(int departmentId) loadTeachers,
    required TResult Function(int instituteId) loadGroups,
    required TResult Function(int buildingId) loadRooms,
    required TResult Function(
            int teacherId, DateTime dateStart, DateTime dateEnd)
        loadTeacherSchedule,
    required TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)
        loadGroupSchedule,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)
        toLoaded,
    required TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)
        createSchedule,
    required TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)
        updateSchedule,
    required TResult Function(List<ScheduleModel> schedule, int scheduleId)
        deleteSchedule,
  }) {
    return loadTeachers(departmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInitial,
    TResult? Function(int instituteId)? loadDepartments,
    TResult? Function(int departmentId)? loadTeachers,
    TResult? Function(int instituteId)? loadGroups,
    TResult? Function(int buildingId)? loadRooms,
    TResult? Function(int teacherId, DateTime dateStart, DateTime dateEnd)?
        loadTeacherSchedule,
    TResult? Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadGroupSchedule,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        toLoaded,
    TResult? Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        createSchedule,
    TResult? Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        updateSchedule,
    TResult? Function(List<ScheduleModel> schedule, int scheduleId)?
        deleteSchedule,
  }) {
    return loadTeachers?.call(departmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitial,
    TResult Function(int instituteId)? loadDepartments,
    TResult Function(int departmentId)? loadTeachers,
    TResult Function(int instituteId)? loadGroups,
    TResult Function(int buildingId)? loadRooms,
    TResult Function(int teacherId, DateTime dateStart, DateTime dateEnd)?
        loadTeacherSchedule,
    TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadGroupSchedule,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        toLoaded,
    TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        createSchedule,
    TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        updateSchedule,
    TResult Function(List<ScheduleModel> schedule, int scheduleId)?
        deleteSchedule,
    required TResult orElse(),
  }) {
    if (loadTeachers != null) {
      return loadTeachers(departmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEventLoadInitial value) loadInitial,
    required TResult Function(ScheduleEventLoadDepartments value)
        loadDepartments,
    required TResult Function(ScheduleEventLoadTeachers value) loadTeachers,
    required TResult Function(ScheduleEventLoadGroups value) loadGroups,
    required TResult Function(ScheduleEventLoadRooms value) loadRooms,
    required TResult Function(ScheduleEventLoadTeacherSchedule value)
        loadTeacherSchedule,
    required TResult Function(ScheduleEventLoadGroupSchedule value)
        loadGroupSchedule,
    required TResult Function(ScheduleEventToLoaded value) toLoaded,
    required TResult Function(ScheduleEventCreateSchedule value) createSchedule,
    required TResult Function(ScheduleEventUpdateSchedule value) updateSchedule,
    required TResult Function(ScheduleEventDeleteSchedule value) deleteSchedule,
  }) {
    return loadTeachers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEventLoadInitial value)? loadInitial,
    TResult? Function(ScheduleEventLoadDepartments value)? loadDepartments,
    TResult? Function(ScheduleEventLoadTeachers value)? loadTeachers,
    TResult? Function(ScheduleEventLoadGroups value)? loadGroups,
    TResult? Function(ScheduleEventLoadRooms value)? loadRooms,
    TResult? Function(ScheduleEventLoadTeacherSchedule value)?
        loadTeacherSchedule,
    TResult? Function(ScheduleEventLoadGroupSchedule value)? loadGroupSchedule,
    TResult? Function(ScheduleEventToLoaded value)? toLoaded,
    TResult? Function(ScheduleEventCreateSchedule value)? createSchedule,
    TResult? Function(ScheduleEventUpdateSchedule value)? updateSchedule,
    TResult? Function(ScheduleEventDeleteSchedule value)? deleteSchedule,
  }) {
    return loadTeachers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEventLoadInitial value)? loadInitial,
    TResult Function(ScheduleEventLoadDepartments value)? loadDepartments,
    TResult Function(ScheduleEventLoadTeachers value)? loadTeachers,
    TResult Function(ScheduleEventLoadGroups value)? loadGroups,
    TResult Function(ScheduleEventLoadRooms value)? loadRooms,
    TResult Function(ScheduleEventLoadTeacherSchedule value)?
        loadTeacherSchedule,
    TResult Function(ScheduleEventLoadGroupSchedule value)? loadGroupSchedule,
    TResult Function(ScheduleEventToLoaded value)? toLoaded,
    TResult Function(ScheduleEventCreateSchedule value)? createSchedule,
    TResult Function(ScheduleEventUpdateSchedule value)? updateSchedule,
    TResult Function(ScheduleEventDeleteSchedule value)? deleteSchedule,
    required TResult orElse(),
  }) {
    if (loadTeachers != null) {
      return loadTeachers(this);
    }
    return orElse();
  }
}

abstract class ScheduleEventLoadTeachers implements ScheduleEvent {
  const factory ScheduleEventLoadTeachers({required final int departmentId}) =
      _$ScheduleEventLoadTeachersImpl;

  int get departmentId;

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleEventLoadTeachersImplCopyWith<_$ScheduleEventLoadTeachersImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleEventLoadGroupsImplCopyWith<$Res> {
  factory _$$ScheduleEventLoadGroupsImplCopyWith(
          _$ScheduleEventLoadGroupsImpl value,
          $Res Function(_$ScheduleEventLoadGroupsImpl) then) =
      __$$ScheduleEventLoadGroupsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int instituteId});
}

/// @nodoc
class __$$ScheduleEventLoadGroupsImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$ScheduleEventLoadGroupsImpl>
    implements _$$ScheduleEventLoadGroupsImplCopyWith<$Res> {
  __$$ScheduleEventLoadGroupsImplCopyWithImpl(
      _$ScheduleEventLoadGroupsImpl _value,
      $Res Function(_$ScheduleEventLoadGroupsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instituteId = null,
  }) {
    return _then(_$ScheduleEventLoadGroupsImpl(
      instituteId: null == instituteId
          ? _value.instituteId
          : instituteId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ScheduleEventLoadGroupsImpl implements ScheduleEventLoadGroups {
  const _$ScheduleEventLoadGroupsImpl({required this.instituteId});

  @override
  final int instituteId;

  @override
  String toString() {
    return 'ScheduleEvent.loadGroups(instituteId: $instituteId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEventLoadGroupsImpl &&
            (identical(other.instituteId, instituteId) ||
                other.instituteId == instituteId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, instituteId);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEventLoadGroupsImplCopyWith<_$ScheduleEventLoadGroupsImpl>
      get copyWith => __$$ScheduleEventLoadGroupsImplCopyWithImpl<
          _$ScheduleEventLoadGroupsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitial,
    required TResult Function(int instituteId) loadDepartments,
    required TResult Function(int departmentId) loadTeachers,
    required TResult Function(int instituteId) loadGroups,
    required TResult Function(int buildingId) loadRooms,
    required TResult Function(
            int teacherId, DateTime dateStart, DateTime dateEnd)
        loadTeacherSchedule,
    required TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)
        loadGroupSchedule,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)
        toLoaded,
    required TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)
        createSchedule,
    required TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)
        updateSchedule,
    required TResult Function(List<ScheduleModel> schedule, int scheduleId)
        deleteSchedule,
  }) {
    return loadGroups(instituteId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInitial,
    TResult? Function(int instituteId)? loadDepartments,
    TResult? Function(int departmentId)? loadTeachers,
    TResult? Function(int instituteId)? loadGroups,
    TResult? Function(int buildingId)? loadRooms,
    TResult? Function(int teacherId, DateTime dateStart, DateTime dateEnd)?
        loadTeacherSchedule,
    TResult? Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadGroupSchedule,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        toLoaded,
    TResult? Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        createSchedule,
    TResult? Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        updateSchedule,
    TResult? Function(List<ScheduleModel> schedule, int scheduleId)?
        deleteSchedule,
  }) {
    return loadGroups?.call(instituteId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitial,
    TResult Function(int instituteId)? loadDepartments,
    TResult Function(int departmentId)? loadTeachers,
    TResult Function(int instituteId)? loadGroups,
    TResult Function(int buildingId)? loadRooms,
    TResult Function(int teacherId, DateTime dateStart, DateTime dateEnd)?
        loadTeacherSchedule,
    TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadGroupSchedule,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        toLoaded,
    TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        createSchedule,
    TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        updateSchedule,
    TResult Function(List<ScheduleModel> schedule, int scheduleId)?
        deleteSchedule,
    required TResult orElse(),
  }) {
    if (loadGroups != null) {
      return loadGroups(instituteId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEventLoadInitial value) loadInitial,
    required TResult Function(ScheduleEventLoadDepartments value)
        loadDepartments,
    required TResult Function(ScheduleEventLoadTeachers value) loadTeachers,
    required TResult Function(ScheduleEventLoadGroups value) loadGroups,
    required TResult Function(ScheduleEventLoadRooms value) loadRooms,
    required TResult Function(ScheduleEventLoadTeacherSchedule value)
        loadTeacherSchedule,
    required TResult Function(ScheduleEventLoadGroupSchedule value)
        loadGroupSchedule,
    required TResult Function(ScheduleEventToLoaded value) toLoaded,
    required TResult Function(ScheduleEventCreateSchedule value) createSchedule,
    required TResult Function(ScheduleEventUpdateSchedule value) updateSchedule,
    required TResult Function(ScheduleEventDeleteSchedule value) deleteSchedule,
  }) {
    return loadGroups(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEventLoadInitial value)? loadInitial,
    TResult? Function(ScheduleEventLoadDepartments value)? loadDepartments,
    TResult? Function(ScheduleEventLoadTeachers value)? loadTeachers,
    TResult? Function(ScheduleEventLoadGroups value)? loadGroups,
    TResult? Function(ScheduleEventLoadRooms value)? loadRooms,
    TResult? Function(ScheduleEventLoadTeacherSchedule value)?
        loadTeacherSchedule,
    TResult? Function(ScheduleEventLoadGroupSchedule value)? loadGroupSchedule,
    TResult? Function(ScheduleEventToLoaded value)? toLoaded,
    TResult? Function(ScheduleEventCreateSchedule value)? createSchedule,
    TResult? Function(ScheduleEventUpdateSchedule value)? updateSchedule,
    TResult? Function(ScheduleEventDeleteSchedule value)? deleteSchedule,
  }) {
    return loadGroups?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEventLoadInitial value)? loadInitial,
    TResult Function(ScheduleEventLoadDepartments value)? loadDepartments,
    TResult Function(ScheduleEventLoadTeachers value)? loadTeachers,
    TResult Function(ScheduleEventLoadGroups value)? loadGroups,
    TResult Function(ScheduleEventLoadRooms value)? loadRooms,
    TResult Function(ScheduleEventLoadTeacherSchedule value)?
        loadTeacherSchedule,
    TResult Function(ScheduleEventLoadGroupSchedule value)? loadGroupSchedule,
    TResult Function(ScheduleEventToLoaded value)? toLoaded,
    TResult Function(ScheduleEventCreateSchedule value)? createSchedule,
    TResult Function(ScheduleEventUpdateSchedule value)? updateSchedule,
    TResult Function(ScheduleEventDeleteSchedule value)? deleteSchedule,
    required TResult orElse(),
  }) {
    if (loadGroups != null) {
      return loadGroups(this);
    }
    return orElse();
  }
}

abstract class ScheduleEventLoadGroups implements ScheduleEvent {
  const factory ScheduleEventLoadGroups({required final int instituteId}) =
      _$ScheduleEventLoadGroupsImpl;

  int get instituteId;

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleEventLoadGroupsImplCopyWith<_$ScheduleEventLoadGroupsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleEventLoadRoomsImplCopyWith<$Res> {
  factory _$$ScheduleEventLoadRoomsImplCopyWith(
          _$ScheduleEventLoadRoomsImpl value,
          $Res Function(_$ScheduleEventLoadRoomsImpl) then) =
      __$$ScheduleEventLoadRoomsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int buildingId});
}

/// @nodoc
class __$$ScheduleEventLoadRoomsImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$ScheduleEventLoadRoomsImpl>
    implements _$$ScheduleEventLoadRoomsImplCopyWith<$Res> {
  __$$ScheduleEventLoadRoomsImplCopyWithImpl(
      _$ScheduleEventLoadRoomsImpl _value,
      $Res Function(_$ScheduleEventLoadRoomsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildingId = null,
  }) {
    return _then(_$ScheduleEventLoadRoomsImpl(
      buildingId: null == buildingId
          ? _value.buildingId
          : buildingId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ScheduleEventLoadRoomsImpl implements ScheduleEventLoadRooms {
  const _$ScheduleEventLoadRoomsImpl({required this.buildingId});

  @override
  final int buildingId;

  @override
  String toString() {
    return 'ScheduleEvent.loadRooms(buildingId: $buildingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEventLoadRoomsImpl &&
            (identical(other.buildingId, buildingId) ||
                other.buildingId == buildingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, buildingId);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEventLoadRoomsImplCopyWith<_$ScheduleEventLoadRoomsImpl>
      get copyWith => __$$ScheduleEventLoadRoomsImplCopyWithImpl<
          _$ScheduleEventLoadRoomsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitial,
    required TResult Function(int instituteId) loadDepartments,
    required TResult Function(int departmentId) loadTeachers,
    required TResult Function(int instituteId) loadGroups,
    required TResult Function(int buildingId) loadRooms,
    required TResult Function(
            int teacherId, DateTime dateStart, DateTime dateEnd)
        loadTeacherSchedule,
    required TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)
        loadGroupSchedule,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)
        toLoaded,
    required TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)
        createSchedule,
    required TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)
        updateSchedule,
    required TResult Function(List<ScheduleModel> schedule, int scheduleId)
        deleteSchedule,
  }) {
    return loadRooms(buildingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInitial,
    TResult? Function(int instituteId)? loadDepartments,
    TResult? Function(int departmentId)? loadTeachers,
    TResult? Function(int instituteId)? loadGroups,
    TResult? Function(int buildingId)? loadRooms,
    TResult? Function(int teacherId, DateTime dateStart, DateTime dateEnd)?
        loadTeacherSchedule,
    TResult? Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadGroupSchedule,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        toLoaded,
    TResult? Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        createSchedule,
    TResult? Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        updateSchedule,
    TResult? Function(List<ScheduleModel> schedule, int scheduleId)?
        deleteSchedule,
  }) {
    return loadRooms?.call(buildingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitial,
    TResult Function(int instituteId)? loadDepartments,
    TResult Function(int departmentId)? loadTeachers,
    TResult Function(int instituteId)? loadGroups,
    TResult Function(int buildingId)? loadRooms,
    TResult Function(int teacherId, DateTime dateStart, DateTime dateEnd)?
        loadTeacherSchedule,
    TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadGroupSchedule,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        toLoaded,
    TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        createSchedule,
    TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        updateSchedule,
    TResult Function(List<ScheduleModel> schedule, int scheduleId)?
        deleteSchedule,
    required TResult orElse(),
  }) {
    if (loadRooms != null) {
      return loadRooms(buildingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEventLoadInitial value) loadInitial,
    required TResult Function(ScheduleEventLoadDepartments value)
        loadDepartments,
    required TResult Function(ScheduleEventLoadTeachers value) loadTeachers,
    required TResult Function(ScheduleEventLoadGroups value) loadGroups,
    required TResult Function(ScheduleEventLoadRooms value) loadRooms,
    required TResult Function(ScheduleEventLoadTeacherSchedule value)
        loadTeacherSchedule,
    required TResult Function(ScheduleEventLoadGroupSchedule value)
        loadGroupSchedule,
    required TResult Function(ScheduleEventToLoaded value) toLoaded,
    required TResult Function(ScheduleEventCreateSchedule value) createSchedule,
    required TResult Function(ScheduleEventUpdateSchedule value) updateSchedule,
    required TResult Function(ScheduleEventDeleteSchedule value) deleteSchedule,
  }) {
    return loadRooms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEventLoadInitial value)? loadInitial,
    TResult? Function(ScheduleEventLoadDepartments value)? loadDepartments,
    TResult? Function(ScheduleEventLoadTeachers value)? loadTeachers,
    TResult? Function(ScheduleEventLoadGroups value)? loadGroups,
    TResult? Function(ScheduleEventLoadRooms value)? loadRooms,
    TResult? Function(ScheduleEventLoadTeacherSchedule value)?
        loadTeacherSchedule,
    TResult? Function(ScheduleEventLoadGroupSchedule value)? loadGroupSchedule,
    TResult? Function(ScheduleEventToLoaded value)? toLoaded,
    TResult? Function(ScheduleEventCreateSchedule value)? createSchedule,
    TResult? Function(ScheduleEventUpdateSchedule value)? updateSchedule,
    TResult? Function(ScheduleEventDeleteSchedule value)? deleteSchedule,
  }) {
    return loadRooms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEventLoadInitial value)? loadInitial,
    TResult Function(ScheduleEventLoadDepartments value)? loadDepartments,
    TResult Function(ScheduleEventLoadTeachers value)? loadTeachers,
    TResult Function(ScheduleEventLoadGroups value)? loadGroups,
    TResult Function(ScheduleEventLoadRooms value)? loadRooms,
    TResult Function(ScheduleEventLoadTeacherSchedule value)?
        loadTeacherSchedule,
    TResult Function(ScheduleEventLoadGroupSchedule value)? loadGroupSchedule,
    TResult Function(ScheduleEventToLoaded value)? toLoaded,
    TResult Function(ScheduleEventCreateSchedule value)? createSchedule,
    TResult Function(ScheduleEventUpdateSchedule value)? updateSchedule,
    TResult Function(ScheduleEventDeleteSchedule value)? deleteSchedule,
    required TResult orElse(),
  }) {
    if (loadRooms != null) {
      return loadRooms(this);
    }
    return orElse();
  }
}

abstract class ScheduleEventLoadRooms implements ScheduleEvent {
  const factory ScheduleEventLoadRooms({required final int buildingId}) =
      _$ScheduleEventLoadRoomsImpl;

  int get buildingId;

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleEventLoadRoomsImplCopyWith<_$ScheduleEventLoadRoomsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleEventLoadTeacherScheduleImplCopyWith<$Res> {
  factory _$$ScheduleEventLoadTeacherScheduleImplCopyWith(
          _$ScheduleEventLoadTeacherScheduleImpl value,
          $Res Function(_$ScheduleEventLoadTeacherScheduleImpl) then) =
      __$$ScheduleEventLoadTeacherScheduleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int teacherId, DateTime dateStart, DateTime dateEnd});
}

/// @nodoc
class __$$ScheduleEventLoadTeacherScheduleImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res,
        _$ScheduleEventLoadTeacherScheduleImpl>
    implements _$$ScheduleEventLoadTeacherScheduleImplCopyWith<$Res> {
  __$$ScheduleEventLoadTeacherScheduleImplCopyWithImpl(
      _$ScheduleEventLoadTeacherScheduleImpl _value,
      $Res Function(_$ScheduleEventLoadTeacherScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacherId = null,
    Object? dateStart = null,
    Object? dateEnd = null,
  }) {
    return _then(_$ScheduleEventLoadTeacherScheduleImpl(
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int,
      dateStart: null == dateStart
          ? _value.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateEnd: null == dateEnd
          ? _value.dateEnd
          : dateEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ScheduleEventLoadTeacherScheduleImpl
    implements ScheduleEventLoadTeacherSchedule {
  const _$ScheduleEventLoadTeacherScheduleImpl(
      {required this.teacherId,
      required this.dateStart,
      required this.dateEnd});

  @override
  final int teacherId;
  @override
  final DateTime dateStart;
  @override
  final DateTime dateEnd;

  @override
  String toString() {
    return 'ScheduleEvent.loadTeacherSchedule(teacherId: $teacherId, dateStart: $dateStart, dateEnd: $dateEnd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEventLoadTeacherScheduleImpl &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId) &&
            (identical(other.dateStart, dateStart) ||
                other.dateStart == dateStart) &&
            (identical(other.dateEnd, dateEnd) || other.dateEnd == dateEnd));
  }

  @override
  int get hashCode => Object.hash(runtimeType, teacherId, dateStart, dateEnd);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEventLoadTeacherScheduleImplCopyWith<
          _$ScheduleEventLoadTeacherScheduleImpl>
      get copyWith => __$$ScheduleEventLoadTeacherScheduleImplCopyWithImpl<
          _$ScheduleEventLoadTeacherScheduleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitial,
    required TResult Function(int instituteId) loadDepartments,
    required TResult Function(int departmentId) loadTeachers,
    required TResult Function(int instituteId) loadGroups,
    required TResult Function(int buildingId) loadRooms,
    required TResult Function(
            int teacherId, DateTime dateStart, DateTime dateEnd)
        loadTeacherSchedule,
    required TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)
        loadGroupSchedule,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)
        toLoaded,
    required TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)
        createSchedule,
    required TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)
        updateSchedule,
    required TResult Function(List<ScheduleModel> schedule, int scheduleId)
        deleteSchedule,
  }) {
    return loadTeacherSchedule(teacherId, dateStart, dateEnd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInitial,
    TResult? Function(int instituteId)? loadDepartments,
    TResult? Function(int departmentId)? loadTeachers,
    TResult? Function(int instituteId)? loadGroups,
    TResult? Function(int buildingId)? loadRooms,
    TResult? Function(int teacherId, DateTime dateStart, DateTime dateEnd)?
        loadTeacherSchedule,
    TResult? Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadGroupSchedule,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        toLoaded,
    TResult? Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        createSchedule,
    TResult? Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        updateSchedule,
    TResult? Function(List<ScheduleModel> schedule, int scheduleId)?
        deleteSchedule,
  }) {
    return loadTeacherSchedule?.call(teacherId, dateStart, dateEnd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitial,
    TResult Function(int instituteId)? loadDepartments,
    TResult Function(int departmentId)? loadTeachers,
    TResult Function(int instituteId)? loadGroups,
    TResult Function(int buildingId)? loadRooms,
    TResult Function(int teacherId, DateTime dateStart, DateTime dateEnd)?
        loadTeacherSchedule,
    TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadGroupSchedule,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        toLoaded,
    TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        createSchedule,
    TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        updateSchedule,
    TResult Function(List<ScheduleModel> schedule, int scheduleId)?
        deleteSchedule,
    required TResult orElse(),
  }) {
    if (loadTeacherSchedule != null) {
      return loadTeacherSchedule(teacherId, dateStart, dateEnd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEventLoadInitial value) loadInitial,
    required TResult Function(ScheduleEventLoadDepartments value)
        loadDepartments,
    required TResult Function(ScheduleEventLoadTeachers value) loadTeachers,
    required TResult Function(ScheduleEventLoadGroups value) loadGroups,
    required TResult Function(ScheduleEventLoadRooms value) loadRooms,
    required TResult Function(ScheduleEventLoadTeacherSchedule value)
        loadTeacherSchedule,
    required TResult Function(ScheduleEventLoadGroupSchedule value)
        loadGroupSchedule,
    required TResult Function(ScheduleEventToLoaded value) toLoaded,
    required TResult Function(ScheduleEventCreateSchedule value) createSchedule,
    required TResult Function(ScheduleEventUpdateSchedule value) updateSchedule,
    required TResult Function(ScheduleEventDeleteSchedule value) deleteSchedule,
  }) {
    return loadTeacherSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEventLoadInitial value)? loadInitial,
    TResult? Function(ScheduleEventLoadDepartments value)? loadDepartments,
    TResult? Function(ScheduleEventLoadTeachers value)? loadTeachers,
    TResult? Function(ScheduleEventLoadGroups value)? loadGroups,
    TResult? Function(ScheduleEventLoadRooms value)? loadRooms,
    TResult? Function(ScheduleEventLoadTeacherSchedule value)?
        loadTeacherSchedule,
    TResult? Function(ScheduleEventLoadGroupSchedule value)? loadGroupSchedule,
    TResult? Function(ScheduleEventToLoaded value)? toLoaded,
    TResult? Function(ScheduleEventCreateSchedule value)? createSchedule,
    TResult? Function(ScheduleEventUpdateSchedule value)? updateSchedule,
    TResult? Function(ScheduleEventDeleteSchedule value)? deleteSchedule,
  }) {
    return loadTeacherSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEventLoadInitial value)? loadInitial,
    TResult Function(ScheduleEventLoadDepartments value)? loadDepartments,
    TResult Function(ScheduleEventLoadTeachers value)? loadTeachers,
    TResult Function(ScheduleEventLoadGroups value)? loadGroups,
    TResult Function(ScheduleEventLoadRooms value)? loadRooms,
    TResult Function(ScheduleEventLoadTeacherSchedule value)?
        loadTeacherSchedule,
    TResult Function(ScheduleEventLoadGroupSchedule value)? loadGroupSchedule,
    TResult Function(ScheduleEventToLoaded value)? toLoaded,
    TResult Function(ScheduleEventCreateSchedule value)? createSchedule,
    TResult Function(ScheduleEventUpdateSchedule value)? updateSchedule,
    TResult Function(ScheduleEventDeleteSchedule value)? deleteSchedule,
    required TResult orElse(),
  }) {
    if (loadTeacherSchedule != null) {
      return loadTeacherSchedule(this);
    }
    return orElse();
  }
}

abstract class ScheduleEventLoadTeacherSchedule implements ScheduleEvent {
  const factory ScheduleEventLoadTeacherSchedule(
          {required final int teacherId,
          required final DateTime dateStart,
          required final DateTime dateEnd}) =
      _$ScheduleEventLoadTeacherScheduleImpl;

  int get teacherId;
  DateTime get dateStart;
  DateTime get dateEnd;

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleEventLoadTeacherScheduleImplCopyWith<
          _$ScheduleEventLoadTeacherScheduleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleEventLoadGroupScheduleImplCopyWith<$Res> {
  factory _$$ScheduleEventLoadGroupScheduleImplCopyWith(
          _$ScheduleEventLoadGroupScheduleImpl value,
          $Res Function(_$ScheduleEventLoadGroupScheduleImpl) then) =
      __$$ScheduleEventLoadGroupScheduleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int groupId, DateTime dateStart, DateTime dateEnd});
}

/// @nodoc
class __$$ScheduleEventLoadGroupScheduleImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res,
        _$ScheduleEventLoadGroupScheduleImpl>
    implements _$$ScheduleEventLoadGroupScheduleImplCopyWith<$Res> {
  __$$ScheduleEventLoadGroupScheduleImplCopyWithImpl(
      _$ScheduleEventLoadGroupScheduleImpl _value,
      $Res Function(_$ScheduleEventLoadGroupScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? dateStart = null,
    Object? dateEnd = null,
  }) {
    return _then(_$ScheduleEventLoadGroupScheduleImpl(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      dateStart: null == dateStart
          ? _value.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateEnd: null == dateEnd
          ? _value.dateEnd
          : dateEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ScheduleEventLoadGroupScheduleImpl
    implements ScheduleEventLoadGroupSchedule {
  const _$ScheduleEventLoadGroupScheduleImpl(
      {required this.groupId, required this.dateStart, required this.dateEnd});

  @override
  final int groupId;
  @override
  final DateTime dateStart;
  @override
  final DateTime dateEnd;

  @override
  String toString() {
    return 'ScheduleEvent.loadGroupSchedule(groupId: $groupId, dateStart: $dateStart, dateEnd: $dateEnd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEventLoadGroupScheduleImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.dateStart, dateStart) ||
                other.dateStart == dateStart) &&
            (identical(other.dateEnd, dateEnd) || other.dateEnd == dateEnd));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupId, dateStart, dateEnd);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEventLoadGroupScheduleImplCopyWith<
          _$ScheduleEventLoadGroupScheduleImpl>
      get copyWith => __$$ScheduleEventLoadGroupScheduleImplCopyWithImpl<
          _$ScheduleEventLoadGroupScheduleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitial,
    required TResult Function(int instituteId) loadDepartments,
    required TResult Function(int departmentId) loadTeachers,
    required TResult Function(int instituteId) loadGroups,
    required TResult Function(int buildingId) loadRooms,
    required TResult Function(
            int teacherId, DateTime dateStart, DateTime dateEnd)
        loadTeacherSchedule,
    required TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)
        loadGroupSchedule,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)
        toLoaded,
    required TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)
        createSchedule,
    required TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)
        updateSchedule,
    required TResult Function(List<ScheduleModel> schedule, int scheduleId)
        deleteSchedule,
  }) {
    return loadGroupSchedule(groupId, dateStart, dateEnd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInitial,
    TResult? Function(int instituteId)? loadDepartments,
    TResult? Function(int departmentId)? loadTeachers,
    TResult? Function(int instituteId)? loadGroups,
    TResult? Function(int buildingId)? loadRooms,
    TResult? Function(int teacherId, DateTime dateStart, DateTime dateEnd)?
        loadTeacherSchedule,
    TResult? Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadGroupSchedule,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        toLoaded,
    TResult? Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        createSchedule,
    TResult? Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        updateSchedule,
    TResult? Function(List<ScheduleModel> schedule, int scheduleId)?
        deleteSchedule,
  }) {
    return loadGroupSchedule?.call(groupId, dateStart, dateEnd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitial,
    TResult Function(int instituteId)? loadDepartments,
    TResult Function(int departmentId)? loadTeachers,
    TResult Function(int instituteId)? loadGroups,
    TResult Function(int buildingId)? loadRooms,
    TResult Function(int teacherId, DateTime dateStart, DateTime dateEnd)?
        loadTeacherSchedule,
    TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadGroupSchedule,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        toLoaded,
    TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        createSchedule,
    TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        updateSchedule,
    TResult Function(List<ScheduleModel> schedule, int scheduleId)?
        deleteSchedule,
    required TResult orElse(),
  }) {
    if (loadGroupSchedule != null) {
      return loadGroupSchedule(groupId, dateStart, dateEnd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEventLoadInitial value) loadInitial,
    required TResult Function(ScheduleEventLoadDepartments value)
        loadDepartments,
    required TResult Function(ScheduleEventLoadTeachers value) loadTeachers,
    required TResult Function(ScheduleEventLoadGroups value) loadGroups,
    required TResult Function(ScheduleEventLoadRooms value) loadRooms,
    required TResult Function(ScheduleEventLoadTeacherSchedule value)
        loadTeacherSchedule,
    required TResult Function(ScheduleEventLoadGroupSchedule value)
        loadGroupSchedule,
    required TResult Function(ScheduleEventToLoaded value) toLoaded,
    required TResult Function(ScheduleEventCreateSchedule value) createSchedule,
    required TResult Function(ScheduleEventUpdateSchedule value) updateSchedule,
    required TResult Function(ScheduleEventDeleteSchedule value) deleteSchedule,
  }) {
    return loadGroupSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEventLoadInitial value)? loadInitial,
    TResult? Function(ScheduleEventLoadDepartments value)? loadDepartments,
    TResult? Function(ScheduleEventLoadTeachers value)? loadTeachers,
    TResult? Function(ScheduleEventLoadGroups value)? loadGroups,
    TResult? Function(ScheduleEventLoadRooms value)? loadRooms,
    TResult? Function(ScheduleEventLoadTeacherSchedule value)?
        loadTeacherSchedule,
    TResult? Function(ScheduleEventLoadGroupSchedule value)? loadGroupSchedule,
    TResult? Function(ScheduleEventToLoaded value)? toLoaded,
    TResult? Function(ScheduleEventCreateSchedule value)? createSchedule,
    TResult? Function(ScheduleEventUpdateSchedule value)? updateSchedule,
    TResult? Function(ScheduleEventDeleteSchedule value)? deleteSchedule,
  }) {
    return loadGroupSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEventLoadInitial value)? loadInitial,
    TResult Function(ScheduleEventLoadDepartments value)? loadDepartments,
    TResult Function(ScheduleEventLoadTeachers value)? loadTeachers,
    TResult Function(ScheduleEventLoadGroups value)? loadGroups,
    TResult Function(ScheduleEventLoadRooms value)? loadRooms,
    TResult Function(ScheduleEventLoadTeacherSchedule value)?
        loadTeacherSchedule,
    TResult Function(ScheduleEventLoadGroupSchedule value)? loadGroupSchedule,
    TResult Function(ScheduleEventToLoaded value)? toLoaded,
    TResult Function(ScheduleEventCreateSchedule value)? createSchedule,
    TResult Function(ScheduleEventUpdateSchedule value)? updateSchedule,
    TResult Function(ScheduleEventDeleteSchedule value)? deleteSchedule,
    required TResult orElse(),
  }) {
    if (loadGroupSchedule != null) {
      return loadGroupSchedule(this);
    }
    return orElse();
  }
}

abstract class ScheduleEventLoadGroupSchedule implements ScheduleEvent {
  const factory ScheduleEventLoadGroupSchedule(
      {required final int groupId,
      required final DateTime dateStart,
      required final DateTime dateEnd}) = _$ScheduleEventLoadGroupScheduleImpl;

  int get groupId;
  DateTime get dateStart;
  DateTime get dateEnd;

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleEventLoadGroupScheduleImplCopyWith<
          _$ScheduleEventLoadGroupScheduleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleEventToLoadedImplCopyWith<$Res> {
  factory _$$ScheduleEventToLoadedImplCopyWith(
          _$ScheduleEventToLoadedImpl value,
          $Res Function(_$ScheduleEventToLoadedImpl) then) =
      __$$ScheduleEventToLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<InstituteModel> institutes,
      InstituteModel? selectedInstitute,
      List<BuildingModel> buildings,
      BuildingModel? selectedBuilding,
      List<SubjectModel> subjects,
      SubjectModel? selectedSubject,
      List<DepartmentModel> departments,
      DepartmentModel? selectedDepartment,
      List<TeacherModel> teachers,
      TeacherModel? selectedTeacher,
      List<GroupModel> groups,
      GroupModel? selectedGroup,
      List<RoomModel> rooms,
      RoomModel? selectedRoom,
      List<ScheduleModel> schedule});
}

/// @nodoc
class __$$ScheduleEventToLoadedImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$ScheduleEventToLoadedImpl>
    implements _$$ScheduleEventToLoadedImplCopyWith<$Res> {
  __$$ScheduleEventToLoadedImplCopyWithImpl(_$ScheduleEventToLoadedImpl _value,
      $Res Function(_$ScheduleEventToLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? institutes = null,
    Object? selectedInstitute = freezed,
    Object? buildings = null,
    Object? selectedBuilding = freezed,
    Object? subjects = null,
    Object? selectedSubject = freezed,
    Object? departments = null,
    Object? selectedDepartment = freezed,
    Object? teachers = null,
    Object? selectedTeacher = freezed,
    Object? groups = null,
    Object? selectedGroup = freezed,
    Object? rooms = null,
    Object? selectedRoom = freezed,
    Object? schedule = null,
  }) {
    return _then(_$ScheduleEventToLoadedImpl(
      institutes: null == institutes
          ? _value._institutes
          : institutes // ignore: cast_nullable_to_non_nullable
              as List<InstituteModel>,
      selectedInstitute: freezed == selectedInstitute
          ? _value.selectedInstitute
          : selectedInstitute // ignore: cast_nullable_to_non_nullable
              as InstituteModel?,
      buildings: null == buildings
          ? _value._buildings
          : buildings // ignore: cast_nullable_to_non_nullable
              as List<BuildingModel>,
      selectedBuilding: freezed == selectedBuilding
          ? _value.selectedBuilding
          : selectedBuilding // ignore: cast_nullable_to_non_nullable
              as BuildingModel?,
      subjects: null == subjects
          ? _value._subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<SubjectModel>,
      selectedSubject: freezed == selectedSubject
          ? _value.selectedSubject
          : selectedSubject // ignore: cast_nullable_to_non_nullable
              as SubjectModel?,
      departments: null == departments
          ? _value._departments
          : departments // ignore: cast_nullable_to_non_nullable
              as List<DepartmentModel>,
      selectedDepartment: freezed == selectedDepartment
          ? _value.selectedDepartment
          : selectedDepartment // ignore: cast_nullable_to_non_nullable
              as DepartmentModel?,
      teachers: null == teachers
          ? _value._teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<TeacherModel>,
      selectedTeacher: freezed == selectedTeacher
          ? _value.selectedTeacher
          : selectedTeacher // ignore: cast_nullable_to_non_nullable
              as TeacherModel?,
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupModel>,
      selectedGroup: freezed == selectedGroup
          ? _value.selectedGroup
          : selectedGroup // ignore: cast_nullable_to_non_nullable
              as GroupModel?,
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>,
      selectedRoom: freezed == selectedRoom
          ? _value.selectedRoom
          : selectedRoom // ignore: cast_nullable_to_non_nullable
              as RoomModel?,
      schedule: null == schedule
          ? _value._schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<ScheduleModel>,
    ));
  }
}

/// @nodoc

class _$ScheduleEventToLoadedImpl implements ScheduleEventToLoaded {
  const _$ScheduleEventToLoadedImpl(
      {required final List<InstituteModel> institutes,
      required this.selectedInstitute,
      required final List<BuildingModel> buildings,
      required this.selectedBuilding,
      required final List<SubjectModel> subjects,
      required this.selectedSubject,
      required final List<DepartmentModel> departments,
      required this.selectedDepartment,
      required final List<TeacherModel> teachers,
      required this.selectedTeacher,
      required final List<GroupModel> groups,
      required this.selectedGroup,
      required final List<RoomModel> rooms,
      required this.selectedRoom,
      required final List<ScheduleModel> schedule})
      : _institutes = institutes,
        _buildings = buildings,
        _subjects = subjects,
        _departments = departments,
        _teachers = teachers,
        _groups = groups,
        _rooms = rooms,
        _schedule = schedule;

  final List<InstituteModel> _institutes;
  @override
  List<InstituteModel> get institutes {
    if (_institutes is EqualUnmodifiableListView) return _institutes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_institutes);
  }

  @override
  final InstituteModel? selectedInstitute;
  final List<BuildingModel> _buildings;
  @override
  List<BuildingModel> get buildings {
    if (_buildings is EqualUnmodifiableListView) return _buildings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_buildings);
  }

  @override
  final BuildingModel? selectedBuilding;
  final List<SubjectModel> _subjects;
  @override
  List<SubjectModel> get subjects {
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subjects);
  }

  @override
  final SubjectModel? selectedSubject;
  final List<DepartmentModel> _departments;
  @override
  List<DepartmentModel> get departments {
    if (_departments is EqualUnmodifiableListView) return _departments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_departments);
  }

  @override
  final DepartmentModel? selectedDepartment;
  final List<TeacherModel> _teachers;
  @override
  List<TeacherModel> get teachers {
    if (_teachers is EqualUnmodifiableListView) return _teachers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teachers);
  }

  @override
  final TeacherModel? selectedTeacher;
  final List<GroupModel> _groups;
  @override
  List<GroupModel> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  final GroupModel? selectedGroup;
  final List<RoomModel> _rooms;
  @override
  List<RoomModel> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  final RoomModel? selectedRoom;
  final List<ScheduleModel> _schedule;
  @override
  List<ScheduleModel> get schedule {
    if (_schedule is EqualUnmodifiableListView) return _schedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedule);
  }

  @override
  String toString() {
    return 'ScheduleEvent.toLoaded(institutes: $institutes, selectedInstitute: $selectedInstitute, buildings: $buildings, selectedBuilding: $selectedBuilding, subjects: $subjects, selectedSubject: $selectedSubject, departments: $departments, selectedDepartment: $selectedDepartment, teachers: $teachers, selectedTeacher: $selectedTeacher, groups: $groups, selectedGroup: $selectedGroup, rooms: $rooms, selectedRoom: $selectedRoom, schedule: $schedule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEventToLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._institutes, _institutes) &&
            (identical(other.selectedInstitute, selectedInstitute) ||
                other.selectedInstitute == selectedInstitute) &&
            const DeepCollectionEquality()
                .equals(other._buildings, _buildings) &&
            (identical(other.selectedBuilding, selectedBuilding) ||
                other.selectedBuilding == selectedBuilding) &&
            const DeepCollectionEquality().equals(other._subjects, _subjects) &&
            (identical(other.selectedSubject, selectedSubject) ||
                other.selectedSubject == selectedSubject) &&
            const DeepCollectionEquality()
                .equals(other._departments, _departments) &&
            (identical(other.selectedDepartment, selectedDepartment) ||
                other.selectedDepartment == selectedDepartment) &&
            const DeepCollectionEquality().equals(other._teachers, _teachers) &&
            (identical(other.selectedTeacher, selectedTeacher) ||
                other.selectedTeacher == selectedTeacher) &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            (identical(other.selectedGroup, selectedGroup) ||
                other.selectedGroup == selectedGroup) &&
            const DeepCollectionEquality().equals(other._rooms, _rooms) &&
            (identical(other.selectedRoom, selectedRoom) ||
                other.selectedRoom == selectedRoom) &&
            const DeepCollectionEquality().equals(other._schedule, _schedule));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_institutes),
      selectedInstitute,
      const DeepCollectionEquality().hash(_buildings),
      selectedBuilding,
      const DeepCollectionEquality().hash(_subjects),
      selectedSubject,
      const DeepCollectionEquality().hash(_departments),
      selectedDepartment,
      const DeepCollectionEquality().hash(_teachers),
      selectedTeacher,
      const DeepCollectionEquality().hash(_groups),
      selectedGroup,
      const DeepCollectionEquality().hash(_rooms),
      selectedRoom,
      const DeepCollectionEquality().hash(_schedule));

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEventToLoadedImplCopyWith<_$ScheduleEventToLoadedImpl>
      get copyWith => __$$ScheduleEventToLoadedImplCopyWithImpl<
          _$ScheduleEventToLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitial,
    required TResult Function(int instituteId) loadDepartments,
    required TResult Function(int departmentId) loadTeachers,
    required TResult Function(int instituteId) loadGroups,
    required TResult Function(int buildingId) loadRooms,
    required TResult Function(
            int teacherId, DateTime dateStart, DateTime dateEnd)
        loadTeacherSchedule,
    required TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)
        loadGroupSchedule,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)
        toLoaded,
    required TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)
        createSchedule,
    required TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)
        updateSchedule,
    required TResult Function(List<ScheduleModel> schedule, int scheduleId)
        deleteSchedule,
  }) {
    return toLoaded(
        institutes,
        selectedInstitute,
        buildings,
        selectedBuilding,
        subjects,
        selectedSubject,
        departments,
        selectedDepartment,
        teachers,
        selectedTeacher,
        groups,
        selectedGroup,
        rooms,
        selectedRoom,
        schedule);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInitial,
    TResult? Function(int instituteId)? loadDepartments,
    TResult? Function(int departmentId)? loadTeachers,
    TResult? Function(int instituteId)? loadGroups,
    TResult? Function(int buildingId)? loadRooms,
    TResult? Function(int teacherId, DateTime dateStart, DateTime dateEnd)?
        loadTeacherSchedule,
    TResult? Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadGroupSchedule,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        toLoaded,
    TResult? Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        createSchedule,
    TResult? Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        updateSchedule,
    TResult? Function(List<ScheduleModel> schedule, int scheduleId)?
        deleteSchedule,
  }) {
    return toLoaded?.call(
        institutes,
        selectedInstitute,
        buildings,
        selectedBuilding,
        subjects,
        selectedSubject,
        departments,
        selectedDepartment,
        teachers,
        selectedTeacher,
        groups,
        selectedGroup,
        rooms,
        selectedRoom,
        schedule);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitial,
    TResult Function(int instituteId)? loadDepartments,
    TResult Function(int departmentId)? loadTeachers,
    TResult Function(int instituteId)? loadGroups,
    TResult Function(int buildingId)? loadRooms,
    TResult Function(int teacherId, DateTime dateStart, DateTime dateEnd)?
        loadTeacherSchedule,
    TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadGroupSchedule,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        toLoaded,
    TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        createSchedule,
    TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        updateSchedule,
    TResult Function(List<ScheduleModel> schedule, int scheduleId)?
        deleteSchedule,
    required TResult orElse(),
  }) {
    if (toLoaded != null) {
      return toLoaded(
          institutes,
          selectedInstitute,
          buildings,
          selectedBuilding,
          subjects,
          selectedSubject,
          departments,
          selectedDepartment,
          teachers,
          selectedTeacher,
          groups,
          selectedGroup,
          rooms,
          selectedRoom,
          schedule);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEventLoadInitial value) loadInitial,
    required TResult Function(ScheduleEventLoadDepartments value)
        loadDepartments,
    required TResult Function(ScheduleEventLoadTeachers value) loadTeachers,
    required TResult Function(ScheduleEventLoadGroups value) loadGroups,
    required TResult Function(ScheduleEventLoadRooms value) loadRooms,
    required TResult Function(ScheduleEventLoadTeacherSchedule value)
        loadTeacherSchedule,
    required TResult Function(ScheduleEventLoadGroupSchedule value)
        loadGroupSchedule,
    required TResult Function(ScheduleEventToLoaded value) toLoaded,
    required TResult Function(ScheduleEventCreateSchedule value) createSchedule,
    required TResult Function(ScheduleEventUpdateSchedule value) updateSchedule,
    required TResult Function(ScheduleEventDeleteSchedule value) deleteSchedule,
  }) {
    return toLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEventLoadInitial value)? loadInitial,
    TResult? Function(ScheduleEventLoadDepartments value)? loadDepartments,
    TResult? Function(ScheduleEventLoadTeachers value)? loadTeachers,
    TResult? Function(ScheduleEventLoadGroups value)? loadGroups,
    TResult? Function(ScheduleEventLoadRooms value)? loadRooms,
    TResult? Function(ScheduleEventLoadTeacherSchedule value)?
        loadTeacherSchedule,
    TResult? Function(ScheduleEventLoadGroupSchedule value)? loadGroupSchedule,
    TResult? Function(ScheduleEventToLoaded value)? toLoaded,
    TResult? Function(ScheduleEventCreateSchedule value)? createSchedule,
    TResult? Function(ScheduleEventUpdateSchedule value)? updateSchedule,
    TResult? Function(ScheduleEventDeleteSchedule value)? deleteSchedule,
  }) {
    return toLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEventLoadInitial value)? loadInitial,
    TResult Function(ScheduleEventLoadDepartments value)? loadDepartments,
    TResult Function(ScheduleEventLoadTeachers value)? loadTeachers,
    TResult Function(ScheduleEventLoadGroups value)? loadGroups,
    TResult Function(ScheduleEventLoadRooms value)? loadRooms,
    TResult Function(ScheduleEventLoadTeacherSchedule value)?
        loadTeacherSchedule,
    TResult Function(ScheduleEventLoadGroupSchedule value)? loadGroupSchedule,
    TResult Function(ScheduleEventToLoaded value)? toLoaded,
    TResult Function(ScheduleEventCreateSchedule value)? createSchedule,
    TResult Function(ScheduleEventUpdateSchedule value)? updateSchedule,
    TResult Function(ScheduleEventDeleteSchedule value)? deleteSchedule,
    required TResult orElse(),
  }) {
    if (toLoaded != null) {
      return toLoaded(this);
    }
    return orElse();
  }
}

abstract class ScheduleEventToLoaded implements ScheduleEvent {
  const factory ScheduleEventToLoaded(
          {required final List<InstituteModel> institutes,
          required final InstituteModel? selectedInstitute,
          required final List<BuildingModel> buildings,
          required final BuildingModel? selectedBuilding,
          required final List<SubjectModel> subjects,
          required final SubjectModel? selectedSubject,
          required final List<DepartmentModel> departments,
          required final DepartmentModel? selectedDepartment,
          required final List<TeacherModel> teachers,
          required final TeacherModel? selectedTeacher,
          required final List<GroupModel> groups,
          required final GroupModel? selectedGroup,
          required final List<RoomModel> rooms,
          required final RoomModel? selectedRoom,
          required final List<ScheduleModel> schedule}) =
      _$ScheduleEventToLoadedImpl;

  List<InstituteModel> get institutes;
  InstituteModel? get selectedInstitute;
  List<BuildingModel> get buildings;
  BuildingModel? get selectedBuilding;
  List<SubjectModel> get subjects;
  SubjectModel? get selectedSubject;
  List<DepartmentModel> get departments;
  DepartmentModel? get selectedDepartment;
  List<TeacherModel> get teachers;
  TeacherModel? get selectedTeacher;
  List<GroupModel> get groups;
  GroupModel? get selectedGroup;
  List<RoomModel> get rooms;
  RoomModel? get selectedRoom;
  List<ScheduleModel> get schedule;

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleEventToLoadedImplCopyWith<_$ScheduleEventToLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleEventCreateScheduleImplCopyWith<$Res> {
  factory _$$ScheduleEventCreateScheduleImplCopyWith(
          _$ScheduleEventCreateScheduleImpl value,
          $Res Function(_$ScheduleEventCreateScheduleImpl) then) =
      __$$ScheduleEventCreateScheduleImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ScheduleModel> schedule,
      bool byGroup,
      DateTime scheduleStart,
      DateTime scheduleEnd,
      DateTime timeStart,
      DateTime timeEnd,
      int groupId,
      int subjectId,
      int teacherId,
      int roomId});
}

/// @nodoc
class __$$ScheduleEventCreateScheduleImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$ScheduleEventCreateScheduleImpl>
    implements _$$ScheduleEventCreateScheduleImplCopyWith<$Res> {
  __$$ScheduleEventCreateScheduleImplCopyWithImpl(
      _$ScheduleEventCreateScheduleImpl _value,
      $Res Function(_$ScheduleEventCreateScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedule = null,
    Object? byGroup = null,
    Object? scheduleStart = null,
    Object? scheduleEnd = null,
    Object? timeStart = null,
    Object? timeEnd = null,
    Object? groupId = null,
    Object? subjectId = null,
    Object? teacherId = null,
    Object? roomId = null,
  }) {
    return _then(_$ScheduleEventCreateScheduleImpl(
      schedule: null == schedule
          ? _value._schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<ScheduleModel>,
      byGroup: null == byGroup
          ? _value.byGroup
          : byGroup // ignore: cast_nullable_to_non_nullable
              as bool,
      scheduleStart: null == scheduleStart
          ? _value.scheduleStart
          : scheduleStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduleEnd: null == scheduleEnd
          ? _value.scheduleEnd
          : scheduleEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeStart: null == timeStart
          ? _value.timeStart
          : timeStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeEnd: null == timeEnd
          ? _value.timeEnd
          : timeEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int,
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ScheduleEventCreateScheduleImpl implements ScheduleEventCreateSchedule {
  const _$ScheduleEventCreateScheduleImpl(
      {required final List<ScheduleModel> schedule,
      required this.byGroup,
      required this.scheduleStart,
      required this.scheduleEnd,
      required this.timeStart,
      required this.timeEnd,
      required this.groupId,
      required this.subjectId,
      required this.teacherId,
      required this.roomId})
      : _schedule = schedule;

  final List<ScheduleModel> _schedule;
  @override
  List<ScheduleModel> get schedule {
    if (_schedule is EqualUnmodifiableListView) return _schedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedule);
  }

  @override
  final bool byGroup;
  @override
  final DateTime scheduleStart;
  @override
  final DateTime scheduleEnd;
  @override
  final DateTime timeStart;
  @override
  final DateTime timeEnd;
  @override
  final int groupId;
  @override
  final int subjectId;
  @override
  final int teacherId;
  @override
  final int roomId;

  @override
  String toString() {
    return 'ScheduleEvent.createSchedule(schedule: $schedule, byGroup: $byGroup, scheduleStart: $scheduleStart, scheduleEnd: $scheduleEnd, timeStart: $timeStart, timeEnd: $timeEnd, groupId: $groupId, subjectId: $subjectId, teacherId: $teacherId, roomId: $roomId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEventCreateScheduleImpl &&
            const DeepCollectionEquality().equals(other._schedule, _schedule) &&
            (identical(other.byGroup, byGroup) || other.byGroup == byGroup) &&
            (identical(other.scheduleStart, scheduleStart) ||
                other.scheduleStart == scheduleStart) &&
            (identical(other.scheduleEnd, scheduleEnd) ||
                other.scheduleEnd == scheduleEnd) &&
            (identical(other.timeStart, timeStart) ||
                other.timeStart == timeStart) &&
            (identical(other.timeEnd, timeEnd) || other.timeEnd == timeEnd) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId) &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_schedule),
      byGroup,
      scheduleStart,
      scheduleEnd,
      timeStart,
      timeEnd,
      groupId,
      subjectId,
      teacherId,
      roomId);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEventCreateScheduleImplCopyWith<_$ScheduleEventCreateScheduleImpl>
      get copyWith => __$$ScheduleEventCreateScheduleImplCopyWithImpl<
          _$ScheduleEventCreateScheduleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitial,
    required TResult Function(int instituteId) loadDepartments,
    required TResult Function(int departmentId) loadTeachers,
    required TResult Function(int instituteId) loadGroups,
    required TResult Function(int buildingId) loadRooms,
    required TResult Function(
            int teacherId, DateTime dateStart, DateTime dateEnd)
        loadTeacherSchedule,
    required TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)
        loadGroupSchedule,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)
        toLoaded,
    required TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)
        createSchedule,
    required TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)
        updateSchedule,
    required TResult Function(List<ScheduleModel> schedule, int scheduleId)
        deleteSchedule,
  }) {
    return createSchedule(schedule, byGroup, scheduleStart, scheduleEnd,
        timeStart, timeEnd, groupId, subjectId, teacherId, roomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInitial,
    TResult? Function(int instituteId)? loadDepartments,
    TResult? Function(int departmentId)? loadTeachers,
    TResult? Function(int instituteId)? loadGroups,
    TResult? Function(int buildingId)? loadRooms,
    TResult? Function(int teacherId, DateTime dateStart, DateTime dateEnd)?
        loadTeacherSchedule,
    TResult? Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadGroupSchedule,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        toLoaded,
    TResult? Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        createSchedule,
    TResult? Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        updateSchedule,
    TResult? Function(List<ScheduleModel> schedule, int scheduleId)?
        deleteSchedule,
  }) {
    return createSchedule?.call(schedule, byGroup, scheduleStart, scheduleEnd,
        timeStart, timeEnd, groupId, subjectId, teacherId, roomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitial,
    TResult Function(int instituteId)? loadDepartments,
    TResult Function(int departmentId)? loadTeachers,
    TResult Function(int instituteId)? loadGroups,
    TResult Function(int buildingId)? loadRooms,
    TResult Function(int teacherId, DateTime dateStart, DateTime dateEnd)?
        loadTeacherSchedule,
    TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadGroupSchedule,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        toLoaded,
    TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        createSchedule,
    TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        updateSchedule,
    TResult Function(List<ScheduleModel> schedule, int scheduleId)?
        deleteSchedule,
    required TResult orElse(),
  }) {
    if (createSchedule != null) {
      return createSchedule(schedule, byGroup, scheduleStart, scheduleEnd,
          timeStart, timeEnd, groupId, subjectId, teacherId, roomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEventLoadInitial value) loadInitial,
    required TResult Function(ScheduleEventLoadDepartments value)
        loadDepartments,
    required TResult Function(ScheduleEventLoadTeachers value) loadTeachers,
    required TResult Function(ScheduleEventLoadGroups value) loadGroups,
    required TResult Function(ScheduleEventLoadRooms value) loadRooms,
    required TResult Function(ScheduleEventLoadTeacherSchedule value)
        loadTeacherSchedule,
    required TResult Function(ScheduleEventLoadGroupSchedule value)
        loadGroupSchedule,
    required TResult Function(ScheduleEventToLoaded value) toLoaded,
    required TResult Function(ScheduleEventCreateSchedule value) createSchedule,
    required TResult Function(ScheduleEventUpdateSchedule value) updateSchedule,
    required TResult Function(ScheduleEventDeleteSchedule value) deleteSchedule,
  }) {
    return createSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEventLoadInitial value)? loadInitial,
    TResult? Function(ScheduleEventLoadDepartments value)? loadDepartments,
    TResult? Function(ScheduleEventLoadTeachers value)? loadTeachers,
    TResult? Function(ScheduleEventLoadGroups value)? loadGroups,
    TResult? Function(ScheduleEventLoadRooms value)? loadRooms,
    TResult? Function(ScheduleEventLoadTeacherSchedule value)?
        loadTeacherSchedule,
    TResult? Function(ScheduleEventLoadGroupSchedule value)? loadGroupSchedule,
    TResult? Function(ScheduleEventToLoaded value)? toLoaded,
    TResult? Function(ScheduleEventCreateSchedule value)? createSchedule,
    TResult? Function(ScheduleEventUpdateSchedule value)? updateSchedule,
    TResult? Function(ScheduleEventDeleteSchedule value)? deleteSchedule,
  }) {
    return createSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEventLoadInitial value)? loadInitial,
    TResult Function(ScheduleEventLoadDepartments value)? loadDepartments,
    TResult Function(ScheduleEventLoadTeachers value)? loadTeachers,
    TResult Function(ScheduleEventLoadGroups value)? loadGroups,
    TResult Function(ScheduleEventLoadRooms value)? loadRooms,
    TResult Function(ScheduleEventLoadTeacherSchedule value)?
        loadTeacherSchedule,
    TResult Function(ScheduleEventLoadGroupSchedule value)? loadGroupSchedule,
    TResult Function(ScheduleEventToLoaded value)? toLoaded,
    TResult Function(ScheduleEventCreateSchedule value)? createSchedule,
    TResult Function(ScheduleEventUpdateSchedule value)? updateSchedule,
    TResult Function(ScheduleEventDeleteSchedule value)? deleteSchedule,
    required TResult orElse(),
  }) {
    if (createSchedule != null) {
      return createSchedule(this);
    }
    return orElse();
  }
}

abstract class ScheduleEventCreateSchedule implements ScheduleEvent {
  const factory ScheduleEventCreateSchedule(
      {required final List<ScheduleModel> schedule,
      required final bool byGroup,
      required final DateTime scheduleStart,
      required final DateTime scheduleEnd,
      required final DateTime timeStart,
      required final DateTime timeEnd,
      required final int groupId,
      required final int subjectId,
      required final int teacherId,
      required final int roomId}) = _$ScheduleEventCreateScheduleImpl;

  List<ScheduleModel> get schedule;
  bool get byGroup;
  DateTime get scheduleStart;
  DateTime get scheduleEnd;
  DateTime get timeStart;
  DateTime get timeEnd;
  int get groupId;
  int get subjectId;
  int get teacherId;
  int get roomId;

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleEventCreateScheduleImplCopyWith<_$ScheduleEventCreateScheduleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleEventUpdateScheduleImplCopyWith<$Res> {
  factory _$$ScheduleEventUpdateScheduleImplCopyWith(
          _$ScheduleEventUpdateScheduleImpl value,
          $Res Function(_$ScheduleEventUpdateScheduleImpl) then) =
      __$$ScheduleEventUpdateScheduleImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ScheduleModel> schedule,
      bool byGroup,
      DateTime scheduleStart,
      DateTime scheduleEnd,
      DateTime timeStart,
      DateTime timeEnd,
      int scheduleId,
      int groupId,
      int subjectId,
      int teacherId,
      int roomId});
}

/// @nodoc
class __$$ScheduleEventUpdateScheduleImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$ScheduleEventUpdateScheduleImpl>
    implements _$$ScheduleEventUpdateScheduleImplCopyWith<$Res> {
  __$$ScheduleEventUpdateScheduleImplCopyWithImpl(
      _$ScheduleEventUpdateScheduleImpl _value,
      $Res Function(_$ScheduleEventUpdateScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedule = null,
    Object? byGroup = null,
    Object? scheduleStart = null,
    Object? scheduleEnd = null,
    Object? timeStart = null,
    Object? timeEnd = null,
    Object? scheduleId = null,
    Object? groupId = null,
    Object? subjectId = null,
    Object? teacherId = null,
    Object? roomId = null,
  }) {
    return _then(_$ScheduleEventUpdateScheduleImpl(
      schedule: null == schedule
          ? _value._schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<ScheduleModel>,
      byGroup: null == byGroup
          ? _value.byGroup
          : byGroup // ignore: cast_nullable_to_non_nullable
              as bool,
      scheduleStart: null == scheduleStart
          ? _value.scheduleStart
          : scheduleStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduleEnd: null == scheduleEnd
          ? _value.scheduleEnd
          : scheduleEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeStart: null == timeStart
          ? _value.timeStart
          : timeStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeEnd: null == timeEnd
          ? _value.timeEnd
          : timeEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as int,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int,
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ScheduleEventUpdateScheduleImpl implements ScheduleEventUpdateSchedule {
  const _$ScheduleEventUpdateScheduleImpl(
      {required final List<ScheduleModel> schedule,
      required this.byGroup,
      required this.scheduleStart,
      required this.scheduleEnd,
      required this.timeStart,
      required this.timeEnd,
      required this.scheduleId,
      required this.groupId,
      required this.subjectId,
      required this.teacherId,
      required this.roomId})
      : _schedule = schedule;

  final List<ScheduleModel> _schedule;
  @override
  List<ScheduleModel> get schedule {
    if (_schedule is EqualUnmodifiableListView) return _schedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedule);
  }

  @override
  final bool byGroup;
  @override
  final DateTime scheduleStart;
  @override
  final DateTime scheduleEnd;
  @override
  final DateTime timeStart;
  @override
  final DateTime timeEnd;
  @override
  final int scheduleId;
  @override
  final int groupId;
  @override
  final int subjectId;
  @override
  final int teacherId;
  @override
  final int roomId;

  @override
  String toString() {
    return 'ScheduleEvent.updateSchedule(schedule: $schedule, byGroup: $byGroup, scheduleStart: $scheduleStart, scheduleEnd: $scheduleEnd, timeStart: $timeStart, timeEnd: $timeEnd, scheduleId: $scheduleId, groupId: $groupId, subjectId: $subjectId, teacherId: $teacherId, roomId: $roomId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEventUpdateScheduleImpl &&
            const DeepCollectionEquality().equals(other._schedule, _schedule) &&
            (identical(other.byGroup, byGroup) || other.byGroup == byGroup) &&
            (identical(other.scheduleStart, scheduleStart) ||
                other.scheduleStart == scheduleStart) &&
            (identical(other.scheduleEnd, scheduleEnd) ||
                other.scheduleEnd == scheduleEnd) &&
            (identical(other.timeStart, timeStart) ||
                other.timeStart == timeStart) &&
            (identical(other.timeEnd, timeEnd) || other.timeEnd == timeEnd) &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId) &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_schedule),
      byGroup,
      scheduleStart,
      scheduleEnd,
      timeStart,
      timeEnd,
      scheduleId,
      groupId,
      subjectId,
      teacherId,
      roomId);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEventUpdateScheduleImplCopyWith<_$ScheduleEventUpdateScheduleImpl>
      get copyWith => __$$ScheduleEventUpdateScheduleImplCopyWithImpl<
          _$ScheduleEventUpdateScheduleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitial,
    required TResult Function(int instituteId) loadDepartments,
    required TResult Function(int departmentId) loadTeachers,
    required TResult Function(int instituteId) loadGroups,
    required TResult Function(int buildingId) loadRooms,
    required TResult Function(
            int teacherId, DateTime dateStart, DateTime dateEnd)
        loadTeacherSchedule,
    required TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)
        loadGroupSchedule,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)
        toLoaded,
    required TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)
        createSchedule,
    required TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)
        updateSchedule,
    required TResult Function(List<ScheduleModel> schedule, int scheduleId)
        deleteSchedule,
  }) {
    return updateSchedule(schedule, byGroup, scheduleStart, scheduleEnd,
        timeStart, timeEnd, scheduleId, groupId, subjectId, teacherId, roomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInitial,
    TResult? Function(int instituteId)? loadDepartments,
    TResult? Function(int departmentId)? loadTeachers,
    TResult? Function(int instituteId)? loadGroups,
    TResult? Function(int buildingId)? loadRooms,
    TResult? Function(int teacherId, DateTime dateStart, DateTime dateEnd)?
        loadTeacherSchedule,
    TResult? Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadGroupSchedule,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        toLoaded,
    TResult? Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        createSchedule,
    TResult? Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        updateSchedule,
    TResult? Function(List<ScheduleModel> schedule, int scheduleId)?
        deleteSchedule,
  }) {
    return updateSchedule?.call(schedule, byGroup, scheduleStart, scheduleEnd,
        timeStart, timeEnd, scheduleId, groupId, subjectId, teacherId, roomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitial,
    TResult Function(int instituteId)? loadDepartments,
    TResult Function(int departmentId)? loadTeachers,
    TResult Function(int instituteId)? loadGroups,
    TResult Function(int buildingId)? loadRooms,
    TResult Function(int teacherId, DateTime dateStart, DateTime dateEnd)?
        loadTeacherSchedule,
    TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadGroupSchedule,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        toLoaded,
    TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        createSchedule,
    TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        updateSchedule,
    TResult Function(List<ScheduleModel> schedule, int scheduleId)?
        deleteSchedule,
    required TResult orElse(),
  }) {
    if (updateSchedule != null) {
      return updateSchedule(
          schedule,
          byGroup,
          scheduleStart,
          scheduleEnd,
          timeStart,
          timeEnd,
          scheduleId,
          groupId,
          subjectId,
          teacherId,
          roomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEventLoadInitial value) loadInitial,
    required TResult Function(ScheduleEventLoadDepartments value)
        loadDepartments,
    required TResult Function(ScheduleEventLoadTeachers value) loadTeachers,
    required TResult Function(ScheduleEventLoadGroups value) loadGroups,
    required TResult Function(ScheduleEventLoadRooms value) loadRooms,
    required TResult Function(ScheduleEventLoadTeacherSchedule value)
        loadTeacherSchedule,
    required TResult Function(ScheduleEventLoadGroupSchedule value)
        loadGroupSchedule,
    required TResult Function(ScheduleEventToLoaded value) toLoaded,
    required TResult Function(ScheduleEventCreateSchedule value) createSchedule,
    required TResult Function(ScheduleEventUpdateSchedule value) updateSchedule,
    required TResult Function(ScheduleEventDeleteSchedule value) deleteSchedule,
  }) {
    return updateSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEventLoadInitial value)? loadInitial,
    TResult? Function(ScheduleEventLoadDepartments value)? loadDepartments,
    TResult? Function(ScheduleEventLoadTeachers value)? loadTeachers,
    TResult? Function(ScheduleEventLoadGroups value)? loadGroups,
    TResult? Function(ScheduleEventLoadRooms value)? loadRooms,
    TResult? Function(ScheduleEventLoadTeacherSchedule value)?
        loadTeacherSchedule,
    TResult? Function(ScheduleEventLoadGroupSchedule value)? loadGroupSchedule,
    TResult? Function(ScheduleEventToLoaded value)? toLoaded,
    TResult? Function(ScheduleEventCreateSchedule value)? createSchedule,
    TResult? Function(ScheduleEventUpdateSchedule value)? updateSchedule,
    TResult? Function(ScheduleEventDeleteSchedule value)? deleteSchedule,
  }) {
    return updateSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEventLoadInitial value)? loadInitial,
    TResult Function(ScheduleEventLoadDepartments value)? loadDepartments,
    TResult Function(ScheduleEventLoadTeachers value)? loadTeachers,
    TResult Function(ScheduleEventLoadGroups value)? loadGroups,
    TResult Function(ScheduleEventLoadRooms value)? loadRooms,
    TResult Function(ScheduleEventLoadTeacherSchedule value)?
        loadTeacherSchedule,
    TResult Function(ScheduleEventLoadGroupSchedule value)? loadGroupSchedule,
    TResult Function(ScheduleEventToLoaded value)? toLoaded,
    TResult Function(ScheduleEventCreateSchedule value)? createSchedule,
    TResult Function(ScheduleEventUpdateSchedule value)? updateSchedule,
    TResult Function(ScheduleEventDeleteSchedule value)? deleteSchedule,
    required TResult orElse(),
  }) {
    if (updateSchedule != null) {
      return updateSchedule(this);
    }
    return orElse();
  }
}

abstract class ScheduleEventUpdateSchedule implements ScheduleEvent {
  const factory ScheduleEventUpdateSchedule(
      {required final List<ScheduleModel> schedule,
      required final bool byGroup,
      required final DateTime scheduleStart,
      required final DateTime scheduleEnd,
      required final DateTime timeStart,
      required final DateTime timeEnd,
      required final int scheduleId,
      required final int groupId,
      required final int subjectId,
      required final int teacherId,
      required final int roomId}) = _$ScheduleEventUpdateScheduleImpl;

  List<ScheduleModel> get schedule;
  bool get byGroup;
  DateTime get scheduleStart;
  DateTime get scheduleEnd;
  DateTime get timeStart;
  DateTime get timeEnd;
  int get scheduleId;
  int get groupId;
  int get subjectId;
  int get teacherId;
  int get roomId;

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleEventUpdateScheduleImplCopyWith<_$ScheduleEventUpdateScheduleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleEventDeleteScheduleImplCopyWith<$Res> {
  factory _$$ScheduleEventDeleteScheduleImplCopyWith(
          _$ScheduleEventDeleteScheduleImpl value,
          $Res Function(_$ScheduleEventDeleteScheduleImpl) then) =
      __$$ScheduleEventDeleteScheduleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ScheduleModel> schedule, int scheduleId});
}

/// @nodoc
class __$$ScheduleEventDeleteScheduleImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$ScheduleEventDeleteScheduleImpl>
    implements _$$ScheduleEventDeleteScheduleImplCopyWith<$Res> {
  __$$ScheduleEventDeleteScheduleImplCopyWithImpl(
      _$ScheduleEventDeleteScheduleImpl _value,
      $Res Function(_$ScheduleEventDeleteScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedule = null,
    Object? scheduleId = null,
  }) {
    return _then(_$ScheduleEventDeleteScheduleImpl(
      schedule: null == schedule
          ? _value._schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<ScheduleModel>,
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ScheduleEventDeleteScheduleImpl implements ScheduleEventDeleteSchedule {
  const _$ScheduleEventDeleteScheduleImpl(
      {required final List<ScheduleModel> schedule, required this.scheduleId})
      : _schedule = schedule;

  final List<ScheduleModel> _schedule;
  @override
  List<ScheduleModel> get schedule {
    if (_schedule is EqualUnmodifiableListView) return _schedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedule);
  }

  @override
  final int scheduleId;

  @override
  String toString() {
    return 'ScheduleEvent.deleteSchedule(schedule: $schedule, scheduleId: $scheduleId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEventDeleteScheduleImpl &&
            const DeepCollectionEquality().equals(other._schedule, _schedule) &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_schedule), scheduleId);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEventDeleteScheduleImplCopyWith<_$ScheduleEventDeleteScheduleImpl>
      get copyWith => __$$ScheduleEventDeleteScheduleImplCopyWithImpl<
          _$ScheduleEventDeleteScheduleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitial,
    required TResult Function(int instituteId) loadDepartments,
    required TResult Function(int departmentId) loadTeachers,
    required TResult Function(int instituteId) loadGroups,
    required TResult Function(int buildingId) loadRooms,
    required TResult Function(
            int teacherId, DateTime dateStart, DateTime dateEnd)
        loadTeacherSchedule,
    required TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)
        loadGroupSchedule,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)
        toLoaded,
    required TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)
        createSchedule,
    required TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)
        updateSchedule,
    required TResult Function(List<ScheduleModel> schedule, int scheduleId)
        deleteSchedule,
  }) {
    return deleteSchedule(schedule, scheduleId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInitial,
    TResult? Function(int instituteId)? loadDepartments,
    TResult? Function(int departmentId)? loadTeachers,
    TResult? Function(int instituteId)? loadGroups,
    TResult? Function(int buildingId)? loadRooms,
    TResult? Function(int teacherId, DateTime dateStart, DateTime dateEnd)?
        loadTeacherSchedule,
    TResult? Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadGroupSchedule,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        toLoaded,
    TResult? Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        createSchedule,
    TResult? Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        updateSchedule,
    TResult? Function(List<ScheduleModel> schedule, int scheduleId)?
        deleteSchedule,
  }) {
    return deleteSchedule?.call(schedule, scheduleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitial,
    TResult Function(int instituteId)? loadDepartments,
    TResult Function(int departmentId)? loadTeachers,
    TResult Function(int instituteId)? loadGroups,
    TResult Function(int buildingId)? loadRooms,
    TResult Function(int teacherId, DateTime dateStart, DateTime dateEnd)?
        loadTeacherSchedule,
    TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadGroupSchedule,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        toLoaded,
    TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        createSchedule,
    TResult Function(
            List<ScheduleModel> schedule,
            bool byGroup,
            DateTime scheduleStart,
            DateTime scheduleEnd,
            DateTime timeStart,
            DateTime timeEnd,
            int scheduleId,
            int groupId,
            int subjectId,
            int teacherId,
            int roomId)?
        updateSchedule,
    TResult Function(List<ScheduleModel> schedule, int scheduleId)?
        deleteSchedule,
    required TResult orElse(),
  }) {
    if (deleteSchedule != null) {
      return deleteSchedule(schedule, scheduleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEventLoadInitial value) loadInitial,
    required TResult Function(ScheduleEventLoadDepartments value)
        loadDepartments,
    required TResult Function(ScheduleEventLoadTeachers value) loadTeachers,
    required TResult Function(ScheduleEventLoadGroups value) loadGroups,
    required TResult Function(ScheduleEventLoadRooms value) loadRooms,
    required TResult Function(ScheduleEventLoadTeacherSchedule value)
        loadTeacherSchedule,
    required TResult Function(ScheduleEventLoadGroupSchedule value)
        loadGroupSchedule,
    required TResult Function(ScheduleEventToLoaded value) toLoaded,
    required TResult Function(ScheduleEventCreateSchedule value) createSchedule,
    required TResult Function(ScheduleEventUpdateSchedule value) updateSchedule,
    required TResult Function(ScheduleEventDeleteSchedule value) deleteSchedule,
  }) {
    return deleteSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleEventLoadInitial value)? loadInitial,
    TResult? Function(ScheduleEventLoadDepartments value)? loadDepartments,
    TResult? Function(ScheduleEventLoadTeachers value)? loadTeachers,
    TResult? Function(ScheduleEventLoadGroups value)? loadGroups,
    TResult? Function(ScheduleEventLoadRooms value)? loadRooms,
    TResult? Function(ScheduleEventLoadTeacherSchedule value)?
        loadTeacherSchedule,
    TResult? Function(ScheduleEventLoadGroupSchedule value)? loadGroupSchedule,
    TResult? Function(ScheduleEventToLoaded value)? toLoaded,
    TResult? Function(ScheduleEventCreateSchedule value)? createSchedule,
    TResult? Function(ScheduleEventUpdateSchedule value)? updateSchedule,
    TResult? Function(ScheduleEventDeleteSchedule value)? deleteSchedule,
  }) {
    return deleteSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEventLoadInitial value)? loadInitial,
    TResult Function(ScheduleEventLoadDepartments value)? loadDepartments,
    TResult Function(ScheduleEventLoadTeachers value)? loadTeachers,
    TResult Function(ScheduleEventLoadGroups value)? loadGroups,
    TResult Function(ScheduleEventLoadRooms value)? loadRooms,
    TResult Function(ScheduleEventLoadTeacherSchedule value)?
        loadTeacherSchedule,
    TResult Function(ScheduleEventLoadGroupSchedule value)? loadGroupSchedule,
    TResult Function(ScheduleEventToLoaded value)? toLoaded,
    TResult Function(ScheduleEventCreateSchedule value)? createSchedule,
    TResult Function(ScheduleEventUpdateSchedule value)? updateSchedule,
    TResult Function(ScheduleEventDeleteSchedule value)? deleteSchedule,
    required TResult orElse(),
  }) {
    if (deleteSchedule != null) {
      return deleteSchedule(this);
    }
    return orElse();
  }
}

abstract class ScheduleEventDeleteSchedule implements ScheduleEvent {
  const factory ScheduleEventDeleteSchedule(
      {required final List<ScheduleModel> schedule,
      required final int scheduleId}) = _$ScheduleEventDeleteScheduleImpl;

  List<ScheduleModel> get schedule;
  int get scheduleId;

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleEventDeleteScheduleImplCopyWith<_$ScheduleEventDeleteScheduleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScheduleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startLoading,
    required TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)
        startLoaded,
    required TResult Function() loadingDepartments,
    required TResult Function(List<DepartmentModel> departments)
        loadedDepartments,
    required TResult Function() loadingTeachers,
    required TResult Function(List<TeacherModel> teachers) loadedTeachers,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function() loadingRooms,
    required TResult Function(List<RoomModel> rooms) loadedRooms,
    required TResult Function() loadingSchedule,
    required TResult Function(List<ScheduleModel> schedule) loadedSchedule,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startLoading,
    TResult? Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult? Function()? loadingDepartments,
    TResult? Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult? Function()? loadingTeachers,
    TResult? Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult? Function()? loadingGroups,
    TResult? Function(List<GroupModel> groups)? loadedGroups,
    TResult? Function()? loadingRooms,
    TResult? Function(List<RoomModel> rooms)? loadedRooms,
    TResult? Function()? loadingSchedule,
    TResult? Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startLoading,
    TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult Function()? loadingDepartments,
    TResult Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult Function()? loadingTeachers,
    TResult Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult Function()? loadingGroups,
    TResult Function(List<GroupModel> groups)? loadedGroups,
    TResult Function()? loadingRooms,
    TResult Function(List<RoomModel> rooms)? loadedRooms,
    TResult Function()? loadingSchedule,
    TResult Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleStateStartLoading value) startLoading,
    required TResult Function(ScheduleStateStartLoaded value) startLoaded,
    required TResult Function(ScheduleStateLoadingDepartments value)
        loadingDepartments,
    required TResult Function(ScheduleStateLoadedDepartments value)
        loadedDepartments,
    required TResult Function(ScheduleStateLoadingTeachers value)
        loadingTeachers,
    required TResult Function(ScheduleStateLoadedTeachers value) loadedTeachers,
    required TResult Function(ScheduleStateLoadingGroups value) loadingGroups,
    required TResult Function(ScheduleStateLoadedGroups value) loadedGroups,
    required TResult Function(ScheduleStateLoadingRooms value) loadingRooms,
    required TResult Function(ScheduleStateLoadedRooms value) loadedRooms,
    required TResult Function(ScheduleStateLoadingSchedule value)
        loadingSchedule,
    required TResult Function(ScheduleStateLoadedSchedule value) loadedSchedule,
    required TResult Function(ScheduleStateError value) error,
    required TResult Function(ScheduleStateEndedSession value) endedSession,
    required TResult Function(ScheduleStateToLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleStateStartLoading value)? startLoading,
    TResult? Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult? Function(ScheduleStateLoadingDepartments value)?
        loadingDepartments,
    TResult? Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult? Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult? Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult? Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult? Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult? Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult? Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult? Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult? Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult? Function(ScheduleStateError value)? error,
    TResult? Function(ScheduleStateEndedSession value)? endedSession,
    TResult? Function(ScheduleStateToLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleStateStartLoading value)? startLoading,
    TResult Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult Function(ScheduleStateLoadingDepartments value)? loadingDepartments,
    TResult Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult Function(ScheduleStateError value)? error,
    TResult Function(ScheduleStateEndedSession value)? endedSession,
    TResult Function(ScheduleStateToLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleStateCopyWith<$Res> {
  factory $ScheduleStateCopyWith(
          ScheduleState value, $Res Function(ScheduleState) then) =
      _$ScheduleStateCopyWithImpl<$Res, ScheduleState>;
}

/// @nodoc
class _$ScheduleStateCopyWithImpl<$Res, $Val extends ScheduleState>
    implements $ScheduleStateCopyWith<$Res> {
  _$ScheduleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ScheduleStateStartLoadingImplCopyWith<$Res> {
  factory _$$ScheduleStateStartLoadingImplCopyWith(
          _$ScheduleStateStartLoadingImpl value,
          $Res Function(_$ScheduleStateStartLoadingImpl) then) =
      __$$ScheduleStateStartLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScheduleStateStartLoadingImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$ScheduleStateStartLoadingImpl>
    implements _$$ScheduleStateStartLoadingImplCopyWith<$Res> {
  __$$ScheduleStateStartLoadingImplCopyWithImpl(
      _$ScheduleStateStartLoadingImpl _value,
      $Res Function(_$ScheduleStateStartLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ScheduleStateStartLoadingImpl implements ScheduleStateStartLoading {
  const _$ScheduleStateStartLoadingImpl();

  @override
  String toString() {
    return 'ScheduleState.startLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleStateStartLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startLoading,
    required TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)
        startLoaded,
    required TResult Function() loadingDepartments,
    required TResult Function(List<DepartmentModel> departments)
        loadedDepartments,
    required TResult Function() loadingTeachers,
    required TResult Function(List<TeacherModel> teachers) loadedTeachers,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function() loadingRooms,
    required TResult Function(List<RoomModel> rooms) loadedRooms,
    required TResult Function() loadingSchedule,
    required TResult Function(List<ScheduleModel> schedule) loadedSchedule,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)
        loaded,
  }) {
    return startLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startLoading,
    TResult? Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult? Function()? loadingDepartments,
    TResult? Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult? Function()? loadingTeachers,
    TResult? Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult? Function()? loadingGroups,
    TResult? Function(List<GroupModel> groups)? loadedGroups,
    TResult? Function()? loadingRooms,
    TResult? Function(List<RoomModel> rooms)? loadedRooms,
    TResult? Function()? loadingSchedule,
    TResult? Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
  }) {
    return startLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startLoading,
    TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult Function()? loadingDepartments,
    TResult Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult Function()? loadingTeachers,
    TResult Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult Function()? loadingGroups,
    TResult Function(List<GroupModel> groups)? loadedGroups,
    TResult Function()? loadingRooms,
    TResult Function(List<RoomModel> rooms)? loadedRooms,
    TResult Function()? loadingSchedule,
    TResult Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
    required TResult orElse(),
  }) {
    if (startLoading != null) {
      return startLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleStateStartLoading value) startLoading,
    required TResult Function(ScheduleStateStartLoaded value) startLoaded,
    required TResult Function(ScheduleStateLoadingDepartments value)
        loadingDepartments,
    required TResult Function(ScheduleStateLoadedDepartments value)
        loadedDepartments,
    required TResult Function(ScheduleStateLoadingTeachers value)
        loadingTeachers,
    required TResult Function(ScheduleStateLoadedTeachers value) loadedTeachers,
    required TResult Function(ScheduleStateLoadingGroups value) loadingGroups,
    required TResult Function(ScheduleStateLoadedGroups value) loadedGroups,
    required TResult Function(ScheduleStateLoadingRooms value) loadingRooms,
    required TResult Function(ScheduleStateLoadedRooms value) loadedRooms,
    required TResult Function(ScheduleStateLoadingSchedule value)
        loadingSchedule,
    required TResult Function(ScheduleStateLoadedSchedule value) loadedSchedule,
    required TResult Function(ScheduleStateError value) error,
    required TResult Function(ScheduleStateEndedSession value) endedSession,
    required TResult Function(ScheduleStateToLoaded value) loaded,
  }) {
    return startLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleStateStartLoading value)? startLoading,
    TResult? Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult? Function(ScheduleStateLoadingDepartments value)?
        loadingDepartments,
    TResult? Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult? Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult? Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult? Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult? Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult? Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult? Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult? Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult? Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult? Function(ScheduleStateError value)? error,
    TResult? Function(ScheduleStateEndedSession value)? endedSession,
    TResult? Function(ScheduleStateToLoaded value)? loaded,
  }) {
    return startLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleStateStartLoading value)? startLoading,
    TResult Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult Function(ScheduleStateLoadingDepartments value)? loadingDepartments,
    TResult Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult Function(ScheduleStateError value)? error,
    TResult Function(ScheduleStateEndedSession value)? endedSession,
    TResult Function(ScheduleStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (startLoading != null) {
      return startLoading(this);
    }
    return orElse();
  }
}

abstract class ScheduleStateStartLoading implements ScheduleState {
  const factory ScheduleStateStartLoading() = _$ScheduleStateStartLoadingImpl;
}

/// @nodoc
abstract class _$$ScheduleStateStartLoadedImplCopyWith<$Res> {
  factory _$$ScheduleStateStartLoadedImplCopyWith(
          _$ScheduleStateStartLoadedImpl value,
          $Res Function(_$ScheduleStateStartLoadedImpl) then) =
      __$$ScheduleStateStartLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<InstituteModel> institutes,
      List<BuildingModel> buildings,
      List<SubjectModel> subjects});
}

/// @nodoc
class __$$ScheduleStateStartLoadedImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$ScheduleStateStartLoadedImpl>
    implements _$$ScheduleStateStartLoadedImplCopyWith<$Res> {
  __$$ScheduleStateStartLoadedImplCopyWithImpl(
      _$ScheduleStateStartLoadedImpl _value,
      $Res Function(_$ScheduleStateStartLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? institutes = null,
    Object? buildings = null,
    Object? subjects = null,
  }) {
    return _then(_$ScheduleStateStartLoadedImpl(
      institutes: null == institutes
          ? _value._institutes
          : institutes // ignore: cast_nullable_to_non_nullable
              as List<InstituteModel>,
      buildings: null == buildings
          ? _value._buildings
          : buildings // ignore: cast_nullable_to_non_nullable
              as List<BuildingModel>,
      subjects: null == subjects
          ? _value._subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<SubjectModel>,
    ));
  }
}

/// @nodoc

class _$ScheduleStateStartLoadedImpl implements ScheduleStateStartLoaded {
  const _$ScheduleStateStartLoadedImpl(
      {required final List<InstituteModel> institutes,
      required final List<BuildingModel> buildings,
      required final List<SubjectModel> subjects})
      : _institutes = institutes,
        _buildings = buildings,
        _subjects = subjects;

  final List<InstituteModel> _institutes;
  @override
  List<InstituteModel> get institutes {
    if (_institutes is EqualUnmodifiableListView) return _institutes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_institutes);
  }

  final List<BuildingModel> _buildings;
  @override
  List<BuildingModel> get buildings {
    if (_buildings is EqualUnmodifiableListView) return _buildings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_buildings);
  }

  final List<SubjectModel> _subjects;
  @override
  List<SubjectModel> get subjects {
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subjects);
  }

  @override
  String toString() {
    return 'ScheduleState.startLoaded(institutes: $institutes, buildings: $buildings, subjects: $subjects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleStateStartLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._institutes, _institutes) &&
            const DeepCollectionEquality()
                .equals(other._buildings, _buildings) &&
            const DeepCollectionEquality().equals(other._subjects, _subjects));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_institutes),
      const DeepCollectionEquality().hash(_buildings),
      const DeepCollectionEquality().hash(_subjects));

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleStateStartLoadedImplCopyWith<_$ScheduleStateStartLoadedImpl>
      get copyWith => __$$ScheduleStateStartLoadedImplCopyWithImpl<
          _$ScheduleStateStartLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startLoading,
    required TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)
        startLoaded,
    required TResult Function() loadingDepartments,
    required TResult Function(List<DepartmentModel> departments)
        loadedDepartments,
    required TResult Function() loadingTeachers,
    required TResult Function(List<TeacherModel> teachers) loadedTeachers,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function() loadingRooms,
    required TResult Function(List<RoomModel> rooms) loadedRooms,
    required TResult Function() loadingSchedule,
    required TResult Function(List<ScheduleModel> schedule) loadedSchedule,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)
        loaded,
  }) {
    return startLoaded(institutes, buildings, subjects);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startLoading,
    TResult? Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult? Function()? loadingDepartments,
    TResult? Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult? Function()? loadingTeachers,
    TResult? Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult? Function()? loadingGroups,
    TResult? Function(List<GroupModel> groups)? loadedGroups,
    TResult? Function()? loadingRooms,
    TResult? Function(List<RoomModel> rooms)? loadedRooms,
    TResult? Function()? loadingSchedule,
    TResult? Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
  }) {
    return startLoaded?.call(institutes, buildings, subjects);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startLoading,
    TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult Function()? loadingDepartments,
    TResult Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult Function()? loadingTeachers,
    TResult Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult Function()? loadingGroups,
    TResult Function(List<GroupModel> groups)? loadedGroups,
    TResult Function()? loadingRooms,
    TResult Function(List<RoomModel> rooms)? loadedRooms,
    TResult Function()? loadingSchedule,
    TResult Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
    required TResult orElse(),
  }) {
    if (startLoaded != null) {
      return startLoaded(institutes, buildings, subjects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleStateStartLoading value) startLoading,
    required TResult Function(ScheduleStateStartLoaded value) startLoaded,
    required TResult Function(ScheduleStateLoadingDepartments value)
        loadingDepartments,
    required TResult Function(ScheduleStateLoadedDepartments value)
        loadedDepartments,
    required TResult Function(ScheduleStateLoadingTeachers value)
        loadingTeachers,
    required TResult Function(ScheduleStateLoadedTeachers value) loadedTeachers,
    required TResult Function(ScheduleStateLoadingGroups value) loadingGroups,
    required TResult Function(ScheduleStateLoadedGroups value) loadedGroups,
    required TResult Function(ScheduleStateLoadingRooms value) loadingRooms,
    required TResult Function(ScheduleStateLoadedRooms value) loadedRooms,
    required TResult Function(ScheduleStateLoadingSchedule value)
        loadingSchedule,
    required TResult Function(ScheduleStateLoadedSchedule value) loadedSchedule,
    required TResult Function(ScheduleStateError value) error,
    required TResult Function(ScheduleStateEndedSession value) endedSession,
    required TResult Function(ScheduleStateToLoaded value) loaded,
  }) {
    return startLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleStateStartLoading value)? startLoading,
    TResult? Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult? Function(ScheduleStateLoadingDepartments value)?
        loadingDepartments,
    TResult? Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult? Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult? Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult? Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult? Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult? Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult? Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult? Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult? Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult? Function(ScheduleStateError value)? error,
    TResult? Function(ScheduleStateEndedSession value)? endedSession,
    TResult? Function(ScheduleStateToLoaded value)? loaded,
  }) {
    return startLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleStateStartLoading value)? startLoading,
    TResult Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult Function(ScheduleStateLoadingDepartments value)? loadingDepartments,
    TResult Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult Function(ScheduleStateError value)? error,
    TResult Function(ScheduleStateEndedSession value)? endedSession,
    TResult Function(ScheduleStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (startLoaded != null) {
      return startLoaded(this);
    }
    return orElse();
  }
}

abstract class ScheduleStateStartLoaded implements ScheduleState {
  const factory ScheduleStateStartLoaded(
          {required final List<InstituteModel> institutes,
          required final List<BuildingModel> buildings,
          required final List<SubjectModel> subjects}) =
      _$ScheduleStateStartLoadedImpl;

  List<InstituteModel> get institutes;
  List<BuildingModel> get buildings;
  List<SubjectModel> get subjects;

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleStateStartLoadedImplCopyWith<_$ScheduleStateStartLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleStateLoadingDepartmentsImplCopyWith<$Res> {
  factory _$$ScheduleStateLoadingDepartmentsImplCopyWith(
          _$ScheduleStateLoadingDepartmentsImpl value,
          $Res Function(_$ScheduleStateLoadingDepartmentsImpl) then) =
      __$$ScheduleStateLoadingDepartmentsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScheduleStateLoadingDepartmentsImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res,
        _$ScheduleStateLoadingDepartmentsImpl>
    implements _$$ScheduleStateLoadingDepartmentsImplCopyWith<$Res> {
  __$$ScheduleStateLoadingDepartmentsImplCopyWithImpl(
      _$ScheduleStateLoadingDepartmentsImpl _value,
      $Res Function(_$ScheduleStateLoadingDepartmentsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ScheduleStateLoadingDepartmentsImpl
    implements ScheduleStateLoadingDepartments {
  const _$ScheduleStateLoadingDepartmentsImpl();

  @override
  String toString() {
    return 'ScheduleState.loadingDepartments()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleStateLoadingDepartmentsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startLoading,
    required TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)
        startLoaded,
    required TResult Function() loadingDepartments,
    required TResult Function(List<DepartmentModel> departments)
        loadedDepartments,
    required TResult Function() loadingTeachers,
    required TResult Function(List<TeacherModel> teachers) loadedTeachers,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function() loadingRooms,
    required TResult Function(List<RoomModel> rooms) loadedRooms,
    required TResult Function() loadingSchedule,
    required TResult Function(List<ScheduleModel> schedule) loadedSchedule,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)
        loaded,
  }) {
    return loadingDepartments();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startLoading,
    TResult? Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult? Function()? loadingDepartments,
    TResult? Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult? Function()? loadingTeachers,
    TResult? Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult? Function()? loadingGroups,
    TResult? Function(List<GroupModel> groups)? loadedGroups,
    TResult? Function()? loadingRooms,
    TResult? Function(List<RoomModel> rooms)? loadedRooms,
    TResult? Function()? loadingSchedule,
    TResult? Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
  }) {
    return loadingDepartments?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startLoading,
    TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult Function()? loadingDepartments,
    TResult Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult Function()? loadingTeachers,
    TResult Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult Function()? loadingGroups,
    TResult Function(List<GroupModel> groups)? loadedGroups,
    TResult Function()? loadingRooms,
    TResult Function(List<RoomModel> rooms)? loadedRooms,
    TResult Function()? loadingSchedule,
    TResult Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
    required TResult orElse(),
  }) {
    if (loadingDepartments != null) {
      return loadingDepartments();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleStateStartLoading value) startLoading,
    required TResult Function(ScheduleStateStartLoaded value) startLoaded,
    required TResult Function(ScheduleStateLoadingDepartments value)
        loadingDepartments,
    required TResult Function(ScheduleStateLoadedDepartments value)
        loadedDepartments,
    required TResult Function(ScheduleStateLoadingTeachers value)
        loadingTeachers,
    required TResult Function(ScheduleStateLoadedTeachers value) loadedTeachers,
    required TResult Function(ScheduleStateLoadingGroups value) loadingGroups,
    required TResult Function(ScheduleStateLoadedGroups value) loadedGroups,
    required TResult Function(ScheduleStateLoadingRooms value) loadingRooms,
    required TResult Function(ScheduleStateLoadedRooms value) loadedRooms,
    required TResult Function(ScheduleStateLoadingSchedule value)
        loadingSchedule,
    required TResult Function(ScheduleStateLoadedSchedule value) loadedSchedule,
    required TResult Function(ScheduleStateError value) error,
    required TResult Function(ScheduleStateEndedSession value) endedSession,
    required TResult Function(ScheduleStateToLoaded value) loaded,
  }) {
    return loadingDepartments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleStateStartLoading value)? startLoading,
    TResult? Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult? Function(ScheduleStateLoadingDepartments value)?
        loadingDepartments,
    TResult? Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult? Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult? Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult? Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult? Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult? Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult? Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult? Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult? Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult? Function(ScheduleStateError value)? error,
    TResult? Function(ScheduleStateEndedSession value)? endedSession,
    TResult? Function(ScheduleStateToLoaded value)? loaded,
  }) {
    return loadingDepartments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleStateStartLoading value)? startLoading,
    TResult Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult Function(ScheduleStateLoadingDepartments value)? loadingDepartments,
    TResult Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult Function(ScheduleStateError value)? error,
    TResult Function(ScheduleStateEndedSession value)? endedSession,
    TResult Function(ScheduleStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadingDepartments != null) {
      return loadingDepartments(this);
    }
    return orElse();
  }
}

abstract class ScheduleStateLoadingDepartments implements ScheduleState {
  const factory ScheduleStateLoadingDepartments() =
      _$ScheduleStateLoadingDepartmentsImpl;
}

/// @nodoc
abstract class _$$ScheduleStateLoadedDepartmentsImplCopyWith<$Res> {
  factory _$$ScheduleStateLoadedDepartmentsImplCopyWith(
          _$ScheduleStateLoadedDepartmentsImpl value,
          $Res Function(_$ScheduleStateLoadedDepartmentsImpl) then) =
      __$$ScheduleStateLoadedDepartmentsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DepartmentModel> departments});
}

/// @nodoc
class __$$ScheduleStateLoadedDepartmentsImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res,
        _$ScheduleStateLoadedDepartmentsImpl>
    implements _$$ScheduleStateLoadedDepartmentsImplCopyWith<$Res> {
  __$$ScheduleStateLoadedDepartmentsImplCopyWithImpl(
      _$ScheduleStateLoadedDepartmentsImpl _value,
      $Res Function(_$ScheduleStateLoadedDepartmentsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departments = null,
  }) {
    return _then(_$ScheduleStateLoadedDepartmentsImpl(
      departments: null == departments
          ? _value._departments
          : departments // ignore: cast_nullable_to_non_nullable
              as List<DepartmentModel>,
    ));
  }
}

/// @nodoc

class _$ScheduleStateLoadedDepartmentsImpl
    implements ScheduleStateLoadedDepartments {
  const _$ScheduleStateLoadedDepartmentsImpl(
      {required final List<DepartmentModel> departments})
      : _departments = departments;

  final List<DepartmentModel> _departments;
  @override
  List<DepartmentModel> get departments {
    if (_departments is EqualUnmodifiableListView) return _departments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_departments);
  }

  @override
  String toString() {
    return 'ScheduleState.loadedDepartments(departments: $departments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleStateLoadedDepartmentsImpl &&
            const DeepCollectionEquality()
                .equals(other._departments, _departments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_departments));

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleStateLoadedDepartmentsImplCopyWith<
          _$ScheduleStateLoadedDepartmentsImpl>
      get copyWith => __$$ScheduleStateLoadedDepartmentsImplCopyWithImpl<
          _$ScheduleStateLoadedDepartmentsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startLoading,
    required TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)
        startLoaded,
    required TResult Function() loadingDepartments,
    required TResult Function(List<DepartmentModel> departments)
        loadedDepartments,
    required TResult Function() loadingTeachers,
    required TResult Function(List<TeacherModel> teachers) loadedTeachers,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function() loadingRooms,
    required TResult Function(List<RoomModel> rooms) loadedRooms,
    required TResult Function() loadingSchedule,
    required TResult Function(List<ScheduleModel> schedule) loadedSchedule,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)
        loaded,
  }) {
    return loadedDepartments(departments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startLoading,
    TResult? Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult? Function()? loadingDepartments,
    TResult? Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult? Function()? loadingTeachers,
    TResult? Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult? Function()? loadingGroups,
    TResult? Function(List<GroupModel> groups)? loadedGroups,
    TResult? Function()? loadingRooms,
    TResult? Function(List<RoomModel> rooms)? loadedRooms,
    TResult? Function()? loadingSchedule,
    TResult? Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
  }) {
    return loadedDepartments?.call(departments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startLoading,
    TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult Function()? loadingDepartments,
    TResult Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult Function()? loadingTeachers,
    TResult Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult Function()? loadingGroups,
    TResult Function(List<GroupModel> groups)? loadedGroups,
    TResult Function()? loadingRooms,
    TResult Function(List<RoomModel> rooms)? loadedRooms,
    TResult Function()? loadingSchedule,
    TResult Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
    required TResult orElse(),
  }) {
    if (loadedDepartments != null) {
      return loadedDepartments(departments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleStateStartLoading value) startLoading,
    required TResult Function(ScheduleStateStartLoaded value) startLoaded,
    required TResult Function(ScheduleStateLoadingDepartments value)
        loadingDepartments,
    required TResult Function(ScheduleStateLoadedDepartments value)
        loadedDepartments,
    required TResult Function(ScheduleStateLoadingTeachers value)
        loadingTeachers,
    required TResult Function(ScheduleStateLoadedTeachers value) loadedTeachers,
    required TResult Function(ScheduleStateLoadingGroups value) loadingGroups,
    required TResult Function(ScheduleStateLoadedGroups value) loadedGroups,
    required TResult Function(ScheduleStateLoadingRooms value) loadingRooms,
    required TResult Function(ScheduleStateLoadedRooms value) loadedRooms,
    required TResult Function(ScheduleStateLoadingSchedule value)
        loadingSchedule,
    required TResult Function(ScheduleStateLoadedSchedule value) loadedSchedule,
    required TResult Function(ScheduleStateError value) error,
    required TResult Function(ScheduleStateEndedSession value) endedSession,
    required TResult Function(ScheduleStateToLoaded value) loaded,
  }) {
    return loadedDepartments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleStateStartLoading value)? startLoading,
    TResult? Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult? Function(ScheduleStateLoadingDepartments value)?
        loadingDepartments,
    TResult? Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult? Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult? Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult? Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult? Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult? Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult? Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult? Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult? Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult? Function(ScheduleStateError value)? error,
    TResult? Function(ScheduleStateEndedSession value)? endedSession,
    TResult? Function(ScheduleStateToLoaded value)? loaded,
  }) {
    return loadedDepartments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleStateStartLoading value)? startLoading,
    TResult Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult Function(ScheduleStateLoadingDepartments value)? loadingDepartments,
    TResult Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult Function(ScheduleStateError value)? error,
    TResult Function(ScheduleStateEndedSession value)? endedSession,
    TResult Function(ScheduleStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadedDepartments != null) {
      return loadedDepartments(this);
    }
    return orElse();
  }
}

abstract class ScheduleStateLoadedDepartments implements ScheduleState {
  const factory ScheduleStateLoadedDepartments(
          {required final List<DepartmentModel> departments}) =
      _$ScheduleStateLoadedDepartmentsImpl;

  List<DepartmentModel> get departments;

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleStateLoadedDepartmentsImplCopyWith<
          _$ScheduleStateLoadedDepartmentsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleStateLoadingTeachersImplCopyWith<$Res> {
  factory _$$ScheduleStateLoadingTeachersImplCopyWith(
          _$ScheduleStateLoadingTeachersImpl value,
          $Res Function(_$ScheduleStateLoadingTeachersImpl) then) =
      __$$ScheduleStateLoadingTeachersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScheduleStateLoadingTeachersImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res,
        _$ScheduleStateLoadingTeachersImpl>
    implements _$$ScheduleStateLoadingTeachersImplCopyWith<$Res> {
  __$$ScheduleStateLoadingTeachersImplCopyWithImpl(
      _$ScheduleStateLoadingTeachersImpl _value,
      $Res Function(_$ScheduleStateLoadingTeachersImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ScheduleStateLoadingTeachersImpl
    implements ScheduleStateLoadingTeachers {
  const _$ScheduleStateLoadingTeachersImpl();

  @override
  String toString() {
    return 'ScheduleState.loadingTeachers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleStateLoadingTeachersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startLoading,
    required TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)
        startLoaded,
    required TResult Function() loadingDepartments,
    required TResult Function(List<DepartmentModel> departments)
        loadedDepartments,
    required TResult Function() loadingTeachers,
    required TResult Function(List<TeacherModel> teachers) loadedTeachers,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function() loadingRooms,
    required TResult Function(List<RoomModel> rooms) loadedRooms,
    required TResult Function() loadingSchedule,
    required TResult Function(List<ScheduleModel> schedule) loadedSchedule,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)
        loaded,
  }) {
    return loadingTeachers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startLoading,
    TResult? Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult? Function()? loadingDepartments,
    TResult? Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult? Function()? loadingTeachers,
    TResult? Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult? Function()? loadingGroups,
    TResult? Function(List<GroupModel> groups)? loadedGroups,
    TResult? Function()? loadingRooms,
    TResult? Function(List<RoomModel> rooms)? loadedRooms,
    TResult? Function()? loadingSchedule,
    TResult? Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
  }) {
    return loadingTeachers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startLoading,
    TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult Function()? loadingDepartments,
    TResult Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult Function()? loadingTeachers,
    TResult Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult Function()? loadingGroups,
    TResult Function(List<GroupModel> groups)? loadedGroups,
    TResult Function()? loadingRooms,
    TResult Function(List<RoomModel> rooms)? loadedRooms,
    TResult Function()? loadingSchedule,
    TResult Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
    required TResult orElse(),
  }) {
    if (loadingTeachers != null) {
      return loadingTeachers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleStateStartLoading value) startLoading,
    required TResult Function(ScheduleStateStartLoaded value) startLoaded,
    required TResult Function(ScheduleStateLoadingDepartments value)
        loadingDepartments,
    required TResult Function(ScheduleStateLoadedDepartments value)
        loadedDepartments,
    required TResult Function(ScheduleStateLoadingTeachers value)
        loadingTeachers,
    required TResult Function(ScheduleStateLoadedTeachers value) loadedTeachers,
    required TResult Function(ScheduleStateLoadingGroups value) loadingGroups,
    required TResult Function(ScheduleStateLoadedGroups value) loadedGroups,
    required TResult Function(ScheduleStateLoadingRooms value) loadingRooms,
    required TResult Function(ScheduleStateLoadedRooms value) loadedRooms,
    required TResult Function(ScheduleStateLoadingSchedule value)
        loadingSchedule,
    required TResult Function(ScheduleStateLoadedSchedule value) loadedSchedule,
    required TResult Function(ScheduleStateError value) error,
    required TResult Function(ScheduleStateEndedSession value) endedSession,
    required TResult Function(ScheduleStateToLoaded value) loaded,
  }) {
    return loadingTeachers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleStateStartLoading value)? startLoading,
    TResult? Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult? Function(ScheduleStateLoadingDepartments value)?
        loadingDepartments,
    TResult? Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult? Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult? Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult? Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult? Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult? Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult? Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult? Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult? Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult? Function(ScheduleStateError value)? error,
    TResult? Function(ScheduleStateEndedSession value)? endedSession,
    TResult? Function(ScheduleStateToLoaded value)? loaded,
  }) {
    return loadingTeachers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleStateStartLoading value)? startLoading,
    TResult Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult Function(ScheduleStateLoadingDepartments value)? loadingDepartments,
    TResult Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult Function(ScheduleStateError value)? error,
    TResult Function(ScheduleStateEndedSession value)? endedSession,
    TResult Function(ScheduleStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadingTeachers != null) {
      return loadingTeachers(this);
    }
    return orElse();
  }
}

abstract class ScheduleStateLoadingTeachers implements ScheduleState {
  const factory ScheduleStateLoadingTeachers() =
      _$ScheduleStateLoadingTeachersImpl;
}

/// @nodoc
abstract class _$$ScheduleStateLoadedTeachersImplCopyWith<$Res> {
  factory _$$ScheduleStateLoadedTeachersImplCopyWith(
          _$ScheduleStateLoadedTeachersImpl value,
          $Res Function(_$ScheduleStateLoadedTeachersImpl) then) =
      __$$ScheduleStateLoadedTeachersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TeacherModel> teachers});
}

/// @nodoc
class __$$ScheduleStateLoadedTeachersImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$ScheduleStateLoadedTeachersImpl>
    implements _$$ScheduleStateLoadedTeachersImplCopyWith<$Res> {
  __$$ScheduleStateLoadedTeachersImplCopyWithImpl(
      _$ScheduleStateLoadedTeachersImpl _value,
      $Res Function(_$ScheduleStateLoadedTeachersImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teachers = null,
  }) {
    return _then(_$ScheduleStateLoadedTeachersImpl(
      teachers: null == teachers
          ? _value._teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<TeacherModel>,
    ));
  }
}

/// @nodoc

class _$ScheduleStateLoadedTeachersImpl implements ScheduleStateLoadedTeachers {
  const _$ScheduleStateLoadedTeachersImpl(
      {required final List<TeacherModel> teachers})
      : _teachers = teachers;

  final List<TeacherModel> _teachers;
  @override
  List<TeacherModel> get teachers {
    if (_teachers is EqualUnmodifiableListView) return _teachers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teachers);
  }

  @override
  String toString() {
    return 'ScheduleState.loadedTeachers(teachers: $teachers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleStateLoadedTeachersImpl &&
            const DeepCollectionEquality().equals(other._teachers, _teachers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_teachers));

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleStateLoadedTeachersImplCopyWith<_$ScheduleStateLoadedTeachersImpl>
      get copyWith => __$$ScheduleStateLoadedTeachersImplCopyWithImpl<
          _$ScheduleStateLoadedTeachersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startLoading,
    required TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)
        startLoaded,
    required TResult Function() loadingDepartments,
    required TResult Function(List<DepartmentModel> departments)
        loadedDepartments,
    required TResult Function() loadingTeachers,
    required TResult Function(List<TeacherModel> teachers) loadedTeachers,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function() loadingRooms,
    required TResult Function(List<RoomModel> rooms) loadedRooms,
    required TResult Function() loadingSchedule,
    required TResult Function(List<ScheduleModel> schedule) loadedSchedule,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)
        loaded,
  }) {
    return loadedTeachers(teachers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startLoading,
    TResult? Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult? Function()? loadingDepartments,
    TResult? Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult? Function()? loadingTeachers,
    TResult? Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult? Function()? loadingGroups,
    TResult? Function(List<GroupModel> groups)? loadedGroups,
    TResult? Function()? loadingRooms,
    TResult? Function(List<RoomModel> rooms)? loadedRooms,
    TResult? Function()? loadingSchedule,
    TResult? Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
  }) {
    return loadedTeachers?.call(teachers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startLoading,
    TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult Function()? loadingDepartments,
    TResult Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult Function()? loadingTeachers,
    TResult Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult Function()? loadingGroups,
    TResult Function(List<GroupModel> groups)? loadedGroups,
    TResult Function()? loadingRooms,
    TResult Function(List<RoomModel> rooms)? loadedRooms,
    TResult Function()? loadingSchedule,
    TResult Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
    required TResult orElse(),
  }) {
    if (loadedTeachers != null) {
      return loadedTeachers(teachers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleStateStartLoading value) startLoading,
    required TResult Function(ScheduleStateStartLoaded value) startLoaded,
    required TResult Function(ScheduleStateLoadingDepartments value)
        loadingDepartments,
    required TResult Function(ScheduleStateLoadedDepartments value)
        loadedDepartments,
    required TResult Function(ScheduleStateLoadingTeachers value)
        loadingTeachers,
    required TResult Function(ScheduleStateLoadedTeachers value) loadedTeachers,
    required TResult Function(ScheduleStateLoadingGroups value) loadingGroups,
    required TResult Function(ScheduleStateLoadedGroups value) loadedGroups,
    required TResult Function(ScheduleStateLoadingRooms value) loadingRooms,
    required TResult Function(ScheduleStateLoadedRooms value) loadedRooms,
    required TResult Function(ScheduleStateLoadingSchedule value)
        loadingSchedule,
    required TResult Function(ScheduleStateLoadedSchedule value) loadedSchedule,
    required TResult Function(ScheduleStateError value) error,
    required TResult Function(ScheduleStateEndedSession value) endedSession,
    required TResult Function(ScheduleStateToLoaded value) loaded,
  }) {
    return loadedTeachers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleStateStartLoading value)? startLoading,
    TResult? Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult? Function(ScheduleStateLoadingDepartments value)?
        loadingDepartments,
    TResult? Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult? Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult? Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult? Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult? Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult? Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult? Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult? Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult? Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult? Function(ScheduleStateError value)? error,
    TResult? Function(ScheduleStateEndedSession value)? endedSession,
    TResult? Function(ScheduleStateToLoaded value)? loaded,
  }) {
    return loadedTeachers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleStateStartLoading value)? startLoading,
    TResult Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult Function(ScheduleStateLoadingDepartments value)? loadingDepartments,
    TResult Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult Function(ScheduleStateError value)? error,
    TResult Function(ScheduleStateEndedSession value)? endedSession,
    TResult Function(ScheduleStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadedTeachers != null) {
      return loadedTeachers(this);
    }
    return orElse();
  }
}

abstract class ScheduleStateLoadedTeachers implements ScheduleState {
  const factory ScheduleStateLoadedTeachers(
          {required final List<TeacherModel> teachers}) =
      _$ScheduleStateLoadedTeachersImpl;

  List<TeacherModel> get teachers;

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleStateLoadedTeachersImplCopyWith<_$ScheduleStateLoadedTeachersImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleStateLoadingGroupsImplCopyWith<$Res> {
  factory _$$ScheduleStateLoadingGroupsImplCopyWith(
          _$ScheduleStateLoadingGroupsImpl value,
          $Res Function(_$ScheduleStateLoadingGroupsImpl) then) =
      __$$ScheduleStateLoadingGroupsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScheduleStateLoadingGroupsImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$ScheduleStateLoadingGroupsImpl>
    implements _$$ScheduleStateLoadingGroupsImplCopyWith<$Res> {
  __$$ScheduleStateLoadingGroupsImplCopyWithImpl(
      _$ScheduleStateLoadingGroupsImpl _value,
      $Res Function(_$ScheduleStateLoadingGroupsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ScheduleStateLoadingGroupsImpl implements ScheduleStateLoadingGroups {
  const _$ScheduleStateLoadingGroupsImpl();

  @override
  String toString() {
    return 'ScheduleState.loadingGroups()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleStateLoadingGroupsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startLoading,
    required TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)
        startLoaded,
    required TResult Function() loadingDepartments,
    required TResult Function(List<DepartmentModel> departments)
        loadedDepartments,
    required TResult Function() loadingTeachers,
    required TResult Function(List<TeacherModel> teachers) loadedTeachers,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function() loadingRooms,
    required TResult Function(List<RoomModel> rooms) loadedRooms,
    required TResult Function() loadingSchedule,
    required TResult Function(List<ScheduleModel> schedule) loadedSchedule,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)
        loaded,
  }) {
    return loadingGroups();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startLoading,
    TResult? Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult? Function()? loadingDepartments,
    TResult? Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult? Function()? loadingTeachers,
    TResult? Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult? Function()? loadingGroups,
    TResult? Function(List<GroupModel> groups)? loadedGroups,
    TResult? Function()? loadingRooms,
    TResult? Function(List<RoomModel> rooms)? loadedRooms,
    TResult? Function()? loadingSchedule,
    TResult? Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
  }) {
    return loadingGroups?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startLoading,
    TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult Function()? loadingDepartments,
    TResult Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult Function()? loadingTeachers,
    TResult Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult Function()? loadingGroups,
    TResult Function(List<GroupModel> groups)? loadedGroups,
    TResult Function()? loadingRooms,
    TResult Function(List<RoomModel> rooms)? loadedRooms,
    TResult Function()? loadingSchedule,
    TResult Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
    required TResult orElse(),
  }) {
    if (loadingGroups != null) {
      return loadingGroups();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleStateStartLoading value) startLoading,
    required TResult Function(ScheduleStateStartLoaded value) startLoaded,
    required TResult Function(ScheduleStateLoadingDepartments value)
        loadingDepartments,
    required TResult Function(ScheduleStateLoadedDepartments value)
        loadedDepartments,
    required TResult Function(ScheduleStateLoadingTeachers value)
        loadingTeachers,
    required TResult Function(ScheduleStateLoadedTeachers value) loadedTeachers,
    required TResult Function(ScheduleStateLoadingGroups value) loadingGroups,
    required TResult Function(ScheduleStateLoadedGroups value) loadedGroups,
    required TResult Function(ScheduleStateLoadingRooms value) loadingRooms,
    required TResult Function(ScheduleStateLoadedRooms value) loadedRooms,
    required TResult Function(ScheduleStateLoadingSchedule value)
        loadingSchedule,
    required TResult Function(ScheduleStateLoadedSchedule value) loadedSchedule,
    required TResult Function(ScheduleStateError value) error,
    required TResult Function(ScheduleStateEndedSession value) endedSession,
    required TResult Function(ScheduleStateToLoaded value) loaded,
  }) {
    return loadingGroups(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleStateStartLoading value)? startLoading,
    TResult? Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult? Function(ScheduleStateLoadingDepartments value)?
        loadingDepartments,
    TResult? Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult? Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult? Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult? Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult? Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult? Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult? Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult? Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult? Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult? Function(ScheduleStateError value)? error,
    TResult? Function(ScheduleStateEndedSession value)? endedSession,
    TResult? Function(ScheduleStateToLoaded value)? loaded,
  }) {
    return loadingGroups?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleStateStartLoading value)? startLoading,
    TResult Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult Function(ScheduleStateLoadingDepartments value)? loadingDepartments,
    TResult Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult Function(ScheduleStateError value)? error,
    TResult Function(ScheduleStateEndedSession value)? endedSession,
    TResult Function(ScheduleStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadingGroups != null) {
      return loadingGroups(this);
    }
    return orElse();
  }
}

abstract class ScheduleStateLoadingGroups implements ScheduleState {
  const factory ScheduleStateLoadingGroups() = _$ScheduleStateLoadingGroupsImpl;
}

/// @nodoc
abstract class _$$ScheduleStateLoadedGroupsImplCopyWith<$Res> {
  factory _$$ScheduleStateLoadedGroupsImplCopyWith(
          _$ScheduleStateLoadedGroupsImpl value,
          $Res Function(_$ScheduleStateLoadedGroupsImpl) then) =
      __$$ScheduleStateLoadedGroupsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GroupModel> groups});
}

/// @nodoc
class __$$ScheduleStateLoadedGroupsImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$ScheduleStateLoadedGroupsImpl>
    implements _$$ScheduleStateLoadedGroupsImplCopyWith<$Res> {
  __$$ScheduleStateLoadedGroupsImplCopyWithImpl(
      _$ScheduleStateLoadedGroupsImpl _value,
      $Res Function(_$ScheduleStateLoadedGroupsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = null,
  }) {
    return _then(_$ScheduleStateLoadedGroupsImpl(
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupModel>,
    ));
  }
}

/// @nodoc

class _$ScheduleStateLoadedGroupsImpl implements ScheduleStateLoadedGroups {
  const _$ScheduleStateLoadedGroupsImpl(
      {required final List<GroupModel> groups})
      : _groups = groups;

  final List<GroupModel> _groups;
  @override
  List<GroupModel> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  String toString() {
    return 'ScheduleState.loadedGroups(groups: $groups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleStateLoadedGroupsImpl &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groups));

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleStateLoadedGroupsImplCopyWith<_$ScheduleStateLoadedGroupsImpl>
      get copyWith => __$$ScheduleStateLoadedGroupsImplCopyWithImpl<
          _$ScheduleStateLoadedGroupsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startLoading,
    required TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)
        startLoaded,
    required TResult Function() loadingDepartments,
    required TResult Function(List<DepartmentModel> departments)
        loadedDepartments,
    required TResult Function() loadingTeachers,
    required TResult Function(List<TeacherModel> teachers) loadedTeachers,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function() loadingRooms,
    required TResult Function(List<RoomModel> rooms) loadedRooms,
    required TResult Function() loadingSchedule,
    required TResult Function(List<ScheduleModel> schedule) loadedSchedule,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)
        loaded,
  }) {
    return loadedGroups(groups);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startLoading,
    TResult? Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult? Function()? loadingDepartments,
    TResult? Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult? Function()? loadingTeachers,
    TResult? Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult? Function()? loadingGroups,
    TResult? Function(List<GroupModel> groups)? loadedGroups,
    TResult? Function()? loadingRooms,
    TResult? Function(List<RoomModel> rooms)? loadedRooms,
    TResult? Function()? loadingSchedule,
    TResult? Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
  }) {
    return loadedGroups?.call(groups);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startLoading,
    TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult Function()? loadingDepartments,
    TResult Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult Function()? loadingTeachers,
    TResult Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult Function()? loadingGroups,
    TResult Function(List<GroupModel> groups)? loadedGroups,
    TResult Function()? loadingRooms,
    TResult Function(List<RoomModel> rooms)? loadedRooms,
    TResult Function()? loadingSchedule,
    TResult Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
    required TResult orElse(),
  }) {
    if (loadedGroups != null) {
      return loadedGroups(groups);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleStateStartLoading value) startLoading,
    required TResult Function(ScheduleStateStartLoaded value) startLoaded,
    required TResult Function(ScheduleStateLoadingDepartments value)
        loadingDepartments,
    required TResult Function(ScheduleStateLoadedDepartments value)
        loadedDepartments,
    required TResult Function(ScheduleStateLoadingTeachers value)
        loadingTeachers,
    required TResult Function(ScheduleStateLoadedTeachers value) loadedTeachers,
    required TResult Function(ScheduleStateLoadingGroups value) loadingGroups,
    required TResult Function(ScheduleStateLoadedGroups value) loadedGroups,
    required TResult Function(ScheduleStateLoadingRooms value) loadingRooms,
    required TResult Function(ScheduleStateLoadedRooms value) loadedRooms,
    required TResult Function(ScheduleStateLoadingSchedule value)
        loadingSchedule,
    required TResult Function(ScheduleStateLoadedSchedule value) loadedSchedule,
    required TResult Function(ScheduleStateError value) error,
    required TResult Function(ScheduleStateEndedSession value) endedSession,
    required TResult Function(ScheduleStateToLoaded value) loaded,
  }) {
    return loadedGroups(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleStateStartLoading value)? startLoading,
    TResult? Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult? Function(ScheduleStateLoadingDepartments value)?
        loadingDepartments,
    TResult? Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult? Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult? Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult? Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult? Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult? Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult? Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult? Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult? Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult? Function(ScheduleStateError value)? error,
    TResult? Function(ScheduleStateEndedSession value)? endedSession,
    TResult? Function(ScheduleStateToLoaded value)? loaded,
  }) {
    return loadedGroups?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleStateStartLoading value)? startLoading,
    TResult Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult Function(ScheduleStateLoadingDepartments value)? loadingDepartments,
    TResult Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult Function(ScheduleStateError value)? error,
    TResult Function(ScheduleStateEndedSession value)? endedSession,
    TResult Function(ScheduleStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadedGroups != null) {
      return loadedGroups(this);
    }
    return orElse();
  }
}

abstract class ScheduleStateLoadedGroups implements ScheduleState {
  const factory ScheduleStateLoadedGroups(
          {required final List<GroupModel> groups}) =
      _$ScheduleStateLoadedGroupsImpl;

  List<GroupModel> get groups;

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleStateLoadedGroupsImplCopyWith<_$ScheduleStateLoadedGroupsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleStateLoadingRoomsImplCopyWith<$Res> {
  factory _$$ScheduleStateLoadingRoomsImplCopyWith(
          _$ScheduleStateLoadingRoomsImpl value,
          $Res Function(_$ScheduleStateLoadingRoomsImpl) then) =
      __$$ScheduleStateLoadingRoomsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScheduleStateLoadingRoomsImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$ScheduleStateLoadingRoomsImpl>
    implements _$$ScheduleStateLoadingRoomsImplCopyWith<$Res> {
  __$$ScheduleStateLoadingRoomsImplCopyWithImpl(
      _$ScheduleStateLoadingRoomsImpl _value,
      $Res Function(_$ScheduleStateLoadingRoomsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ScheduleStateLoadingRoomsImpl implements ScheduleStateLoadingRooms {
  const _$ScheduleStateLoadingRoomsImpl();

  @override
  String toString() {
    return 'ScheduleState.loadingRooms()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleStateLoadingRoomsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startLoading,
    required TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)
        startLoaded,
    required TResult Function() loadingDepartments,
    required TResult Function(List<DepartmentModel> departments)
        loadedDepartments,
    required TResult Function() loadingTeachers,
    required TResult Function(List<TeacherModel> teachers) loadedTeachers,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function() loadingRooms,
    required TResult Function(List<RoomModel> rooms) loadedRooms,
    required TResult Function() loadingSchedule,
    required TResult Function(List<ScheduleModel> schedule) loadedSchedule,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)
        loaded,
  }) {
    return loadingRooms();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startLoading,
    TResult? Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult? Function()? loadingDepartments,
    TResult? Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult? Function()? loadingTeachers,
    TResult? Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult? Function()? loadingGroups,
    TResult? Function(List<GroupModel> groups)? loadedGroups,
    TResult? Function()? loadingRooms,
    TResult? Function(List<RoomModel> rooms)? loadedRooms,
    TResult? Function()? loadingSchedule,
    TResult? Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
  }) {
    return loadingRooms?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startLoading,
    TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult Function()? loadingDepartments,
    TResult Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult Function()? loadingTeachers,
    TResult Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult Function()? loadingGroups,
    TResult Function(List<GroupModel> groups)? loadedGroups,
    TResult Function()? loadingRooms,
    TResult Function(List<RoomModel> rooms)? loadedRooms,
    TResult Function()? loadingSchedule,
    TResult Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
    required TResult orElse(),
  }) {
    if (loadingRooms != null) {
      return loadingRooms();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleStateStartLoading value) startLoading,
    required TResult Function(ScheduleStateStartLoaded value) startLoaded,
    required TResult Function(ScheduleStateLoadingDepartments value)
        loadingDepartments,
    required TResult Function(ScheduleStateLoadedDepartments value)
        loadedDepartments,
    required TResult Function(ScheduleStateLoadingTeachers value)
        loadingTeachers,
    required TResult Function(ScheduleStateLoadedTeachers value) loadedTeachers,
    required TResult Function(ScheduleStateLoadingGroups value) loadingGroups,
    required TResult Function(ScheduleStateLoadedGroups value) loadedGroups,
    required TResult Function(ScheduleStateLoadingRooms value) loadingRooms,
    required TResult Function(ScheduleStateLoadedRooms value) loadedRooms,
    required TResult Function(ScheduleStateLoadingSchedule value)
        loadingSchedule,
    required TResult Function(ScheduleStateLoadedSchedule value) loadedSchedule,
    required TResult Function(ScheduleStateError value) error,
    required TResult Function(ScheduleStateEndedSession value) endedSession,
    required TResult Function(ScheduleStateToLoaded value) loaded,
  }) {
    return loadingRooms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleStateStartLoading value)? startLoading,
    TResult? Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult? Function(ScheduleStateLoadingDepartments value)?
        loadingDepartments,
    TResult? Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult? Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult? Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult? Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult? Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult? Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult? Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult? Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult? Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult? Function(ScheduleStateError value)? error,
    TResult? Function(ScheduleStateEndedSession value)? endedSession,
    TResult? Function(ScheduleStateToLoaded value)? loaded,
  }) {
    return loadingRooms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleStateStartLoading value)? startLoading,
    TResult Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult Function(ScheduleStateLoadingDepartments value)? loadingDepartments,
    TResult Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult Function(ScheduleStateError value)? error,
    TResult Function(ScheduleStateEndedSession value)? endedSession,
    TResult Function(ScheduleStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadingRooms != null) {
      return loadingRooms(this);
    }
    return orElse();
  }
}

abstract class ScheduleStateLoadingRooms implements ScheduleState {
  const factory ScheduleStateLoadingRooms() = _$ScheduleStateLoadingRoomsImpl;
}

/// @nodoc
abstract class _$$ScheduleStateLoadedRoomsImplCopyWith<$Res> {
  factory _$$ScheduleStateLoadedRoomsImplCopyWith(
          _$ScheduleStateLoadedRoomsImpl value,
          $Res Function(_$ScheduleStateLoadedRoomsImpl) then) =
      __$$ScheduleStateLoadedRoomsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RoomModel> rooms});
}

/// @nodoc
class __$$ScheduleStateLoadedRoomsImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$ScheduleStateLoadedRoomsImpl>
    implements _$$ScheduleStateLoadedRoomsImplCopyWith<$Res> {
  __$$ScheduleStateLoadedRoomsImplCopyWithImpl(
      _$ScheduleStateLoadedRoomsImpl _value,
      $Res Function(_$ScheduleStateLoadedRoomsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_$ScheduleStateLoadedRoomsImpl(
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>,
    ));
  }
}

/// @nodoc

class _$ScheduleStateLoadedRoomsImpl implements ScheduleStateLoadedRooms {
  const _$ScheduleStateLoadedRoomsImpl({required final List<RoomModel> rooms})
      : _rooms = rooms;

  final List<RoomModel> _rooms;
  @override
  List<RoomModel> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  String toString() {
    return 'ScheduleState.loadedRooms(rooms: $rooms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleStateLoadedRoomsImpl &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rooms));

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleStateLoadedRoomsImplCopyWith<_$ScheduleStateLoadedRoomsImpl>
      get copyWith => __$$ScheduleStateLoadedRoomsImplCopyWithImpl<
          _$ScheduleStateLoadedRoomsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startLoading,
    required TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)
        startLoaded,
    required TResult Function() loadingDepartments,
    required TResult Function(List<DepartmentModel> departments)
        loadedDepartments,
    required TResult Function() loadingTeachers,
    required TResult Function(List<TeacherModel> teachers) loadedTeachers,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function() loadingRooms,
    required TResult Function(List<RoomModel> rooms) loadedRooms,
    required TResult Function() loadingSchedule,
    required TResult Function(List<ScheduleModel> schedule) loadedSchedule,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)
        loaded,
  }) {
    return loadedRooms(rooms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startLoading,
    TResult? Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult? Function()? loadingDepartments,
    TResult? Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult? Function()? loadingTeachers,
    TResult? Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult? Function()? loadingGroups,
    TResult? Function(List<GroupModel> groups)? loadedGroups,
    TResult? Function()? loadingRooms,
    TResult? Function(List<RoomModel> rooms)? loadedRooms,
    TResult? Function()? loadingSchedule,
    TResult? Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
  }) {
    return loadedRooms?.call(rooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startLoading,
    TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult Function()? loadingDepartments,
    TResult Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult Function()? loadingTeachers,
    TResult Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult Function()? loadingGroups,
    TResult Function(List<GroupModel> groups)? loadedGroups,
    TResult Function()? loadingRooms,
    TResult Function(List<RoomModel> rooms)? loadedRooms,
    TResult Function()? loadingSchedule,
    TResult Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
    required TResult orElse(),
  }) {
    if (loadedRooms != null) {
      return loadedRooms(rooms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleStateStartLoading value) startLoading,
    required TResult Function(ScheduleStateStartLoaded value) startLoaded,
    required TResult Function(ScheduleStateLoadingDepartments value)
        loadingDepartments,
    required TResult Function(ScheduleStateLoadedDepartments value)
        loadedDepartments,
    required TResult Function(ScheduleStateLoadingTeachers value)
        loadingTeachers,
    required TResult Function(ScheduleStateLoadedTeachers value) loadedTeachers,
    required TResult Function(ScheduleStateLoadingGroups value) loadingGroups,
    required TResult Function(ScheduleStateLoadedGroups value) loadedGroups,
    required TResult Function(ScheduleStateLoadingRooms value) loadingRooms,
    required TResult Function(ScheduleStateLoadedRooms value) loadedRooms,
    required TResult Function(ScheduleStateLoadingSchedule value)
        loadingSchedule,
    required TResult Function(ScheduleStateLoadedSchedule value) loadedSchedule,
    required TResult Function(ScheduleStateError value) error,
    required TResult Function(ScheduleStateEndedSession value) endedSession,
    required TResult Function(ScheduleStateToLoaded value) loaded,
  }) {
    return loadedRooms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleStateStartLoading value)? startLoading,
    TResult? Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult? Function(ScheduleStateLoadingDepartments value)?
        loadingDepartments,
    TResult? Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult? Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult? Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult? Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult? Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult? Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult? Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult? Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult? Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult? Function(ScheduleStateError value)? error,
    TResult? Function(ScheduleStateEndedSession value)? endedSession,
    TResult? Function(ScheduleStateToLoaded value)? loaded,
  }) {
    return loadedRooms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleStateStartLoading value)? startLoading,
    TResult Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult Function(ScheduleStateLoadingDepartments value)? loadingDepartments,
    TResult Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult Function(ScheduleStateError value)? error,
    TResult Function(ScheduleStateEndedSession value)? endedSession,
    TResult Function(ScheduleStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadedRooms != null) {
      return loadedRooms(this);
    }
    return orElse();
  }
}

abstract class ScheduleStateLoadedRooms implements ScheduleState {
  const factory ScheduleStateLoadedRooms(
      {required final List<RoomModel> rooms}) = _$ScheduleStateLoadedRoomsImpl;

  List<RoomModel> get rooms;

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleStateLoadedRoomsImplCopyWith<_$ScheduleStateLoadedRoomsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleStateLoadingScheduleImplCopyWith<$Res> {
  factory _$$ScheduleStateLoadingScheduleImplCopyWith(
          _$ScheduleStateLoadingScheduleImpl value,
          $Res Function(_$ScheduleStateLoadingScheduleImpl) then) =
      __$$ScheduleStateLoadingScheduleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScheduleStateLoadingScheduleImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res,
        _$ScheduleStateLoadingScheduleImpl>
    implements _$$ScheduleStateLoadingScheduleImplCopyWith<$Res> {
  __$$ScheduleStateLoadingScheduleImplCopyWithImpl(
      _$ScheduleStateLoadingScheduleImpl _value,
      $Res Function(_$ScheduleStateLoadingScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ScheduleStateLoadingScheduleImpl
    implements ScheduleStateLoadingSchedule {
  const _$ScheduleStateLoadingScheduleImpl();

  @override
  String toString() {
    return 'ScheduleState.loadingSchedule()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleStateLoadingScheduleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startLoading,
    required TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)
        startLoaded,
    required TResult Function() loadingDepartments,
    required TResult Function(List<DepartmentModel> departments)
        loadedDepartments,
    required TResult Function() loadingTeachers,
    required TResult Function(List<TeacherModel> teachers) loadedTeachers,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function() loadingRooms,
    required TResult Function(List<RoomModel> rooms) loadedRooms,
    required TResult Function() loadingSchedule,
    required TResult Function(List<ScheduleModel> schedule) loadedSchedule,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)
        loaded,
  }) {
    return loadingSchedule();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startLoading,
    TResult? Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult? Function()? loadingDepartments,
    TResult? Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult? Function()? loadingTeachers,
    TResult? Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult? Function()? loadingGroups,
    TResult? Function(List<GroupModel> groups)? loadedGroups,
    TResult? Function()? loadingRooms,
    TResult? Function(List<RoomModel> rooms)? loadedRooms,
    TResult? Function()? loadingSchedule,
    TResult? Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
  }) {
    return loadingSchedule?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startLoading,
    TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult Function()? loadingDepartments,
    TResult Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult Function()? loadingTeachers,
    TResult Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult Function()? loadingGroups,
    TResult Function(List<GroupModel> groups)? loadedGroups,
    TResult Function()? loadingRooms,
    TResult Function(List<RoomModel> rooms)? loadedRooms,
    TResult Function()? loadingSchedule,
    TResult Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
    required TResult orElse(),
  }) {
    if (loadingSchedule != null) {
      return loadingSchedule();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleStateStartLoading value) startLoading,
    required TResult Function(ScheduleStateStartLoaded value) startLoaded,
    required TResult Function(ScheduleStateLoadingDepartments value)
        loadingDepartments,
    required TResult Function(ScheduleStateLoadedDepartments value)
        loadedDepartments,
    required TResult Function(ScheduleStateLoadingTeachers value)
        loadingTeachers,
    required TResult Function(ScheduleStateLoadedTeachers value) loadedTeachers,
    required TResult Function(ScheduleStateLoadingGroups value) loadingGroups,
    required TResult Function(ScheduleStateLoadedGroups value) loadedGroups,
    required TResult Function(ScheduleStateLoadingRooms value) loadingRooms,
    required TResult Function(ScheduleStateLoadedRooms value) loadedRooms,
    required TResult Function(ScheduleStateLoadingSchedule value)
        loadingSchedule,
    required TResult Function(ScheduleStateLoadedSchedule value) loadedSchedule,
    required TResult Function(ScheduleStateError value) error,
    required TResult Function(ScheduleStateEndedSession value) endedSession,
    required TResult Function(ScheduleStateToLoaded value) loaded,
  }) {
    return loadingSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleStateStartLoading value)? startLoading,
    TResult? Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult? Function(ScheduleStateLoadingDepartments value)?
        loadingDepartments,
    TResult? Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult? Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult? Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult? Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult? Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult? Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult? Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult? Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult? Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult? Function(ScheduleStateError value)? error,
    TResult? Function(ScheduleStateEndedSession value)? endedSession,
    TResult? Function(ScheduleStateToLoaded value)? loaded,
  }) {
    return loadingSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleStateStartLoading value)? startLoading,
    TResult Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult Function(ScheduleStateLoadingDepartments value)? loadingDepartments,
    TResult Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult Function(ScheduleStateError value)? error,
    TResult Function(ScheduleStateEndedSession value)? endedSession,
    TResult Function(ScheduleStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadingSchedule != null) {
      return loadingSchedule(this);
    }
    return orElse();
  }
}

abstract class ScheduleStateLoadingSchedule implements ScheduleState {
  const factory ScheduleStateLoadingSchedule() =
      _$ScheduleStateLoadingScheduleImpl;
}

/// @nodoc
abstract class _$$ScheduleStateLoadedScheduleImplCopyWith<$Res> {
  factory _$$ScheduleStateLoadedScheduleImplCopyWith(
          _$ScheduleStateLoadedScheduleImpl value,
          $Res Function(_$ScheduleStateLoadedScheduleImpl) then) =
      __$$ScheduleStateLoadedScheduleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ScheduleModel> schedule});
}

/// @nodoc
class __$$ScheduleStateLoadedScheduleImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$ScheduleStateLoadedScheduleImpl>
    implements _$$ScheduleStateLoadedScheduleImplCopyWith<$Res> {
  __$$ScheduleStateLoadedScheduleImplCopyWithImpl(
      _$ScheduleStateLoadedScheduleImpl _value,
      $Res Function(_$ScheduleStateLoadedScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedule = null,
  }) {
    return _then(_$ScheduleStateLoadedScheduleImpl(
      schedule: null == schedule
          ? _value._schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<ScheduleModel>,
    ));
  }
}

/// @nodoc

class _$ScheduleStateLoadedScheduleImpl implements ScheduleStateLoadedSchedule {
  const _$ScheduleStateLoadedScheduleImpl(
      {required final List<ScheduleModel> schedule})
      : _schedule = schedule;

  final List<ScheduleModel> _schedule;
  @override
  List<ScheduleModel> get schedule {
    if (_schedule is EqualUnmodifiableListView) return _schedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedule);
  }

  @override
  String toString() {
    return 'ScheduleState.loadedSchedule(schedule: $schedule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleStateLoadedScheduleImpl &&
            const DeepCollectionEquality().equals(other._schedule, _schedule));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_schedule));

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleStateLoadedScheduleImplCopyWith<_$ScheduleStateLoadedScheduleImpl>
      get copyWith => __$$ScheduleStateLoadedScheduleImplCopyWithImpl<
          _$ScheduleStateLoadedScheduleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startLoading,
    required TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)
        startLoaded,
    required TResult Function() loadingDepartments,
    required TResult Function(List<DepartmentModel> departments)
        loadedDepartments,
    required TResult Function() loadingTeachers,
    required TResult Function(List<TeacherModel> teachers) loadedTeachers,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function() loadingRooms,
    required TResult Function(List<RoomModel> rooms) loadedRooms,
    required TResult Function() loadingSchedule,
    required TResult Function(List<ScheduleModel> schedule) loadedSchedule,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)
        loaded,
  }) {
    return loadedSchedule(schedule);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startLoading,
    TResult? Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult? Function()? loadingDepartments,
    TResult? Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult? Function()? loadingTeachers,
    TResult? Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult? Function()? loadingGroups,
    TResult? Function(List<GroupModel> groups)? loadedGroups,
    TResult? Function()? loadingRooms,
    TResult? Function(List<RoomModel> rooms)? loadedRooms,
    TResult? Function()? loadingSchedule,
    TResult? Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
  }) {
    return loadedSchedule?.call(schedule);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startLoading,
    TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult Function()? loadingDepartments,
    TResult Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult Function()? loadingTeachers,
    TResult Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult Function()? loadingGroups,
    TResult Function(List<GroupModel> groups)? loadedGroups,
    TResult Function()? loadingRooms,
    TResult Function(List<RoomModel> rooms)? loadedRooms,
    TResult Function()? loadingSchedule,
    TResult Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
    required TResult orElse(),
  }) {
    if (loadedSchedule != null) {
      return loadedSchedule(schedule);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleStateStartLoading value) startLoading,
    required TResult Function(ScheduleStateStartLoaded value) startLoaded,
    required TResult Function(ScheduleStateLoadingDepartments value)
        loadingDepartments,
    required TResult Function(ScheduleStateLoadedDepartments value)
        loadedDepartments,
    required TResult Function(ScheduleStateLoadingTeachers value)
        loadingTeachers,
    required TResult Function(ScheduleStateLoadedTeachers value) loadedTeachers,
    required TResult Function(ScheduleStateLoadingGroups value) loadingGroups,
    required TResult Function(ScheduleStateLoadedGroups value) loadedGroups,
    required TResult Function(ScheduleStateLoadingRooms value) loadingRooms,
    required TResult Function(ScheduleStateLoadedRooms value) loadedRooms,
    required TResult Function(ScheduleStateLoadingSchedule value)
        loadingSchedule,
    required TResult Function(ScheduleStateLoadedSchedule value) loadedSchedule,
    required TResult Function(ScheduleStateError value) error,
    required TResult Function(ScheduleStateEndedSession value) endedSession,
    required TResult Function(ScheduleStateToLoaded value) loaded,
  }) {
    return loadedSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleStateStartLoading value)? startLoading,
    TResult? Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult? Function(ScheduleStateLoadingDepartments value)?
        loadingDepartments,
    TResult? Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult? Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult? Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult? Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult? Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult? Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult? Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult? Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult? Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult? Function(ScheduleStateError value)? error,
    TResult? Function(ScheduleStateEndedSession value)? endedSession,
    TResult? Function(ScheduleStateToLoaded value)? loaded,
  }) {
    return loadedSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleStateStartLoading value)? startLoading,
    TResult Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult Function(ScheduleStateLoadingDepartments value)? loadingDepartments,
    TResult Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult Function(ScheduleStateError value)? error,
    TResult Function(ScheduleStateEndedSession value)? endedSession,
    TResult Function(ScheduleStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadedSchedule != null) {
      return loadedSchedule(this);
    }
    return orElse();
  }
}

abstract class ScheduleStateLoadedSchedule implements ScheduleState {
  const factory ScheduleStateLoadedSchedule(
          {required final List<ScheduleModel> schedule}) =
      _$ScheduleStateLoadedScheduleImpl;

  List<ScheduleModel> get schedule;

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleStateLoadedScheduleImplCopyWith<_$ScheduleStateLoadedScheduleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleStateErrorImplCopyWith<$Res> {
  factory _$$ScheduleStateErrorImplCopyWith(_$ScheduleStateErrorImpl value,
          $Res Function(_$ScheduleStateErrorImpl) then) =
      __$$ScheduleStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ScheduleStateErrorImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$ScheduleStateErrorImpl>
    implements _$$ScheduleStateErrorImplCopyWith<$Res> {
  __$$ScheduleStateErrorImplCopyWithImpl(_$ScheduleStateErrorImpl _value,
      $Res Function(_$ScheduleStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ScheduleStateErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ScheduleStateErrorImpl implements ScheduleStateError {
  const _$ScheduleStateErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ScheduleState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleStateErrorImplCopyWith<_$ScheduleStateErrorImpl> get copyWith =>
      __$$ScheduleStateErrorImplCopyWithImpl<_$ScheduleStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startLoading,
    required TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)
        startLoaded,
    required TResult Function() loadingDepartments,
    required TResult Function(List<DepartmentModel> departments)
        loadedDepartments,
    required TResult Function() loadingTeachers,
    required TResult Function(List<TeacherModel> teachers) loadedTeachers,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function() loadingRooms,
    required TResult Function(List<RoomModel> rooms) loadedRooms,
    required TResult Function() loadingSchedule,
    required TResult Function(List<ScheduleModel> schedule) loadedSchedule,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)
        loaded,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startLoading,
    TResult? Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult? Function()? loadingDepartments,
    TResult? Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult? Function()? loadingTeachers,
    TResult? Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult? Function()? loadingGroups,
    TResult? Function(List<GroupModel> groups)? loadedGroups,
    TResult? Function()? loadingRooms,
    TResult? Function(List<RoomModel> rooms)? loadedRooms,
    TResult? Function()? loadingSchedule,
    TResult? Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startLoading,
    TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult Function()? loadingDepartments,
    TResult Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult Function()? loadingTeachers,
    TResult Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult Function()? loadingGroups,
    TResult Function(List<GroupModel> groups)? loadedGroups,
    TResult Function()? loadingRooms,
    TResult Function(List<RoomModel> rooms)? loadedRooms,
    TResult Function()? loadingSchedule,
    TResult Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleStateStartLoading value) startLoading,
    required TResult Function(ScheduleStateStartLoaded value) startLoaded,
    required TResult Function(ScheduleStateLoadingDepartments value)
        loadingDepartments,
    required TResult Function(ScheduleStateLoadedDepartments value)
        loadedDepartments,
    required TResult Function(ScheduleStateLoadingTeachers value)
        loadingTeachers,
    required TResult Function(ScheduleStateLoadedTeachers value) loadedTeachers,
    required TResult Function(ScheduleStateLoadingGroups value) loadingGroups,
    required TResult Function(ScheduleStateLoadedGroups value) loadedGroups,
    required TResult Function(ScheduleStateLoadingRooms value) loadingRooms,
    required TResult Function(ScheduleStateLoadedRooms value) loadedRooms,
    required TResult Function(ScheduleStateLoadingSchedule value)
        loadingSchedule,
    required TResult Function(ScheduleStateLoadedSchedule value) loadedSchedule,
    required TResult Function(ScheduleStateError value) error,
    required TResult Function(ScheduleStateEndedSession value) endedSession,
    required TResult Function(ScheduleStateToLoaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleStateStartLoading value)? startLoading,
    TResult? Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult? Function(ScheduleStateLoadingDepartments value)?
        loadingDepartments,
    TResult? Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult? Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult? Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult? Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult? Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult? Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult? Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult? Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult? Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult? Function(ScheduleStateError value)? error,
    TResult? Function(ScheduleStateEndedSession value)? endedSession,
    TResult? Function(ScheduleStateToLoaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleStateStartLoading value)? startLoading,
    TResult Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult Function(ScheduleStateLoadingDepartments value)? loadingDepartments,
    TResult Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult Function(ScheduleStateError value)? error,
    TResult Function(ScheduleStateEndedSession value)? endedSession,
    TResult Function(ScheduleStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ScheduleStateError implements ScheduleState {
  const factory ScheduleStateError({required final String error}) =
      _$ScheduleStateErrorImpl;

  String get error;

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleStateErrorImplCopyWith<_$ScheduleStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleStateEndedSessionImplCopyWith<$Res> {
  factory _$$ScheduleStateEndedSessionImplCopyWith(
          _$ScheduleStateEndedSessionImpl value,
          $Res Function(_$ScheduleStateEndedSessionImpl) then) =
      __$$ScheduleStateEndedSessionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScheduleStateEndedSessionImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$ScheduleStateEndedSessionImpl>
    implements _$$ScheduleStateEndedSessionImplCopyWith<$Res> {
  __$$ScheduleStateEndedSessionImplCopyWithImpl(
      _$ScheduleStateEndedSessionImpl _value,
      $Res Function(_$ScheduleStateEndedSessionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ScheduleStateEndedSessionImpl implements ScheduleStateEndedSession {
  const _$ScheduleStateEndedSessionImpl();

  @override
  String toString() {
    return 'ScheduleState.endedSession()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleStateEndedSessionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startLoading,
    required TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)
        startLoaded,
    required TResult Function() loadingDepartments,
    required TResult Function(List<DepartmentModel> departments)
        loadedDepartments,
    required TResult Function() loadingTeachers,
    required TResult Function(List<TeacherModel> teachers) loadedTeachers,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function() loadingRooms,
    required TResult Function(List<RoomModel> rooms) loadedRooms,
    required TResult Function() loadingSchedule,
    required TResult Function(List<ScheduleModel> schedule) loadedSchedule,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)
        loaded,
  }) {
    return endedSession();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startLoading,
    TResult? Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult? Function()? loadingDepartments,
    TResult? Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult? Function()? loadingTeachers,
    TResult? Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult? Function()? loadingGroups,
    TResult? Function(List<GroupModel> groups)? loadedGroups,
    TResult? Function()? loadingRooms,
    TResult? Function(List<RoomModel> rooms)? loadedRooms,
    TResult? Function()? loadingSchedule,
    TResult? Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
  }) {
    return endedSession?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startLoading,
    TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult Function()? loadingDepartments,
    TResult Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult Function()? loadingTeachers,
    TResult Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult Function()? loadingGroups,
    TResult Function(List<GroupModel> groups)? loadedGroups,
    TResult Function()? loadingRooms,
    TResult Function(List<RoomModel> rooms)? loadedRooms,
    TResult Function()? loadingSchedule,
    TResult Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
    required TResult orElse(),
  }) {
    if (endedSession != null) {
      return endedSession();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleStateStartLoading value) startLoading,
    required TResult Function(ScheduleStateStartLoaded value) startLoaded,
    required TResult Function(ScheduleStateLoadingDepartments value)
        loadingDepartments,
    required TResult Function(ScheduleStateLoadedDepartments value)
        loadedDepartments,
    required TResult Function(ScheduleStateLoadingTeachers value)
        loadingTeachers,
    required TResult Function(ScheduleStateLoadedTeachers value) loadedTeachers,
    required TResult Function(ScheduleStateLoadingGroups value) loadingGroups,
    required TResult Function(ScheduleStateLoadedGroups value) loadedGroups,
    required TResult Function(ScheduleStateLoadingRooms value) loadingRooms,
    required TResult Function(ScheduleStateLoadedRooms value) loadedRooms,
    required TResult Function(ScheduleStateLoadingSchedule value)
        loadingSchedule,
    required TResult Function(ScheduleStateLoadedSchedule value) loadedSchedule,
    required TResult Function(ScheduleStateError value) error,
    required TResult Function(ScheduleStateEndedSession value) endedSession,
    required TResult Function(ScheduleStateToLoaded value) loaded,
  }) {
    return endedSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleStateStartLoading value)? startLoading,
    TResult? Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult? Function(ScheduleStateLoadingDepartments value)?
        loadingDepartments,
    TResult? Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult? Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult? Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult? Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult? Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult? Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult? Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult? Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult? Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult? Function(ScheduleStateError value)? error,
    TResult? Function(ScheduleStateEndedSession value)? endedSession,
    TResult? Function(ScheduleStateToLoaded value)? loaded,
  }) {
    return endedSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleStateStartLoading value)? startLoading,
    TResult Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult Function(ScheduleStateLoadingDepartments value)? loadingDepartments,
    TResult Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult Function(ScheduleStateError value)? error,
    TResult Function(ScheduleStateEndedSession value)? endedSession,
    TResult Function(ScheduleStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (endedSession != null) {
      return endedSession(this);
    }
    return orElse();
  }
}

abstract class ScheduleStateEndedSession implements ScheduleState {
  const factory ScheduleStateEndedSession() = _$ScheduleStateEndedSessionImpl;
}

/// @nodoc
abstract class _$$ScheduleStateToLoadedImplCopyWith<$Res> {
  factory _$$ScheduleStateToLoadedImplCopyWith(
          _$ScheduleStateToLoadedImpl value,
          $Res Function(_$ScheduleStateToLoadedImpl) then) =
      __$$ScheduleStateToLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<InstituteModel> institutes,
      InstituteModel? selectedInstitute,
      List<BuildingModel> buildings,
      BuildingModel? selectedBuilding,
      List<SubjectModel> subjects,
      SubjectModel? selectedSubject,
      List<DepartmentModel> departments,
      DepartmentModel? selectedDepartment,
      List<TeacherModel> teachers,
      TeacherModel? selectedTeacher,
      List<GroupModel> groups,
      GroupModel? selectedGroup,
      List<RoomModel> rooms,
      RoomModel? selectedRoom,
      List<ScheduleModel> schedule});
}

/// @nodoc
class __$$ScheduleStateToLoadedImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$ScheduleStateToLoadedImpl>
    implements _$$ScheduleStateToLoadedImplCopyWith<$Res> {
  __$$ScheduleStateToLoadedImplCopyWithImpl(_$ScheduleStateToLoadedImpl _value,
      $Res Function(_$ScheduleStateToLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? institutes = null,
    Object? selectedInstitute = freezed,
    Object? buildings = null,
    Object? selectedBuilding = freezed,
    Object? subjects = null,
    Object? selectedSubject = freezed,
    Object? departments = null,
    Object? selectedDepartment = freezed,
    Object? teachers = null,
    Object? selectedTeacher = freezed,
    Object? groups = null,
    Object? selectedGroup = freezed,
    Object? rooms = null,
    Object? selectedRoom = freezed,
    Object? schedule = null,
  }) {
    return _then(_$ScheduleStateToLoadedImpl(
      institutes: null == institutes
          ? _value._institutes
          : institutes // ignore: cast_nullable_to_non_nullable
              as List<InstituteModel>,
      selectedInstitute: freezed == selectedInstitute
          ? _value.selectedInstitute
          : selectedInstitute // ignore: cast_nullable_to_non_nullable
              as InstituteModel?,
      buildings: null == buildings
          ? _value._buildings
          : buildings // ignore: cast_nullable_to_non_nullable
              as List<BuildingModel>,
      selectedBuilding: freezed == selectedBuilding
          ? _value.selectedBuilding
          : selectedBuilding // ignore: cast_nullable_to_non_nullable
              as BuildingModel?,
      subjects: null == subjects
          ? _value._subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<SubjectModel>,
      selectedSubject: freezed == selectedSubject
          ? _value.selectedSubject
          : selectedSubject // ignore: cast_nullable_to_non_nullable
              as SubjectModel?,
      departments: null == departments
          ? _value._departments
          : departments // ignore: cast_nullable_to_non_nullable
              as List<DepartmentModel>,
      selectedDepartment: freezed == selectedDepartment
          ? _value.selectedDepartment
          : selectedDepartment // ignore: cast_nullable_to_non_nullable
              as DepartmentModel?,
      teachers: null == teachers
          ? _value._teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<TeacherModel>,
      selectedTeacher: freezed == selectedTeacher
          ? _value.selectedTeacher
          : selectedTeacher // ignore: cast_nullable_to_non_nullable
              as TeacherModel?,
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupModel>,
      selectedGroup: freezed == selectedGroup
          ? _value.selectedGroup
          : selectedGroup // ignore: cast_nullable_to_non_nullable
              as GroupModel?,
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>,
      selectedRoom: freezed == selectedRoom
          ? _value.selectedRoom
          : selectedRoom // ignore: cast_nullable_to_non_nullable
              as RoomModel?,
      schedule: null == schedule
          ? _value._schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<ScheduleModel>,
    ));
  }
}

/// @nodoc

class _$ScheduleStateToLoadedImpl implements ScheduleStateToLoaded {
  const _$ScheduleStateToLoadedImpl(
      {required final List<InstituteModel> institutes,
      required this.selectedInstitute,
      required final List<BuildingModel> buildings,
      required this.selectedBuilding,
      required final List<SubjectModel> subjects,
      required this.selectedSubject,
      required final List<DepartmentModel> departments,
      required this.selectedDepartment,
      required final List<TeacherModel> teachers,
      required this.selectedTeacher,
      required final List<GroupModel> groups,
      required this.selectedGroup,
      required final List<RoomModel> rooms,
      required this.selectedRoom,
      required final List<ScheduleModel> schedule})
      : _institutes = institutes,
        _buildings = buildings,
        _subjects = subjects,
        _departments = departments,
        _teachers = teachers,
        _groups = groups,
        _rooms = rooms,
        _schedule = schedule;

  final List<InstituteModel> _institutes;
  @override
  List<InstituteModel> get institutes {
    if (_institutes is EqualUnmodifiableListView) return _institutes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_institutes);
  }

  @override
  final InstituteModel? selectedInstitute;
  final List<BuildingModel> _buildings;
  @override
  List<BuildingModel> get buildings {
    if (_buildings is EqualUnmodifiableListView) return _buildings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_buildings);
  }

  @override
  final BuildingModel? selectedBuilding;
  final List<SubjectModel> _subjects;
  @override
  List<SubjectModel> get subjects {
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subjects);
  }

  @override
  final SubjectModel? selectedSubject;
  final List<DepartmentModel> _departments;
  @override
  List<DepartmentModel> get departments {
    if (_departments is EqualUnmodifiableListView) return _departments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_departments);
  }

  @override
  final DepartmentModel? selectedDepartment;
  final List<TeacherModel> _teachers;
  @override
  List<TeacherModel> get teachers {
    if (_teachers is EqualUnmodifiableListView) return _teachers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teachers);
  }

  @override
  final TeacherModel? selectedTeacher;
  final List<GroupModel> _groups;
  @override
  List<GroupModel> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  final GroupModel? selectedGroup;
  final List<RoomModel> _rooms;
  @override
  List<RoomModel> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  final RoomModel? selectedRoom;
  final List<ScheduleModel> _schedule;
  @override
  List<ScheduleModel> get schedule {
    if (_schedule is EqualUnmodifiableListView) return _schedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedule);
  }

  @override
  String toString() {
    return 'ScheduleState.loaded(institutes: $institutes, selectedInstitute: $selectedInstitute, buildings: $buildings, selectedBuilding: $selectedBuilding, subjects: $subjects, selectedSubject: $selectedSubject, departments: $departments, selectedDepartment: $selectedDepartment, teachers: $teachers, selectedTeacher: $selectedTeacher, groups: $groups, selectedGroup: $selectedGroup, rooms: $rooms, selectedRoom: $selectedRoom, schedule: $schedule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleStateToLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._institutes, _institutes) &&
            (identical(other.selectedInstitute, selectedInstitute) ||
                other.selectedInstitute == selectedInstitute) &&
            const DeepCollectionEquality()
                .equals(other._buildings, _buildings) &&
            (identical(other.selectedBuilding, selectedBuilding) ||
                other.selectedBuilding == selectedBuilding) &&
            const DeepCollectionEquality().equals(other._subjects, _subjects) &&
            (identical(other.selectedSubject, selectedSubject) ||
                other.selectedSubject == selectedSubject) &&
            const DeepCollectionEquality()
                .equals(other._departments, _departments) &&
            (identical(other.selectedDepartment, selectedDepartment) ||
                other.selectedDepartment == selectedDepartment) &&
            const DeepCollectionEquality().equals(other._teachers, _teachers) &&
            (identical(other.selectedTeacher, selectedTeacher) ||
                other.selectedTeacher == selectedTeacher) &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            (identical(other.selectedGroup, selectedGroup) ||
                other.selectedGroup == selectedGroup) &&
            const DeepCollectionEquality().equals(other._rooms, _rooms) &&
            (identical(other.selectedRoom, selectedRoom) ||
                other.selectedRoom == selectedRoom) &&
            const DeepCollectionEquality().equals(other._schedule, _schedule));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_institutes),
      selectedInstitute,
      const DeepCollectionEquality().hash(_buildings),
      selectedBuilding,
      const DeepCollectionEquality().hash(_subjects),
      selectedSubject,
      const DeepCollectionEquality().hash(_departments),
      selectedDepartment,
      const DeepCollectionEquality().hash(_teachers),
      selectedTeacher,
      const DeepCollectionEquality().hash(_groups),
      selectedGroup,
      const DeepCollectionEquality().hash(_rooms),
      selectedRoom,
      const DeepCollectionEquality().hash(_schedule));

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleStateToLoadedImplCopyWith<_$ScheduleStateToLoadedImpl>
      get copyWith => __$$ScheduleStateToLoadedImplCopyWithImpl<
          _$ScheduleStateToLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startLoading,
    required TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)
        startLoaded,
    required TResult Function() loadingDepartments,
    required TResult Function(List<DepartmentModel> departments)
        loadedDepartments,
    required TResult Function() loadingTeachers,
    required TResult Function(List<TeacherModel> teachers) loadedTeachers,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function() loadingRooms,
    required TResult Function(List<RoomModel> rooms) loadedRooms,
    required TResult Function() loadingSchedule,
    required TResult Function(List<ScheduleModel> schedule) loadedSchedule,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)
        loaded,
  }) {
    return loaded(
        institutes,
        selectedInstitute,
        buildings,
        selectedBuilding,
        subjects,
        selectedSubject,
        departments,
        selectedDepartment,
        teachers,
        selectedTeacher,
        groups,
        selectedGroup,
        rooms,
        selectedRoom,
        schedule);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startLoading,
    TResult? Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult? Function()? loadingDepartments,
    TResult? Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult? Function()? loadingTeachers,
    TResult? Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult? Function()? loadingGroups,
    TResult? Function(List<GroupModel> groups)? loadedGroups,
    TResult? Function()? loadingRooms,
    TResult? Function(List<RoomModel> rooms)? loadedRooms,
    TResult? Function()? loadingSchedule,
    TResult? Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
  }) {
    return loaded?.call(
        institutes,
        selectedInstitute,
        buildings,
        selectedBuilding,
        subjects,
        selectedSubject,
        departments,
        selectedDepartment,
        teachers,
        selectedTeacher,
        groups,
        selectedGroup,
        rooms,
        selectedRoom,
        schedule);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startLoading,
    TResult Function(List<InstituteModel> institutes,
            List<BuildingModel> buildings, List<SubjectModel> subjects)?
        startLoaded,
    TResult Function()? loadingDepartments,
    TResult Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult Function()? loadingTeachers,
    TResult Function(List<TeacherModel> teachers)? loadedTeachers,
    TResult Function()? loadingGroups,
    TResult Function(List<GroupModel> groups)? loadedGroups,
    TResult Function()? loadingRooms,
    TResult Function(List<RoomModel> rooms)? loadedRooms,
    TResult Function()? loadingSchedule,
    TResult Function(List<ScheduleModel> schedule)? loadedSchedule,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<BuildingModel> buildings,
            BuildingModel? selectedBuilding,
            List<SubjectModel> subjects,
            SubjectModel? selectedSubject,
            List<DepartmentModel> departments,
            DepartmentModel? selectedDepartment,
            List<TeacherModel> teachers,
            TeacherModel? selectedTeacher,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<RoomModel> rooms,
            RoomModel? selectedRoom,
            List<ScheduleModel> schedule)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          institutes,
          selectedInstitute,
          buildings,
          selectedBuilding,
          subjects,
          selectedSubject,
          departments,
          selectedDepartment,
          teachers,
          selectedTeacher,
          groups,
          selectedGroup,
          rooms,
          selectedRoom,
          schedule);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleStateStartLoading value) startLoading,
    required TResult Function(ScheduleStateStartLoaded value) startLoaded,
    required TResult Function(ScheduleStateLoadingDepartments value)
        loadingDepartments,
    required TResult Function(ScheduleStateLoadedDepartments value)
        loadedDepartments,
    required TResult Function(ScheduleStateLoadingTeachers value)
        loadingTeachers,
    required TResult Function(ScheduleStateLoadedTeachers value) loadedTeachers,
    required TResult Function(ScheduleStateLoadingGroups value) loadingGroups,
    required TResult Function(ScheduleStateLoadedGroups value) loadedGroups,
    required TResult Function(ScheduleStateLoadingRooms value) loadingRooms,
    required TResult Function(ScheduleStateLoadedRooms value) loadedRooms,
    required TResult Function(ScheduleStateLoadingSchedule value)
        loadingSchedule,
    required TResult Function(ScheduleStateLoadedSchedule value) loadedSchedule,
    required TResult Function(ScheduleStateError value) error,
    required TResult Function(ScheduleStateEndedSession value) endedSession,
    required TResult Function(ScheduleStateToLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleStateStartLoading value)? startLoading,
    TResult? Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult? Function(ScheduleStateLoadingDepartments value)?
        loadingDepartments,
    TResult? Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult? Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult? Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult? Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult? Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult? Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult? Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult? Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult? Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult? Function(ScheduleStateError value)? error,
    TResult? Function(ScheduleStateEndedSession value)? endedSession,
    TResult? Function(ScheduleStateToLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleStateStartLoading value)? startLoading,
    TResult Function(ScheduleStateStartLoaded value)? startLoaded,
    TResult Function(ScheduleStateLoadingDepartments value)? loadingDepartments,
    TResult Function(ScheduleStateLoadedDepartments value)? loadedDepartments,
    TResult Function(ScheduleStateLoadingTeachers value)? loadingTeachers,
    TResult Function(ScheduleStateLoadedTeachers value)? loadedTeachers,
    TResult Function(ScheduleStateLoadingGroups value)? loadingGroups,
    TResult Function(ScheduleStateLoadedGroups value)? loadedGroups,
    TResult Function(ScheduleStateLoadingRooms value)? loadingRooms,
    TResult Function(ScheduleStateLoadedRooms value)? loadedRooms,
    TResult Function(ScheduleStateLoadingSchedule value)? loadingSchedule,
    TResult Function(ScheduleStateLoadedSchedule value)? loadedSchedule,
    TResult Function(ScheduleStateError value)? error,
    TResult Function(ScheduleStateEndedSession value)? endedSession,
    TResult Function(ScheduleStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ScheduleStateToLoaded implements ScheduleState {
  const factory ScheduleStateToLoaded(
          {required final List<InstituteModel> institutes,
          required final InstituteModel? selectedInstitute,
          required final List<BuildingModel> buildings,
          required final BuildingModel? selectedBuilding,
          required final List<SubjectModel> subjects,
          required final SubjectModel? selectedSubject,
          required final List<DepartmentModel> departments,
          required final DepartmentModel? selectedDepartment,
          required final List<TeacherModel> teachers,
          required final TeacherModel? selectedTeacher,
          required final List<GroupModel> groups,
          required final GroupModel? selectedGroup,
          required final List<RoomModel> rooms,
          required final RoomModel? selectedRoom,
          required final List<ScheduleModel> schedule}) =
      _$ScheduleStateToLoadedImpl;

  List<InstituteModel> get institutes;
  InstituteModel? get selectedInstitute;
  List<BuildingModel> get buildings;
  BuildingModel? get selectedBuilding;
  List<SubjectModel> get subjects;
  SubjectModel? get selectedSubject;
  List<DepartmentModel> get departments;
  DepartmentModel? get selectedDepartment;
  List<TeacherModel> get teachers;
  TeacherModel? get selectedTeacher;
  List<GroupModel> get groups;
  GroupModel? get selectedGroup;
  List<RoomModel> get rooms;
  RoomModel? get selectedRoom;
  List<ScheduleModel> get schedule;

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleStateToLoadedImplCopyWith<_$ScheduleStateToLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
