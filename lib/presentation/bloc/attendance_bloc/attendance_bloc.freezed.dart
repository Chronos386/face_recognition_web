// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AttendanceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInstitutes,
    required TResult Function(int instituteId) loadGroups,
    required TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)
        loadSchedule,
    required TResult Function(List<StudentModel> students, int groupId,
            String name, String email, String password)
        addStudent,
    required TResult Function(List<StudentModel> students, int studentId,
            int groupId, String name)
        updateStudent,
    required TResult Function(List<StudentModel> students, int studentId)
        deleteStudent,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)
        toLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInstitutes,
    TResult? Function(int instituteId)? loadGroups,
    TResult? Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadSchedule,
    TResult? Function(List<StudentModel> students, int groupId, String name,
            String email, String password)?
        addStudent,
    TResult? Function(List<StudentModel> students, int studentId, int groupId,
            String name)?
        updateStudent,
    TResult? Function(List<StudentModel> students, int studentId)?
        deleteStudent,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        toLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInstitutes,
    TResult Function(int instituteId)? loadGroups,
    TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadSchedule,
    TResult Function(List<StudentModel> students, int groupId, String name,
            String email, String password)?
        addStudent,
    TResult Function(List<StudentModel> students, int studentId, int groupId,
            String name)?
        updateStudent,
    TResult Function(List<StudentModel> students, int studentId)? deleteStudent,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        toLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttendanceEventLoadInstitutes value)
        loadInstitutes,
    required TResult Function(AttendanceEventLoadGroups value) loadGroups,
    required TResult Function(AttendanceEventLoadSchedule value) loadSchedule,
    required TResult Function(AttendanceEventAddStudent value) addStudent,
    required TResult Function(AttendanceEventUpdateStudent value) updateStudent,
    required TResult Function(AttendanceEventDeleteStudent value) deleteStudent,
    required TResult Function(AttendanceEventToLoaded value) toLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttendanceEventLoadInstitutes value)? loadInstitutes,
    TResult? Function(AttendanceEventLoadGroups value)? loadGroups,
    TResult? Function(AttendanceEventLoadSchedule value)? loadSchedule,
    TResult? Function(AttendanceEventAddStudent value)? addStudent,
    TResult? Function(AttendanceEventUpdateStudent value)? updateStudent,
    TResult? Function(AttendanceEventDeleteStudent value)? deleteStudent,
    TResult? Function(AttendanceEventToLoaded value)? toLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttendanceEventLoadInstitutes value)? loadInstitutes,
    TResult Function(AttendanceEventLoadGroups value)? loadGroups,
    TResult Function(AttendanceEventLoadSchedule value)? loadSchedule,
    TResult Function(AttendanceEventAddStudent value)? addStudent,
    TResult Function(AttendanceEventUpdateStudent value)? updateStudent,
    TResult Function(AttendanceEventDeleteStudent value)? deleteStudent,
    TResult Function(AttendanceEventToLoaded value)? toLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceEventCopyWith<$Res> {
  factory $AttendanceEventCopyWith(
          AttendanceEvent value, $Res Function(AttendanceEvent) then) =
      _$AttendanceEventCopyWithImpl<$Res, AttendanceEvent>;
}

/// @nodoc
class _$AttendanceEventCopyWithImpl<$Res, $Val extends AttendanceEvent>
    implements $AttendanceEventCopyWith<$Res> {
  _$AttendanceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AttendanceEventLoadInstitutesImplCopyWith<$Res> {
  factory _$$AttendanceEventLoadInstitutesImplCopyWith(
          _$AttendanceEventLoadInstitutesImpl value,
          $Res Function(_$AttendanceEventLoadInstitutesImpl) then) =
      __$$AttendanceEventLoadInstitutesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AttendanceEventLoadInstitutesImplCopyWithImpl<$Res>
    extends _$AttendanceEventCopyWithImpl<$Res,
        _$AttendanceEventLoadInstitutesImpl>
    implements _$$AttendanceEventLoadInstitutesImplCopyWith<$Res> {
  __$$AttendanceEventLoadInstitutesImplCopyWithImpl(
      _$AttendanceEventLoadInstitutesImpl _value,
      $Res Function(_$AttendanceEventLoadInstitutesImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AttendanceEventLoadInstitutesImpl
    implements AttendanceEventLoadInstitutes {
  const _$AttendanceEventLoadInstitutesImpl();

  @override
  String toString() {
    return 'AttendanceEvent.loadInstitutes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceEventLoadInstitutesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInstitutes,
    required TResult Function(int instituteId) loadGroups,
    required TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)
        loadSchedule,
    required TResult Function(List<StudentModel> students, int groupId,
            String name, String email, String password)
        addStudent,
    required TResult Function(List<StudentModel> students, int studentId,
            int groupId, String name)
        updateStudent,
    required TResult Function(List<StudentModel> students, int studentId)
        deleteStudent,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)
        toLoaded,
  }) {
    return loadInstitutes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInstitutes,
    TResult? Function(int instituteId)? loadGroups,
    TResult? Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadSchedule,
    TResult? Function(List<StudentModel> students, int groupId, String name,
            String email, String password)?
        addStudent,
    TResult? Function(List<StudentModel> students, int studentId, int groupId,
            String name)?
        updateStudent,
    TResult? Function(List<StudentModel> students, int studentId)?
        deleteStudent,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        toLoaded,
  }) {
    return loadInstitutes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInstitutes,
    TResult Function(int instituteId)? loadGroups,
    TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadSchedule,
    TResult Function(List<StudentModel> students, int groupId, String name,
            String email, String password)?
        addStudent,
    TResult Function(List<StudentModel> students, int studentId, int groupId,
            String name)?
        updateStudent,
    TResult Function(List<StudentModel> students, int studentId)? deleteStudent,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        toLoaded,
    required TResult orElse(),
  }) {
    if (loadInstitutes != null) {
      return loadInstitutes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttendanceEventLoadInstitutes value)
        loadInstitutes,
    required TResult Function(AttendanceEventLoadGroups value) loadGroups,
    required TResult Function(AttendanceEventLoadSchedule value) loadSchedule,
    required TResult Function(AttendanceEventAddStudent value) addStudent,
    required TResult Function(AttendanceEventUpdateStudent value) updateStudent,
    required TResult Function(AttendanceEventDeleteStudent value) deleteStudent,
    required TResult Function(AttendanceEventToLoaded value) toLoaded,
  }) {
    return loadInstitutes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttendanceEventLoadInstitutes value)? loadInstitutes,
    TResult? Function(AttendanceEventLoadGroups value)? loadGroups,
    TResult? Function(AttendanceEventLoadSchedule value)? loadSchedule,
    TResult? Function(AttendanceEventAddStudent value)? addStudent,
    TResult? Function(AttendanceEventUpdateStudent value)? updateStudent,
    TResult? Function(AttendanceEventDeleteStudent value)? deleteStudent,
    TResult? Function(AttendanceEventToLoaded value)? toLoaded,
  }) {
    return loadInstitutes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttendanceEventLoadInstitutes value)? loadInstitutes,
    TResult Function(AttendanceEventLoadGroups value)? loadGroups,
    TResult Function(AttendanceEventLoadSchedule value)? loadSchedule,
    TResult Function(AttendanceEventAddStudent value)? addStudent,
    TResult Function(AttendanceEventUpdateStudent value)? updateStudent,
    TResult Function(AttendanceEventDeleteStudent value)? deleteStudent,
    TResult Function(AttendanceEventToLoaded value)? toLoaded,
    required TResult orElse(),
  }) {
    if (loadInstitutes != null) {
      return loadInstitutes(this);
    }
    return orElse();
  }
}

abstract class AttendanceEventLoadInstitutes implements AttendanceEvent {
  const factory AttendanceEventLoadInstitutes() =
      _$AttendanceEventLoadInstitutesImpl;
}

/// @nodoc
abstract class _$$AttendanceEventLoadGroupsImplCopyWith<$Res> {
  factory _$$AttendanceEventLoadGroupsImplCopyWith(
          _$AttendanceEventLoadGroupsImpl value,
          $Res Function(_$AttendanceEventLoadGroupsImpl) then) =
      __$$AttendanceEventLoadGroupsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int instituteId});
}

/// @nodoc
class __$$AttendanceEventLoadGroupsImplCopyWithImpl<$Res>
    extends _$AttendanceEventCopyWithImpl<$Res, _$AttendanceEventLoadGroupsImpl>
    implements _$$AttendanceEventLoadGroupsImplCopyWith<$Res> {
  __$$AttendanceEventLoadGroupsImplCopyWithImpl(
      _$AttendanceEventLoadGroupsImpl _value,
      $Res Function(_$AttendanceEventLoadGroupsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instituteId = null,
  }) {
    return _then(_$AttendanceEventLoadGroupsImpl(
      instituteId: null == instituteId
          ? _value.instituteId
          : instituteId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AttendanceEventLoadGroupsImpl implements AttendanceEventLoadGroups {
  const _$AttendanceEventLoadGroupsImpl({required this.instituteId});

  @override
  final int instituteId;

  @override
  String toString() {
    return 'AttendanceEvent.loadGroups(instituteId: $instituteId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceEventLoadGroupsImpl &&
            (identical(other.instituteId, instituteId) ||
                other.instituteId == instituteId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, instituteId);

  /// Create a copy of AttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceEventLoadGroupsImplCopyWith<_$AttendanceEventLoadGroupsImpl>
      get copyWith => __$$AttendanceEventLoadGroupsImplCopyWithImpl<
          _$AttendanceEventLoadGroupsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInstitutes,
    required TResult Function(int instituteId) loadGroups,
    required TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)
        loadSchedule,
    required TResult Function(List<StudentModel> students, int groupId,
            String name, String email, String password)
        addStudent,
    required TResult Function(List<StudentModel> students, int studentId,
            int groupId, String name)
        updateStudent,
    required TResult Function(List<StudentModel> students, int studentId)
        deleteStudent,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)
        toLoaded,
  }) {
    return loadGroups(instituteId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInstitutes,
    TResult? Function(int instituteId)? loadGroups,
    TResult? Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadSchedule,
    TResult? Function(List<StudentModel> students, int groupId, String name,
            String email, String password)?
        addStudent,
    TResult? Function(List<StudentModel> students, int studentId, int groupId,
            String name)?
        updateStudent,
    TResult? Function(List<StudentModel> students, int studentId)?
        deleteStudent,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        toLoaded,
  }) {
    return loadGroups?.call(instituteId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInstitutes,
    TResult Function(int instituteId)? loadGroups,
    TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadSchedule,
    TResult Function(List<StudentModel> students, int groupId, String name,
            String email, String password)?
        addStudent,
    TResult Function(List<StudentModel> students, int studentId, int groupId,
            String name)?
        updateStudent,
    TResult Function(List<StudentModel> students, int studentId)? deleteStudent,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        toLoaded,
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
    required TResult Function(AttendanceEventLoadInstitutes value)
        loadInstitutes,
    required TResult Function(AttendanceEventLoadGroups value) loadGroups,
    required TResult Function(AttendanceEventLoadSchedule value) loadSchedule,
    required TResult Function(AttendanceEventAddStudent value) addStudent,
    required TResult Function(AttendanceEventUpdateStudent value) updateStudent,
    required TResult Function(AttendanceEventDeleteStudent value) deleteStudent,
    required TResult Function(AttendanceEventToLoaded value) toLoaded,
  }) {
    return loadGroups(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttendanceEventLoadInstitutes value)? loadInstitutes,
    TResult? Function(AttendanceEventLoadGroups value)? loadGroups,
    TResult? Function(AttendanceEventLoadSchedule value)? loadSchedule,
    TResult? Function(AttendanceEventAddStudent value)? addStudent,
    TResult? Function(AttendanceEventUpdateStudent value)? updateStudent,
    TResult? Function(AttendanceEventDeleteStudent value)? deleteStudent,
    TResult? Function(AttendanceEventToLoaded value)? toLoaded,
  }) {
    return loadGroups?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttendanceEventLoadInstitutes value)? loadInstitutes,
    TResult Function(AttendanceEventLoadGroups value)? loadGroups,
    TResult Function(AttendanceEventLoadSchedule value)? loadSchedule,
    TResult Function(AttendanceEventAddStudent value)? addStudent,
    TResult Function(AttendanceEventUpdateStudent value)? updateStudent,
    TResult Function(AttendanceEventDeleteStudent value)? deleteStudent,
    TResult Function(AttendanceEventToLoaded value)? toLoaded,
    required TResult orElse(),
  }) {
    if (loadGroups != null) {
      return loadGroups(this);
    }
    return orElse();
  }
}

abstract class AttendanceEventLoadGroups implements AttendanceEvent {
  const factory AttendanceEventLoadGroups({required final int instituteId}) =
      _$AttendanceEventLoadGroupsImpl;

  int get instituteId;

  /// Create a copy of AttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceEventLoadGroupsImplCopyWith<_$AttendanceEventLoadGroupsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AttendanceEventLoadScheduleImplCopyWith<$Res> {
  factory _$$AttendanceEventLoadScheduleImplCopyWith(
          _$AttendanceEventLoadScheduleImpl value,
          $Res Function(_$AttendanceEventLoadScheduleImpl) then) =
      __$$AttendanceEventLoadScheduleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int groupId, DateTime dateStart, DateTime dateEnd});
}

/// @nodoc
class __$$AttendanceEventLoadScheduleImplCopyWithImpl<$Res>
    extends _$AttendanceEventCopyWithImpl<$Res,
        _$AttendanceEventLoadScheduleImpl>
    implements _$$AttendanceEventLoadScheduleImplCopyWith<$Res> {
  __$$AttendanceEventLoadScheduleImplCopyWithImpl(
      _$AttendanceEventLoadScheduleImpl _value,
      $Res Function(_$AttendanceEventLoadScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? dateStart = null,
    Object? dateEnd = null,
  }) {
    return _then(_$AttendanceEventLoadScheduleImpl(
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

class _$AttendanceEventLoadScheduleImpl implements AttendanceEventLoadSchedule {
  const _$AttendanceEventLoadScheduleImpl(
      {required this.groupId, required this.dateStart, required this.dateEnd});

  @override
  final int groupId;
  @override
  final DateTime dateStart;
  @override
  final DateTime dateEnd;

  @override
  String toString() {
    return 'AttendanceEvent.loadSchedule(groupId: $groupId, dateStart: $dateStart, dateEnd: $dateEnd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceEventLoadScheduleImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.dateStart, dateStart) ||
                other.dateStart == dateStart) &&
            (identical(other.dateEnd, dateEnd) || other.dateEnd == dateEnd));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupId, dateStart, dateEnd);

  /// Create a copy of AttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceEventLoadScheduleImplCopyWith<_$AttendanceEventLoadScheduleImpl>
      get copyWith => __$$AttendanceEventLoadScheduleImplCopyWithImpl<
          _$AttendanceEventLoadScheduleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInstitutes,
    required TResult Function(int instituteId) loadGroups,
    required TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)
        loadSchedule,
    required TResult Function(List<StudentModel> students, int groupId,
            String name, String email, String password)
        addStudent,
    required TResult Function(List<StudentModel> students, int studentId,
            int groupId, String name)
        updateStudent,
    required TResult Function(List<StudentModel> students, int studentId)
        deleteStudent,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)
        toLoaded,
  }) {
    return loadSchedule(groupId, dateStart, dateEnd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInstitutes,
    TResult? Function(int instituteId)? loadGroups,
    TResult? Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadSchedule,
    TResult? Function(List<StudentModel> students, int groupId, String name,
            String email, String password)?
        addStudent,
    TResult? Function(List<StudentModel> students, int studentId, int groupId,
            String name)?
        updateStudent,
    TResult? Function(List<StudentModel> students, int studentId)?
        deleteStudent,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        toLoaded,
  }) {
    return loadSchedule?.call(groupId, dateStart, dateEnd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInstitutes,
    TResult Function(int instituteId)? loadGroups,
    TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadSchedule,
    TResult Function(List<StudentModel> students, int groupId, String name,
            String email, String password)?
        addStudent,
    TResult Function(List<StudentModel> students, int studentId, int groupId,
            String name)?
        updateStudent,
    TResult Function(List<StudentModel> students, int studentId)? deleteStudent,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        toLoaded,
    required TResult orElse(),
  }) {
    if (loadSchedule != null) {
      return loadSchedule(groupId, dateStart, dateEnd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttendanceEventLoadInstitutes value)
        loadInstitutes,
    required TResult Function(AttendanceEventLoadGroups value) loadGroups,
    required TResult Function(AttendanceEventLoadSchedule value) loadSchedule,
    required TResult Function(AttendanceEventAddStudent value) addStudent,
    required TResult Function(AttendanceEventUpdateStudent value) updateStudent,
    required TResult Function(AttendanceEventDeleteStudent value) deleteStudent,
    required TResult Function(AttendanceEventToLoaded value) toLoaded,
  }) {
    return loadSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttendanceEventLoadInstitutes value)? loadInstitutes,
    TResult? Function(AttendanceEventLoadGroups value)? loadGroups,
    TResult? Function(AttendanceEventLoadSchedule value)? loadSchedule,
    TResult? Function(AttendanceEventAddStudent value)? addStudent,
    TResult? Function(AttendanceEventUpdateStudent value)? updateStudent,
    TResult? Function(AttendanceEventDeleteStudent value)? deleteStudent,
    TResult? Function(AttendanceEventToLoaded value)? toLoaded,
  }) {
    return loadSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttendanceEventLoadInstitutes value)? loadInstitutes,
    TResult Function(AttendanceEventLoadGroups value)? loadGroups,
    TResult Function(AttendanceEventLoadSchedule value)? loadSchedule,
    TResult Function(AttendanceEventAddStudent value)? addStudent,
    TResult Function(AttendanceEventUpdateStudent value)? updateStudent,
    TResult Function(AttendanceEventDeleteStudent value)? deleteStudent,
    TResult Function(AttendanceEventToLoaded value)? toLoaded,
    required TResult orElse(),
  }) {
    if (loadSchedule != null) {
      return loadSchedule(this);
    }
    return orElse();
  }
}

abstract class AttendanceEventLoadSchedule implements AttendanceEvent {
  const factory AttendanceEventLoadSchedule(
      {required final int groupId,
      required final DateTime dateStart,
      required final DateTime dateEnd}) = _$AttendanceEventLoadScheduleImpl;

  int get groupId;
  DateTime get dateStart;
  DateTime get dateEnd;

  /// Create a copy of AttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceEventLoadScheduleImplCopyWith<_$AttendanceEventLoadScheduleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AttendanceEventAddStudentImplCopyWith<$Res> {
  factory _$$AttendanceEventAddStudentImplCopyWith(
          _$AttendanceEventAddStudentImpl value,
          $Res Function(_$AttendanceEventAddStudentImpl) then) =
      __$$AttendanceEventAddStudentImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<StudentModel> students,
      int groupId,
      String name,
      String email,
      String password});
}

/// @nodoc
class __$$AttendanceEventAddStudentImplCopyWithImpl<$Res>
    extends _$AttendanceEventCopyWithImpl<$Res, _$AttendanceEventAddStudentImpl>
    implements _$$AttendanceEventAddStudentImplCopyWith<$Res> {
  __$$AttendanceEventAddStudentImplCopyWithImpl(
      _$AttendanceEventAddStudentImpl _value,
      $Res Function(_$AttendanceEventAddStudentImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? students = null,
    Object? groupId = null,
    Object? name = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$AttendanceEventAddStudentImpl(
      students: null == students
          ? _value._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<StudentModel>,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AttendanceEventAddStudentImpl implements AttendanceEventAddStudent {
  const _$AttendanceEventAddStudentImpl(
      {required final List<StudentModel> students,
      required this.groupId,
      required this.name,
      required this.email,
      required this.password})
      : _students = students;

  final List<StudentModel> _students;
  @override
  List<StudentModel> get students {
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_students);
  }

  @override
  final int groupId;
  @override
  final String name;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AttendanceEvent.addStudent(students: $students, groupId: $groupId, name: $name, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceEventAddStudentImpl &&
            const DeepCollectionEquality().equals(other._students, _students) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_students),
      groupId,
      name,
      email,
      password);

  /// Create a copy of AttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceEventAddStudentImplCopyWith<_$AttendanceEventAddStudentImpl>
      get copyWith => __$$AttendanceEventAddStudentImplCopyWithImpl<
          _$AttendanceEventAddStudentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInstitutes,
    required TResult Function(int instituteId) loadGroups,
    required TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)
        loadSchedule,
    required TResult Function(List<StudentModel> students, int groupId,
            String name, String email, String password)
        addStudent,
    required TResult Function(List<StudentModel> students, int studentId,
            int groupId, String name)
        updateStudent,
    required TResult Function(List<StudentModel> students, int studentId)
        deleteStudent,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)
        toLoaded,
  }) {
    return addStudent(students, groupId, name, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInstitutes,
    TResult? Function(int instituteId)? loadGroups,
    TResult? Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadSchedule,
    TResult? Function(List<StudentModel> students, int groupId, String name,
            String email, String password)?
        addStudent,
    TResult? Function(List<StudentModel> students, int studentId, int groupId,
            String name)?
        updateStudent,
    TResult? Function(List<StudentModel> students, int studentId)?
        deleteStudent,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        toLoaded,
  }) {
    return addStudent?.call(students, groupId, name, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInstitutes,
    TResult Function(int instituteId)? loadGroups,
    TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadSchedule,
    TResult Function(List<StudentModel> students, int groupId, String name,
            String email, String password)?
        addStudent,
    TResult Function(List<StudentModel> students, int studentId, int groupId,
            String name)?
        updateStudent,
    TResult Function(List<StudentModel> students, int studentId)? deleteStudent,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        toLoaded,
    required TResult orElse(),
  }) {
    if (addStudent != null) {
      return addStudent(students, groupId, name, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttendanceEventLoadInstitutes value)
        loadInstitutes,
    required TResult Function(AttendanceEventLoadGroups value) loadGroups,
    required TResult Function(AttendanceEventLoadSchedule value) loadSchedule,
    required TResult Function(AttendanceEventAddStudent value) addStudent,
    required TResult Function(AttendanceEventUpdateStudent value) updateStudent,
    required TResult Function(AttendanceEventDeleteStudent value) deleteStudent,
    required TResult Function(AttendanceEventToLoaded value) toLoaded,
  }) {
    return addStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttendanceEventLoadInstitutes value)? loadInstitutes,
    TResult? Function(AttendanceEventLoadGroups value)? loadGroups,
    TResult? Function(AttendanceEventLoadSchedule value)? loadSchedule,
    TResult? Function(AttendanceEventAddStudent value)? addStudent,
    TResult? Function(AttendanceEventUpdateStudent value)? updateStudent,
    TResult? Function(AttendanceEventDeleteStudent value)? deleteStudent,
    TResult? Function(AttendanceEventToLoaded value)? toLoaded,
  }) {
    return addStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttendanceEventLoadInstitutes value)? loadInstitutes,
    TResult Function(AttendanceEventLoadGroups value)? loadGroups,
    TResult Function(AttendanceEventLoadSchedule value)? loadSchedule,
    TResult Function(AttendanceEventAddStudent value)? addStudent,
    TResult Function(AttendanceEventUpdateStudent value)? updateStudent,
    TResult Function(AttendanceEventDeleteStudent value)? deleteStudent,
    TResult Function(AttendanceEventToLoaded value)? toLoaded,
    required TResult orElse(),
  }) {
    if (addStudent != null) {
      return addStudent(this);
    }
    return orElse();
  }
}

abstract class AttendanceEventAddStudent implements AttendanceEvent {
  const factory AttendanceEventAddStudent(
      {required final List<StudentModel> students,
      required final int groupId,
      required final String name,
      required final String email,
      required final String password}) = _$AttendanceEventAddStudentImpl;

  List<StudentModel> get students;
  int get groupId;
  String get name;
  String get email;
  String get password;

  /// Create a copy of AttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceEventAddStudentImplCopyWith<_$AttendanceEventAddStudentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AttendanceEventUpdateStudentImplCopyWith<$Res> {
  factory _$$AttendanceEventUpdateStudentImplCopyWith(
          _$AttendanceEventUpdateStudentImpl value,
          $Res Function(_$AttendanceEventUpdateStudentImpl) then) =
      __$$AttendanceEventUpdateStudentImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<StudentModel> students, int studentId, int groupId, String name});
}

/// @nodoc
class __$$AttendanceEventUpdateStudentImplCopyWithImpl<$Res>
    extends _$AttendanceEventCopyWithImpl<$Res,
        _$AttendanceEventUpdateStudentImpl>
    implements _$$AttendanceEventUpdateStudentImplCopyWith<$Res> {
  __$$AttendanceEventUpdateStudentImplCopyWithImpl(
      _$AttendanceEventUpdateStudentImpl _value,
      $Res Function(_$AttendanceEventUpdateStudentImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? students = null,
    Object? studentId = null,
    Object? groupId = null,
    Object? name = null,
  }) {
    return _then(_$AttendanceEventUpdateStudentImpl(
      students: null == students
          ? _value._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<StudentModel>,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AttendanceEventUpdateStudentImpl
    implements AttendanceEventUpdateStudent {
  const _$AttendanceEventUpdateStudentImpl(
      {required final List<StudentModel> students,
      required this.studentId,
      required this.groupId,
      required this.name})
      : _students = students;

  final List<StudentModel> _students;
  @override
  List<StudentModel> get students {
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_students);
  }

  @override
  final int studentId;
  @override
  final int groupId;
  @override
  final String name;

  @override
  String toString() {
    return 'AttendanceEvent.updateStudent(students: $students, studentId: $studentId, groupId: $groupId, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceEventUpdateStudentImpl &&
            const DeepCollectionEquality().equals(other._students, _students) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_students), studentId, groupId, name);

  /// Create a copy of AttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceEventUpdateStudentImplCopyWith<
          _$AttendanceEventUpdateStudentImpl>
      get copyWith => __$$AttendanceEventUpdateStudentImplCopyWithImpl<
          _$AttendanceEventUpdateStudentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInstitutes,
    required TResult Function(int instituteId) loadGroups,
    required TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)
        loadSchedule,
    required TResult Function(List<StudentModel> students, int groupId,
            String name, String email, String password)
        addStudent,
    required TResult Function(List<StudentModel> students, int studentId,
            int groupId, String name)
        updateStudent,
    required TResult Function(List<StudentModel> students, int studentId)
        deleteStudent,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)
        toLoaded,
  }) {
    return updateStudent(students, studentId, groupId, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInstitutes,
    TResult? Function(int instituteId)? loadGroups,
    TResult? Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadSchedule,
    TResult? Function(List<StudentModel> students, int groupId, String name,
            String email, String password)?
        addStudent,
    TResult? Function(List<StudentModel> students, int studentId, int groupId,
            String name)?
        updateStudent,
    TResult? Function(List<StudentModel> students, int studentId)?
        deleteStudent,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        toLoaded,
  }) {
    return updateStudent?.call(students, studentId, groupId, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInstitutes,
    TResult Function(int instituteId)? loadGroups,
    TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadSchedule,
    TResult Function(List<StudentModel> students, int groupId, String name,
            String email, String password)?
        addStudent,
    TResult Function(List<StudentModel> students, int studentId, int groupId,
            String name)?
        updateStudent,
    TResult Function(List<StudentModel> students, int studentId)? deleteStudent,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        toLoaded,
    required TResult orElse(),
  }) {
    if (updateStudent != null) {
      return updateStudent(students, studentId, groupId, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttendanceEventLoadInstitutes value)
        loadInstitutes,
    required TResult Function(AttendanceEventLoadGroups value) loadGroups,
    required TResult Function(AttendanceEventLoadSchedule value) loadSchedule,
    required TResult Function(AttendanceEventAddStudent value) addStudent,
    required TResult Function(AttendanceEventUpdateStudent value) updateStudent,
    required TResult Function(AttendanceEventDeleteStudent value) deleteStudent,
    required TResult Function(AttendanceEventToLoaded value) toLoaded,
  }) {
    return updateStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttendanceEventLoadInstitutes value)? loadInstitutes,
    TResult? Function(AttendanceEventLoadGroups value)? loadGroups,
    TResult? Function(AttendanceEventLoadSchedule value)? loadSchedule,
    TResult? Function(AttendanceEventAddStudent value)? addStudent,
    TResult? Function(AttendanceEventUpdateStudent value)? updateStudent,
    TResult? Function(AttendanceEventDeleteStudent value)? deleteStudent,
    TResult? Function(AttendanceEventToLoaded value)? toLoaded,
  }) {
    return updateStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttendanceEventLoadInstitutes value)? loadInstitutes,
    TResult Function(AttendanceEventLoadGroups value)? loadGroups,
    TResult Function(AttendanceEventLoadSchedule value)? loadSchedule,
    TResult Function(AttendanceEventAddStudent value)? addStudent,
    TResult Function(AttendanceEventUpdateStudent value)? updateStudent,
    TResult Function(AttendanceEventDeleteStudent value)? deleteStudent,
    TResult Function(AttendanceEventToLoaded value)? toLoaded,
    required TResult orElse(),
  }) {
    if (updateStudent != null) {
      return updateStudent(this);
    }
    return orElse();
  }
}

abstract class AttendanceEventUpdateStudent implements AttendanceEvent {
  const factory AttendanceEventUpdateStudent(
      {required final List<StudentModel> students,
      required final int studentId,
      required final int groupId,
      required final String name}) = _$AttendanceEventUpdateStudentImpl;

  List<StudentModel> get students;
  int get studentId;
  int get groupId;
  String get name;

  /// Create a copy of AttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceEventUpdateStudentImplCopyWith<
          _$AttendanceEventUpdateStudentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AttendanceEventDeleteStudentImplCopyWith<$Res> {
  factory _$$AttendanceEventDeleteStudentImplCopyWith(
          _$AttendanceEventDeleteStudentImpl value,
          $Res Function(_$AttendanceEventDeleteStudentImpl) then) =
      __$$AttendanceEventDeleteStudentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<StudentModel> students, int studentId});
}

/// @nodoc
class __$$AttendanceEventDeleteStudentImplCopyWithImpl<$Res>
    extends _$AttendanceEventCopyWithImpl<$Res,
        _$AttendanceEventDeleteStudentImpl>
    implements _$$AttendanceEventDeleteStudentImplCopyWith<$Res> {
  __$$AttendanceEventDeleteStudentImplCopyWithImpl(
      _$AttendanceEventDeleteStudentImpl _value,
      $Res Function(_$AttendanceEventDeleteStudentImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? students = null,
    Object? studentId = null,
  }) {
    return _then(_$AttendanceEventDeleteStudentImpl(
      students: null == students
          ? _value._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<StudentModel>,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AttendanceEventDeleteStudentImpl
    implements AttendanceEventDeleteStudent {
  const _$AttendanceEventDeleteStudentImpl(
      {required final List<StudentModel> students, required this.studentId})
      : _students = students;

  final List<StudentModel> _students;
  @override
  List<StudentModel> get students {
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_students);
  }

  @override
  final int studentId;

  @override
  String toString() {
    return 'AttendanceEvent.deleteStudent(students: $students, studentId: $studentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceEventDeleteStudentImpl &&
            const DeepCollectionEquality().equals(other._students, _students) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_students), studentId);

  /// Create a copy of AttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceEventDeleteStudentImplCopyWith<
          _$AttendanceEventDeleteStudentImpl>
      get copyWith => __$$AttendanceEventDeleteStudentImplCopyWithImpl<
          _$AttendanceEventDeleteStudentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInstitutes,
    required TResult Function(int instituteId) loadGroups,
    required TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)
        loadSchedule,
    required TResult Function(List<StudentModel> students, int groupId,
            String name, String email, String password)
        addStudent,
    required TResult Function(List<StudentModel> students, int studentId,
            int groupId, String name)
        updateStudent,
    required TResult Function(List<StudentModel> students, int studentId)
        deleteStudent,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)
        toLoaded,
  }) {
    return deleteStudent(students, studentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInstitutes,
    TResult? Function(int instituteId)? loadGroups,
    TResult? Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadSchedule,
    TResult? Function(List<StudentModel> students, int groupId, String name,
            String email, String password)?
        addStudent,
    TResult? Function(List<StudentModel> students, int studentId, int groupId,
            String name)?
        updateStudent,
    TResult? Function(List<StudentModel> students, int studentId)?
        deleteStudent,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        toLoaded,
  }) {
    return deleteStudent?.call(students, studentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInstitutes,
    TResult Function(int instituteId)? loadGroups,
    TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadSchedule,
    TResult Function(List<StudentModel> students, int groupId, String name,
            String email, String password)?
        addStudent,
    TResult Function(List<StudentModel> students, int studentId, int groupId,
            String name)?
        updateStudent,
    TResult Function(List<StudentModel> students, int studentId)? deleteStudent,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        toLoaded,
    required TResult orElse(),
  }) {
    if (deleteStudent != null) {
      return deleteStudent(students, studentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttendanceEventLoadInstitutes value)
        loadInstitutes,
    required TResult Function(AttendanceEventLoadGroups value) loadGroups,
    required TResult Function(AttendanceEventLoadSchedule value) loadSchedule,
    required TResult Function(AttendanceEventAddStudent value) addStudent,
    required TResult Function(AttendanceEventUpdateStudent value) updateStudent,
    required TResult Function(AttendanceEventDeleteStudent value) deleteStudent,
    required TResult Function(AttendanceEventToLoaded value) toLoaded,
  }) {
    return deleteStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttendanceEventLoadInstitutes value)? loadInstitutes,
    TResult? Function(AttendanceEventLoadGroups value)? loadGroups,
    TResult? Function(AttendanceEventLoadSchedule value)? loadSchedule,
    TResult? Function(AttendanceEventAddStudent value)? addStudent,
    TResult? Function(AttendanceEventUpdateStudent value)? updateStudent,
    TResult? Function(AttendanceEventDeleteStudent value)? deleteStudent,
    TResult? Function(AttendanceEventToLoaded value)? toLoaded,
  }) {
    return deleteStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttendanceEventLoadInstitutes value)? loadInstitutes,
    TResult Function(AttendanceEventLoadGroups value)? loadGroups,
    TResult Function(AttendanceEventLoadSchedule value)? loadSchedule,
    TResult Function(AttendanceEventAddStudent value)? addStudent,
    TResult Function(AttendanceEventUpdateStudent value)? updateStudent,
    TResult Function(AttendanceEventDeleteStudent value)? deleteStudent,
    TResult Function(AttendanceEventToLoaded value)? toLoaded,
    required TResult orElse(),
  }) {
    if (deleteStudent != null) {
      return deleteStudent(this);
    }
    return orElse();
  }
}

abstract class AttendanceEventDeleteStudent implements AttendanceEvent {
  const factory AttendanceEventDeleteStudent(
      {required final List<StudentModel> students,
      required final int studentId}) = _$AttendanceEventDeleteStudentImpl;

  List<StudentModel> get students;
  int get studentId;

  /// Create a copy of AttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceEventDeleteStudentImplCopyWith<
          _$AttendanceEventDeleteStudentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AttendanceEventToLoadedImplCopyWith<$Res> {
  factory _$$AttendanceEventToLoadedImplCopyWith(
          _$AttendanceEventToLoadedImpl value,
          $Res Function(_$AttendanceEventToLoadedImpl) then) =
      __$$AttendanceEventToLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<InstituteModel> institutes,
      InstituteModel? selectedInstitute,
      List<GroupModel> groups,
      GroupModel? selectedGroup,
      List<ScheduleModel> schedule});
}

/// @nodoc
class __$$AttendanceEventToLoadedImplCopyWithImpl<$Res>
    extends _$AttendanceEventCopyWithImpl<$Res, _$AttendanceEventToLoadedImpl>
    implements _$$AttendanceEventToLoadedImplCopyWith<$Res> {
  __$$AttendanceEventToLoadedImplCopyWithImpl(
      _$AttendanceEventToLoadedImpl _value,
      $Res Function(_$AttendanceEventToLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? institutes = null,
    Object? selectedInstitute = freezed,
    Object? groups = null,
    Object? selectedGroup = freezed,
    Object? schedule = null,
  }) {
    return _then(_$AttendanceEventToLoadedImpl(
      institutes: null == institutes
          ? _value._institutes
          : institutes // ignore: cast_nullable_to_non_nullable
              as List<InstituteModel>,
      selectedInstitute: freezed == selectedInstitute
          ? _value.selectedInstitute
          : selectedInstitute // ignore: cast_nullable_to_non_nullable
              as InstituteModel?,
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupModel>,
      selectedGroup: freezed == selectedGroup
          ? _value.selectedGroup
          : selectedGroup // ignore: cast_nullable_to_non_nullable
              as GroupModel?,
      schedule: null == schedule
          ? _value._schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<ScheduleModel>,
    ));
  }
}

/// @nodoc

class _$AttendanceEventToLoadedImpl implements AttendanceEventToLoaded {
  const _$AttendanceEventToLoadedImpl(
      {required final List<InstituteModel> institutes,
      required this.selectedInstitute,
      required final List<GroupModel> groups,
      required this.selectedGroup,
      required final List<ScheduleModel> schedule})
      : _institutes = institutes,
        _groups = groups,
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
  final List<GroupModel> _groups;
  @override
  List<GroupModel> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  final GroupModel? selectedGroup;
  final List<ScheduleModel> _schedule;
  @override
  List<ScheduleModel> get schedule {
    if (_schedule is EqualUnmodifiableListView) return _schedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedule);
  }

  @override
  String toString() {
    return 'AttendanceEvent.toLoaded(institutes: $institutes, selectedInstitute: $selectedInstitute, groups: $groups, selectedGroup: $selectedGroup, schedule: $schedule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceEventToLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._institutes, _institutes) &&
            (identical(other.selectedInstitute, selectedInstitute) ||
                other.selectedInstitute == selectedInstitute) &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            (identical(other.selectedGroup, selectedGroup) ||
                other.selectedGroup == selectedGroup) &&
            const DeepCollectionEquality().equals(other._schedule, _schedule));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_institutes),
      selectedInstitute,
      const DeepCollectionEquality().hash(_groups),
      selectedGroup,
      const DeepCollectionEquality().hash(_schedule));

  /// Create a copy of AttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceEventToLoadedImplCopyWith<_$AttendanceEventToLoadedImpl>
      get copyWith => __$$AttendanceEventToLoadedImplCopyWithImpl<
          _$AttendanceEventToLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInstitutes,
    required TResult Function(int instituteId) loadGroups,
    required TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)
        loadSchedule,
    required TResult Function(List<StudentModel> students, int groupId,
            String name, String email, String password)
        addStudent,
    required TResult Function(List<StudentModel> students, int studentId,
            int groupId, String name)
        updateStudent,
    required TResult Function(List<StudentModel> students, int studentId)
        deleteStudent,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)
        toLoaded,
  }) {
    return toLoaded(
        institutes, selectedInstitute, groups, selectedGroup, schedule);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInstitutes,
    TResult? Function(int instituteId)? loadGroups,
    TResult? Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadSchedule,
    TResult? Function(List<StudentModel> students, int groupId, String name,
            String email, String password)?
        addStudent,
    TResult? Function(List<StudentModel> students, int studentId, int groupId,
            String name)?
        updateStudent,
    TResult? Function(List<StudentModel> students, int studentId)?
        deleteStudent,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        toLoaded,
  }) {
    return toLoaded?.call(
        institutes, selectedInstitute, groups, selectedGroup, schedule);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInstitutes,
    TResult Function(int instituteId)? loadGroups,
    TResult Function(int groupId, DateTime dateStart, DateTime dateEnd)?
        loadSchedule,
    TResult Function(List<StudentModel> students, int groupId, String name,
            String email, String password)?
        addStudent,
    TResult Function(List<StudentModel> students, int studentId, int groupId,
            String name)?
        updateStudent,
    TResult Function(List<StudentModel> students, int studentId)? deleteStudent,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        toLoaded,
    required TResult orElse(),
  }) {
    if (toLoaded != null) {
      return toLoaded(
          institutes, selectedInstitute, groups, selectedGroup, schedule);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttendanceEventLoadInstitutes value)
        loadInstitutes,
    required TResult Function(AttendanceEventLoadGroups value) loadGroups,
    required TResult Function(AttendanceEventLoadSchedule value) loadSchedule,
    required TResult Function(AttendanceEventAddStudent value) addStudent,
    required TResult Function(AttendanceEventUpdateStudent value) updateStudent,
    required TResult Function(AttendanceEventDeleteStudent value) deleteStudent,
    required TResult Function(AttendanceEventToLoaded value) toLoaded,
  }) {
    return toLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttendanceEventLoadInstitutes value)? loadInstitutes,
    TResult? Function(AttendanceEventLoadGroups value)? loadGroups,
    TResult? Function(AttendanceEventLoadSchedule value)? loadSchedule,
    TResult? Function(AttendanceEventAddStudent value)? addStudent,
    TResult? Function(AttendanceEventUpdateStudent value)? updateStudent,
    TResult? Function(AttendanceEventDeleteStudent value)? deleteStudent,
    TResult? Function(AttendanceEventToLoaded value)? toLoaded,
  }) {
    return toLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttendanceEventLoadInstitutes value)? loadInstitutes,
    TResult Function(AttendanceEventLoadGroups value)? loadGroups,
    TResult Function(AttendanceEventLoadSchedule value)? loadSchedule,
    TResult Function(AttendanceEventAddStudent value)? addStudent,
    TResult Function(AttendanceEventUpdateStudent value)? updateStudent,
    TResult Function(AttendanceEventDeleteStudent value)? deleteStudent,
    TResult Function(AttendanceEventToLoaded value)? toLoaded,
    required TResult orElse(),
  }) {
    if (toLoaded != null) {
      return toLoaded(this);
    }
    return orElse();
  }
}

abstract class AttendanceEventToLoaded implements AttendanceEvent {
  const factory AttendanceEventToLoaded(
          {required final List<InstituteModel> institutes,
          required final InstituteModel? selectedInstitute,
          required final List<GroupModel> groups,
          required final GroupModel? selectedGroup,
          required final List<ScheduleModel> schedule}) =
      _$AttendanceEventToLoadedImpl;

  List<InstituteModel> get institutes;
  InstituteModel? get selectedInstitute;
  List<GroupModel> get groups;
  GroupModel? get selectedGroup;
  List<ScheduleModel> get schedule;

  /// Create a copy of AttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceEventToLoadedImplCopyWith<_$AttendanceEventToLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AttendanceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingInstitutes,
    required TResult Function(List<InstituteModel> institutes) loadedInstitutes,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function() loadingSchedule,
    required TResult Function(
            List<ScheduleModel> schedule, List<StudentModel> students)
        loadedSchedule,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingInstitutes,
    TResult? Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult? Function()? loadingGroups,
    TResult? Function(List<GroupModel> groups)? loadedGroups,
    TResult? Function()? loadingSchedule,
    TResult? Function(
            List<ScheduleModel> schedule, List<StudentModel> students)?
        loadedSchedule,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingInstitutes,
    TResult Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult Function()? loadingGroups,
    TResult Function(List<GroupModel> groups)? loadedGroups,
    TResult Function()? loadingSchedule,
    TResult Function(List<ScheduleModel> schedule, List<StudentModel> students)?
        loadedSchedule,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttendanceStateLoadingInstitutes value)
        loadingInstitutes,
    required TResult Function(AttendanceStateLoadedInstitutes value)
        loadedInstitutes,
    required TResult Function(AttendanceStateLoadingGroups value) loadingGroups,
    required TResult Function(AttendanceStateLoadedGroups value) loadedGroups,
    required TResult Function(AttendanceStateLoadingSchedule value)
        loadingSchedule,
    required TResult Function(AttendanceStateLoadedSchedule value)
        loadedSchedule,
    required TResult Function(AttendanceStateError value) error,
    required TResult Function(AttendanceStateEndedSession value) endedSession,
    required TResult Function(AttendanceStateToLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttendanceStateLoadingInstitutes value)?
        loadingInstitutes,
    TResult? Function(AttendanceStateLoadedInstitutes value)? loadedInstitutes,
    TResult? Function(AttendanceStateLoadingGroups value)? loadingGroups,
    TResult? Function(AttendanceStateLoadedGroups value)? loadedGroups,
    TResult? Function(AttendanceStateLoadingSchedule value)? loadingSchedule,
    TResult? Function(AttendanceStateLoadedSchedule value)? loadedSchedule,
    TResult? Function(AttendanceStateError value)? error,
    TResult? Function(AttendanceStateEndedSession value)? endedSession,
    TResult? Function(AttendanceStateToLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttendanceStateLoadingInstitutes value)? loadingInstitutes,
    TResult Function(AttendanceStateLoadedInstitutes value)? loadedInstitutes,
    TResult Function(AttendanceStateLoadingGroups value)? loadingGroups,
    TResult Function(AttendanceStateLoadedGroups value)? loadedGroups,
    TResult Function(AttendanceStateLoadingSchedule value)? loadingSchedule,
    TResult Function(AttendanceStateLoadedSchedule value)? loadedSchedule,
    TResult Function(AttendanceStateError value)? error,
    TResult Function(AttendanceStateEndedSession value)? endedSession,
    TResult Function(AttendanceStateToLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceStateCopyWith<$Res> {
  factory $AttendanceStateCopyWith(
          AttendanceState value, $Res Function(AttendanceState) then) =
      _$AttendanceStateCopyWithImpl<$Res, AttendanceState>;
}

/// @nodoc
class _$AttendanceStateCopyWithImpl<$Res, $Val extends AttendanceState>
    implements $AttendanceStateCopyWith<$Res> {
  _$AttendanceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AttendanceStateLoadingInstitutesImplCopyWith<$Res> {
  factory _$$AttendanceStateLoadingInstitutesImplCopyWith(
          _$AttendanceStateLoadingInstitutesImpl value,
          $Res Function(_$AttendanceStateLoadingInstitutesImpl) then) =
      __$$AttendanceStateLoadingInstitutesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AttendanceStateLoadingInstitutesImplCopyWithImpl<$Res>
    extends _$AttendanceStateCopyWithImpl<$Res,
        _$AttendanceStateLoadingInstitutesImpl>
    implements _$$AttendanceStateLoadingInstitutesImplCopyWith<$Res> {
  __$$AttendanceStateLoadingInstitutesImplCopyWithImpl(
      _$AttendanceStateLoadingInstitutesImpl _value,
      $Res Function(_$AttendanceStateLoadingInstitutesImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AttendanceStateLoadingInstitutesImpl
    implements AttendanceStateLoadingInstitutes {
  const _$AttendanceStateLoadingInstitutesImpl();

  @override
  String toString() {
    return 'AttendanceState.loadingInstitutes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceStateLoadingInstitutesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingInstitutes,
    required TResult Function(List<InstituteModel> institutes) loadedInstitutes,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function() loadingSchedule,
    required TResult Function(
            List<ScheduleModel> schedule, List<StudentModel> students)
        loadedSchedule,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)
        loaded,
  }) {
    return loadingInstitutes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingInstitutes,
    TResult? Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult? Function()? loadingGroups,
    TResult? Function(List<GroupModel> groups)? loadedGroups,
    TResult? Function()? loadingSchedule,
    TResult? Function(
            List<ScheduleModel> schedule, List<StudentModel> students)?
        loadedSchedule,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        loaded,
  }) {
    return loadingInstitutes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingInstitutes,
    TResult Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult Function()? loadingGroups,
    TResult Function(List<GroupModel> groups)? loadedGroups,
    TResult Function()? loadingSchedule,
    TResult Function(List<ScheduleModel> schedule, List<StudentModel> students)?
        loadedSchedule,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        loaded,
    required TResult orElse(),
  }) {
    if (loadingInstitutes != null) {
      return loadingInstitutes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttendanceStateLoadingInstitutes value)
        loadingInstitutes,
    required TResult Function(AttendanceStateLoadedInstitutes value)
        loadedInstitutes,
    required TResult Function(AttendanceStateLoadingGroups value) loadingGroups,
    required TResult Function(AttendanceStateLoadedGroups value) loadedGroups,
    required TResult Function(AttendanceStateLoadingSchedule value)
        loadingSchedule,
    required TResult Function(AttendanceStateLoadedSchedule value)
        loadedSchedule,
    required TResult Function(AttendanceStateError value) error,
    required TResult Function(AttendanceStateEndedSession value) endedSession,
    required TResult Function(AttendanceStateToLoaded value) loaded,
  }) {
    return loadingInstitutes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttendanceStateLoadingInstitutes value)?
        loadingInstitutes,
    TResult? Function(AttendanceStateLoadedInstitutes value)? loadedInstitutes,
    TResult? Function(AttendanceStateLoadingGroups value)? loadingGroups,
    TResult? Function(AttendanceStateLoadedGroups value)? loadedGroups,
    TResult? Function(AttendanceStateLoadingSchedule value)? loadingSchedule,
    TResult? Function(AttendanceStateLoadedSchedule value)? loadedSchedule,
    TResult? Function(AttendanceStateError value)? error,
    TResult? Function(AttendanceStateEndedSession value)? endedSession,
    TResult? Function(AttendanceStateToLoaded value)? loaded,
  }) {
    return loadingInstitutes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttendanceStateLoadingInstitutes value)? loadingInstitutes,
    TResult Function(AttendanceStateLoadedInstitutes value)? loadedInstitutes,
    TResult Function(AttendanceStateLoadingGroups value)? loadingGroups,
    TResult Function(AttendanceStateLoadedGroups value)? loadedGroups,
    TResult Function(AttendanceStateLoadingSchedule value)? loadingSchedule,
    TResult Function(AttendanceStateLoadedSchedule value)? loadedSchedule,
    TResult Function(AttendanceStateError value)? error,
    TResult Function(AttendanceStateEndedSession value)? endedSession,
    TResult Function(AttendanceStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadingInstitutes != null) {
      return loadingInstitutes(this);
    }
    return orElse();
  }
}

abstract class AttendanceStateLoadingInstitutes implements AttendanceState {
  const factory AttendanceStateLoadingInstitutes() =
      _$AttendanceStateLoadingInstitutesImpl;
}

/// @nodoc
abstract class _$$AttendanceStateLoadedInstitutesImplCopyWith<$Res> {
  factory _$$AttendanceStateLoadedInstitutesImplCopyWith(
          _$AttendanceStateLoadedInstitutesImpl value,
          $Res Function(_$AttendanceStateLoadedInstitutesImpl) then) =
      __$$AttendanceStateLoadedInstitutesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<InstituteModel> institutes});
}

/// @nodoc
class __$$AttendanceStateLoadedInstitutesImplCopyWithImpl<$Res>
    extends _$AttendanceStateCopyWithImpl<$Res,
        _$AttendanceStateLoadedInstitutesImpl>
    implements _$$AttendanceStateLoadedInstitutesImplCopyWith<$Res> {
  __$$AttendanceStateLoadedInstitutesImplCopyWithImpl(
      _$AttendanceStateLoadedInstitutesImpl _value,
      $Res Function(_$AttendanceStateLoadedInstitutesImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? institutes = null,
  }) {
    return _then(_$AttendanceStateLoadedInstitutesImpl(
      institutes: null == institutes
          ? _value._institutes
          : institutes // ignore: cast_nullable_to_non_nullable
              as List<InstituteModel>,
    ));
  }
}

/// @nodoc

class _$AttendanceStateLoadedInstitutesImpl
    implements AttendanceStateLoadedInstitutes {
  const _$AttendanceStateLoadedInstitutesImpl(
      {required final List<InstituteModel> institutes})
      : _institutes = institutes;

  final List<InstituteModel> _institutes;
  @override
  List<InstituteModel> get institutes {
    if (_institutes is EqualUnmodifiableListView) return _institutes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_institutes);
  }

  @override
  String toString() {
    return 'AttendanceState.loadedInstitutes(institutes: $institutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceStateLoadedInstitutesImpl &&
            const DeepCollectionEquality()
                .equals(other._institutes, _institutes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_institutes));

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceStateLoadedInstitutesImplCopyWith<
          _$AttendanceStateLoadedInstitutesImpl>
      get copyWith => __$$AttendanceStateLoadedInstitutesImplCopyWithImpl<
          _$AttendanceStateLoadedInstitutesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingInstitutes,
    required TResult Function(List<InstituteModel> institutes) loadedInstitutes,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function() loadingSchedule,
    required TResult Function(
            List<ScheduleModel> schedule, List<StudentModel> students)
        loadedSchedule,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)
        loaded,
  }) {
    return loadedInstitutes(institutes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingInstitutes,
    TResult? Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult? Function()? loadingGroups,
    TResult? Function(List<GroupModel> groups)? loadedGroups,
    TResult? Function()? loadingSchedule,
    TResult? Function(
            List<ScheduleModel> schedule, List<StudentModel> students)?
        loadedSchedule,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        loaded,
  }) {
    return loadedInstitutes?.call(institutes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingInstitutes,
    TResult Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult Function()? loadingGroups,
    TResult Function(List<GroupModel> groups)? loadedGroups,
    TResult Function()? loadingSchedule,
    TResult Function(List<ScheduleModel> schedule, List<StudentModel> students)?
        loadedSchedule,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        loaded,
    required TResult orElse(),
  }) {
    if (loadedInstitutes != null) {
      return loadedInstitutes(institutes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttendanceStateLoadingInstitutes value)
        loadingInstitutes,
    required TResult Function(AttendanceStateLoadedInstitutes value)
        loadedInstitutes,
    required TResult Function(AttendanceStateLoadingGroups value) loadingGroups,
    required TResult Function(AttendanceStateLoadedGroups value) loadedGroups,
    required TResult Function(AttendanceStateLoadingSchedule value)
        loadingSchedule,
    required TResult Function(AttendanceStateLoadedSchedule value)
        loadedSchedule,
    required TResult Function(AttendanceStateError value) error,
    required TResult Function(AttendanceStateEndedSession value) endedSession,
    required TResult Function(AttendanceStateToLoaded value) loaded,
  }) {
    return loadedInstitutes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttendanceStateLoadingInstitutes value)?
        loadingInstitutes,
    TResult? Function(AttendanceStateLoadedInstitutes value)? loadedInstitutes,
    TResult? Function(AttendanceStateLoadingGroups value)? loadingGroups,
    TResult? Function(AttendanceStateLoadedGroups value)? loadedGroups,
    TResult? Function(AttendanceStateLoadingSchedule value)? loadingSchedule,
    TResult? Function(AttendanceStateLoadedSchedule value)? loadedSchedule,
    TResult? Function(AttendanceStateError value)? error,
    TResult? Function(AttendanceStateEndedSession value)? endedSession,
    TResult? Function(AttendanceStateToLoaded value)? loaded,
  }) {
    return loadedInstitutes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttendanceStateLoadingInstitutes value)? loadingInstitutes,
    TResult Function(AttendanceStateLoadedInstitutes value)? loadedInstitutes,
    TResult Function(AttendanceStateLoadingGroups value)? loadingGroups,
    TResult Function(AttendanceStateLoadedGroups value)? loadedGroups,
    TResult Function(AttendanceStateLoadingSchedule value)? loadingSchedule,
    TResult Function(AttendanceStateLoadedSchedule value)? loadedSchedule,
    TResult Function(AttendanceStateError value)? error,
    TResult Function(AttendanceStateEndedSession value)? endedSession,
    TResult Function(AttendanceStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadedInstitutes != null) {
      return loadedInstitutes(this);
    }
    return orElse();
  }
}

abstract class AttendanceStateLoadedInstitutes implements AttendanceState {
  const factory AttendanceStateLoadedInstitutes(
          {required final List<InstituteModel> institutes}) =
      _$AttendanceStateLoadedInstitutesImpl;

  List<InstituteModel> get institutes;

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceStateLoadedInstitutesImplCopyWith<
          _$AttendanceStateLoadedInstitutesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AttendanceStateLoadingGroupsImplCopyWith<$Res> {
  factory _$$AttendanceStateLoadingGroupsImplCopyWith(
          _$AttendanceStateLoadingGroupsImpl value,
          $Res Function(_$AttendanceStateLoadingGroupsImpl) then) =
      __$$AttendanceStateLoadingGroupsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AttendanceStateLoadingGroupsImplCopyWithImpl<$Res>
    extends _$AttendanceStateCopyWithImpl<$Res,
        _$AttendanceStateLoadingGroupsImpl>
    implements _$$AttendanceStateLoadingGroupsImplCopyWith<$Res> {
  __$$AttendanceStateLoadingGroupsImplCopyWithImpl(
      _$AttendanceStateLoadingGroupsImpl _value,
      $Res Function(_$AttendanceStateLoadingGroupsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AttendanceStateLoadingGroupsImpl
    implements AttendanceStateLoadingGroups {
  const _$AttendanceStateLoadingGroupsImpl();

  @override
  String toString() {
    return 'AttendanceState.loadingGroups()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceStateLoadingGroupsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingInstitutes,
    required TResult Function(List<InstituteModel> institutes) loadedInstitutes,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function() loadingSchedule,
    required TResult Function(
            List<ScheduleModel> schedule, List<StudentModel> students)
        loadedSchedule,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)
        loaded,
  }) {
    return loadingGroups();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingInstitutes,
    TResult? Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult? Function()? loadingGroups,
    TResult? Function(List<GroupModel> groups)? loadedGroups,
    TResult? Function()? loadingSchedule,
    TResult? Function(
            List<ScheduleModel> schedule, List<StudentModel> students)?
        loadedSchedule,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        loaded,
  }) {
    return loadingGroups?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingInstitutes,
    TResult Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult Function()? loadingGroups,
    TResult Function(List<GroupModel> groups)? loadedGroups,
    TResult Function()? loadingSchedule,
    TResult Function(List<ScheduleModel> schedule, List<StudentModel> students)?
        loadedSchedule,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
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
    required TResult Function(AttendanceStateLoadingInstitutes value)
        loadingInstitutes,
    required TResult Function(AttendanceStateLoadedInstitutes value)
        loadedInstitutes,
    required TResult Function(AttendanceStateLoadingGroups value) loadingGroups,
    required TResult Function(AttendanceStateLoadedGroups value) loadedGroups,
    required TResult Function(AttendanceStateLoadingSchedule value)
        loadingSchedule,
    required TResult Function(AttendanceStateLoadedSchedule value)
        loadedSchedule,
    required TResult Function(AttendanceStateError value) error,
    required TResult Function(AttendanceStateEndedSession value) endedSession,
    required TResult Function(AttendanceStateToLoaded value) loaded,
  }) {
    return loadingGroups(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttendanceStateLoadingInstitutes value)?
        loadingInstitutes,
    TResult? Function(AttendanceStateLoadedInstitutes value)? loadedInstitutes,
    TResult? Function(AttendanceStateLoadingGroups value)? loadingGroups,
    TResult? Function(AttendanceStateLoadedGroups value)? loadedGroups,
    TResult? Function(AttendanceStateLoadingSchedule value)? loadingSchedule,
    TResult? Function(AttendanceStateLoadedSchedule value)? loadedSchedule,
    TResult? Function(AttendanceStateError value)? error,
    TResult? Function(AttendanceStateEndedSession value)? endedSession,
    TResult? Function(AttendanceStateToLoaded value)? loaded,
  }) {
    return loadingGroups?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttendanceStateLoadingInstitutes value)? loadingInstitutes,
    TResult Function(AttendanceStateLoadedInstitutes value)? loadedInstitutes,
    TResult Function(AttendanceStateLoadingGroups value)? loadingGroups,
    TResult Function(AttendanceStateLoadedGroups value)? loadedGroups,
    TResult Function(AttendanceStateLoadingSchedule value)? loadingSchedule,
    TResult Function(AttendanceStateLoadedSchedule value)? loadedSchedule,
    TResult Function(AttendanceStateError value)? error,
    TResult Function(AttendanceStateEndedSession value)? endedSession,
    TResult Function(AttendanceStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadingGroups != null) {
      return loadingGroups(this);
    }
    return orElse();
  }
}

abstract class AttendanceStateLoadingGroups implements AttendanceState {
  const factory AttendanceStateLoadingGroups() =
      _$AttendanceStateLoadingGroupsImpl;
}

/// @nodoc
abstract class _$$AttendanceStateLoadedGroupsImplCopyWith<$Res> {
  factory _$$AttendanceStateLoadedGroupsImplCopyWith(
          _$AttendanceStateLoadedGroupsImpl value,
          $Res Function(_$AttendanceStateLoadedGroupsImpl) then) =
      __$$AttendanceStateLoadedGroupsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GroupModel> groups});
}

/// @nodoc
class __$$AttendanceStateLoadedGroupsImplCopyWithImpl<$Res>
    extends _$AttendanceStateCopyWithImpl<$Res,
        _$AttendanceStateLoadedGroupsImpl>
    implements _$$AttendanceStateLoadedGroupsImplCopyWith<$Res> {
  __$$AttendanceStateLoadedGroupsImplCopyWithImpl(
      _$AttendanceStateLoadedGroupsImpl _value,
      $Res Function(_$AttendanceStateLoadedGroupsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = null,
  }) {
    return _then(_$AttendanceStateLoadedGroupsImpl(
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupModel>,
    ));
  }
}

/// @nodoc

class _$AttendanceStateLoadedGroupsImpl implements AttendanceStateLoadedGroups {
  const _$AttendanceStateLoadedGroupsImpl(
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
    return 'AttendanceState.loadedGroups(groups: $groups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceStateLoadedGroupsImpl &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groups));

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceStateLoadedGroupsImplCopyWith<_$AttendanceStateLoadedGroupsImpl>
      get copyWith => __$$AttendanceStateLoadedGroupsImplCopyWithImpl<
          _$AttendanceStateLoadedGroupsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingInstitutes,
    required TResult Function(List<InstituteModel> institutes) loadedInstitutes,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function() loadingSchedule,
    required TResult Function(
            List<ScheduleModel> schedule, List<StudentModel> students)
        loadedSchedule,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)
        loaded,
  }) {
    return loadedGroups(groups);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingInstitutes,
    TResult? Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult? Function()? loadingGroups,
    TResult? Function(List<GroupModel> groups)? loadedGroups,
    TResult? Function()? loadingSchedule,
    TResult? Function(
            List<ScheduleModel> schedule, List<StudentModel> students)?
        loadedSchedule,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        loaded,
  }) {
    return loadedGroups?.call(groups);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingInstitutes,
    TResult Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult Function()? loadingGroups,
    TResult Function(List<GroupModel> groups)? loadedGroups,
    TResult Function()? loadingSchedule,
    TResult Function(List<ScheduleModel> schedule, List<StudentModel> students)?
        loadedSchedule,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
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
    required TResult Function(AttendanceStateLoadingInstitutes value)
        loadingInstitutes,
    required TResult Function(AttendanceStateLoadedInstitutes value)
        loadedInstitutes,
    required TResult Function(AttendanceStateLoadingGroups value) loadingGroups,
    required TResult Function(AttendanceStateLoadedGroups value) loadedGroups,
    required TResult Function(AttendanceStateLoadingSchedule value)
        loadingSchedule,
    required TResult Function(AttendanceStateLoadedSchedule value)
        loadedSchedule,
    required TResult Function(AttendanceStateError value) error,
    required TResult Function(AttendanceStateEndedSession value) endedSession,
    required TResult Function(AttendanceStateToLoaded value) loaded,
  }) {
    return loadedGroups(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttendanceStateLoadingInstitutes value)?
        loadingInstitutes,
    TResult? Function(AttendanceStateLoadedInstitutes value)? loadedInstitutes,
    TResult? Function(AttendanceStateLoadingGroups value)? loadingGroups,
    TResult? Function(AttendanceStateLoadedGroups value)? loadedGroups,
    TResult? Function(AttendanceStateLoadingSchedule value)? loadingSchedule,
    TResult? Function(AttendanceStateLoadedSchedule value)? loadedSchedule,
    TResult? Function(AttendanceStateError value)? error,
    TResult? Function(AttendanceStateEndedSession value)? endedSession,
    TResult? Function(AttendanceStateToLoaded value)? loaded,
  }) {
    return loadedGroups?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttendanceStateLoadingInstitutes value)? loadingInstitutes,
    TResult Function(AttendanceStateLoadedInstitutes value)? loadedInstitutes,
    TResult Function(AttendanceStateLoadingGroups value)? loadingGroups,
    TResult Function(AttendanceStateLoadedGroups value)? loadedGroups,
    TResult Function(AttendanceStateLoadingSchedule value)? loadingSchedule,
    TResult Function(AttendanceStateLoadedSchedule value)? loadedSchedule,
    TResult Function(AttendanceStateError value)? error,
    TResult Function(AttendanceStateEndedSession value)? endedSession,
    TResult Function(AttendanceStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadedGroups != null) {
      return loadedGroups(this);
    }
    return orElse();
  }
}

abstract class AttendanceStateLoadedGroups implements AttendanceState {
  const factory AttendanceStateLoadedGroups(
          {required final List<GroupModel> groups}) =
      _$AttendanceStateLoadedGroupsImpl;

  List<GroupModel> get groups;

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceStateLoadedGroupsImplCopyWith<_$AttendanceStateLoadedGroupsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AttendanceStateLoadingScheduleImplCopyWith<$Res> {
  factory _$$AttendanceStateLoadingScheduleImplCopyWith(
          _$AttendanceStateLoadingScheduleImpl value,
          $Res Function(_$AttendanceStateLoadingScheduleImpl) then) =
      __$$AttendanceStateLoadingScheduleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AttendanceStateLoadingScheduleImplCopyWithImpl<$Res>
    extends _$AttendanceStateCopyWithImpl<$Res,
        _$AttendanceStateLoadingScheduleImpl>
    implements _$$AttendanceStateLoadingScheduleImplCopyWith<$Res> {
  __$$AttendanceStateLoadingScheduleImplCopyWithImpl(
      _$AttendanceStateLoadingScheduleImpl _value,
      $Res Function(_$AttendanceStateLoadingScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AttendanceStateLoadingScheduleImpl
    implements AttendanceStateLoadingSchedule {
  const _$AttendanceStateLoadingScheduleImpl();

  @override
  String toString() {
    return 'AttendanceState.loadingSchedule()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceStateLoadingScheduleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingInstitutes,
    required TResult Function(List<InstituteModel> institutes) loadedInstitutes,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function() loadingSchedule,
    required TResult Function(
            List<ScheduleModel> schedule, List<StudentModel> students)
        loadedSchedule,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)
        loaded,
  }) {
    return loadingSchedule();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingInstitutes,
    TResult? Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult? Function()? loadingGroups,
    TResult? Function(List<GroupModel> groups)? loadedGroups,
    TResult? Function()? loadingSchedule,
    TResult? Function(
            List<ScheduleModel> schedule, List<StudentModel> students)?
        loadedSchedule,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        loaded,
  }) {
    return loadingSchedule?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingInstitutes,
    TResult Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult Function()? loadingGroups,
    TResult Function(List<GroupModel> groups)? loadedGroups,
    TResult Function()? loadingSchedule,
    TResult Function(List<ScheduleModel> schedule, List<StudentModel> students)?
        loadedSchedule,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
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
    required TResult Function(AttendanceStateLoadingInstitutes value)
        loadingInstitutes,
    required TResult Function(AttendanceStateLoadedInstitutes value)
        loadedInstitutes,
    required TResult Function(AttendanceStateLoadingGroups value) loadingGroups,
    required TResult Function(AttendanceStateLoadedGroups value) loadedGroups,
    required TResult Function(AttendanceStateLoadingSchedule value)
        loadingSchedule,
    required TResult Function(AttendanceStateLoadedSchedule value)
        loadedSchedule,
    required TResult Function(AttendanceStateError value) error,
    required TResult Function(AttendanceStateEndedSession value) endedSession,
    required TResult Function(AttendanceStateToLoaded value) loaded,
  }) {
    return loadingSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttendanceStateLoadingInstitutes value)?
        loadingInstitutes,
    TResult? Function(AttendanceStateLoadedInstitutes value)? loadedInstitutes,
    TResult? Function(AttendanceStateLoadingGroups value)? loadingGroups,
    TResult? Function(AttendanceStateLoadedGroups value)? loadedGroups,
    TResult? Function(AttendanceStateLoadingSchedule value)? loadingSchedule,
    TResult? Function(AttendanceStateLoadedSchedule value)? loadedSchedule,
    TResult? Function(AttendanceStateError value)? error,
    TResult? Function(AttendanceStateEndedSession value)? endedSession,
    TResult? Function(AttendanceStateToLoaded value)? loaded,
  }) {
    return loadingSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttendanceStateLoadingInstitutes value)? loadingInstitutes,
    TResult Function(AttendanceStateLoadedInstitutes value)? loadedInstitutes,
    TResult Function(AttendanceStateLoadingGroups value)? loadingGroups,
    TResult Function(AttendanceStateLoadedGroups value)? loadedGroups,
    TResult Function(AttendanceStateLoadingSchedule value)? loadingSchedule,
    TResult Function(AttendanceStateLoadedSchedule value)? loadedSchedule,
    TResult Function(AttendanceStateError value)? error,
    TResult Function(AttendanceStateEndedSession value)? endedSession,
    TResult Function(AttendanceStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadingSchedule != null) {
      return loadingSchedule(this);
    }
    return orElse();
  }
}

abstract class AttendanceStateLoadingSchedule implements AttendanceState {
  const factory AttendanceStateLoadingSchedule() =
      _$AttendanceStateLoadingScheduleImpl;
}

/// @nodoc
abstract class _$$AttendanceStateLoadedScheduleImplCopyWith<$Res> {
  factory _$$AttendanceStateLoadedScheduleImplCopyWith(
          _$AttendanceStateLoadedScheduleImpl value,
          $Res Function(_$AttendanceStateLoadedScheduleImpl) then) =
      __$$AttendanceStateLoadedScheduleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ScheduleModel> schedule, List<StudentModel> students});
}

/// @nodoc
class __$$AttendanceStateLoadedScheduleImplCopyWithImpl<$Res>
    extends _$AttendanceStateCopyWithImpl<$Res,
        _$AttendanceStateLoadedScheduleImpl>
    implements _$$AttendanceStateLoadedScheduleImplCopyWith<$Res> {
  __$$AttendanceStateLoadedScheduleImplCopyWithImpl(
      _$AttendanceStateLoadedScheduleImpl _value,
      $Res Function(_$AttendanceStateLoadedScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedule = null,
    Object? students = null,
  }) {
    return _then(_$AttendanceStateLoadedScheduleImpl(
      schedule: null == schedule
          ? _value._schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<ScheduleModel>,
      students: null == students
          ? _value._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<StudentModel>,
    ));
  }
}

/// @nodoc

class _$AttendanceStateLoadedScheduleImpl
    implements AttendanceStateLoadedSchedule {
  const _$AttendanceStateLoadedScheduleImpl(
      {required final List<ScheduleModel> schedule,
      required final List<StudentModel> students})
      : _schedule = schedule,
        _students = students;

  final List<ScheduleModel> _schedule;
  @override
  List<ScheduleModel> get schedule {
    if (_schedule is EqualUnmodifiableListView) return _schedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedule);
  }

  final List<StudentModel> _students;
  @override
  List<StudentModel> get students {
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_students);
  }

  @override
  String toString() {
    return 'AttendanceState.loadedSchedule(schedule: $schedule, students: $students)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceStateLoadedScheduleImpl &&
            const DeepCollectionEquality().equals(other._schedule, _schedule) &&
            const DeepCollectionEquality().equals(other._students, _students));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_schedule),
      const DeepCollectionEquality().hash(_students));

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceStateLoadedScheduleImplCopyWith<
          _$AttendanceStateLoadedScheduleImpl>
      get copyWith => __$$AttendanceStateLoadedScheduleImplCopyWithImpl<
          _$AttendanceStateLoadedScheduleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingInstitutes,
    required TResult Function(List<InstituteModel> institutes) loadedInstitutes,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function() loadingSchedule,
    required TResult Function(
            List<ScheduleModel> schedule, List<StudentModel> students)
        loadedSchedule,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)
        loaded,
  }) {
    return loadedSchedule(schedule, students);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingInstitutes,
    TResult? Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult? Function()? loadingGroups,
    TResult? Function(List<GroupModel> groups)? loadedGroups,
    TResult? Function()? loadingSchedule,
    TResult? Function(
            List<ScheduleModel> schedule, List<StudentModel> students)?
        loadedSchedule,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        loaded,
  }) {
    return loadedSchedule?.call(schedule, students);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingInstitutes,
    TResult Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult Function()? loadingGroups,
    TResult Function(List<GroupModel> groups)? loadedGroups,
    TResult Function()? loadingSchedule,
    TResult Function(List<ScheduleModel> schedule, List<StudentModel> students)?
        loadedSchedule,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        loaded,
    required TResult orElse(),
  }) {
    if (loadedSchedule != null) {
      return loadedSchedule(schedule, students);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttendanceStateLoadingInstitutes value)
        loadingInstitutes,
    required TResult Function(AttendanceStateLoadedInstitutes value)
        loadedInstitutes,
    required TResult Function(AttendanceStateLoadingGroups value) loadingGroups,
    required TResult Function(AttendanceStateLoadedGroups value) loadedGroups,
    required TResult Function(AttendanceStateLoadingSchedule value)
        loadingSchedule,
    required TResult Function(AttendanceStateLoadedSchedule value)
        loadedSchedule,
    required TResult Function(AttendanceStateError value) error,
    required TResult Function(AttendanceStateEndedSession value) endedSession,
    required TResult Function(AttendanceStateToLoaded value) loaded,
  }) {
    return loadedSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttendanceStateLoadingInstitutes value)?
        loadingInstitutes,
    TResult? Function(AttendanceStateLoadedInstitutes value)? loadedInstitutes,
    TResult? Function(AttendanceStateLoadingGroups value)? loadingGroups,
    TResult? Function(AttendanceStateLoadedGroups value)? loadedGroups,
    TResult? Function(AttendanceStateLoadingSchedule value)? loadingSchedule,
    TResult? Function(AttendanceStateLoadedSchedule value)? loadedSchedule,
    TResult? Function(AttendanceStateError value)? error,
    TResult? Function(AttendanceStateEndedSession value)? endedSession,
    TResult? Function(AttendanceStateToLoaded value)? loaded,
  }) {
    return loadedSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttendanceStateLoadingInstitutes value)? loadingInstitutes,
    TResult Function(AttendanceStateLoadedInstitutes value)? loadedInstitutes,
    TResult Function(AttendanceStateLoadingGroups value)? loadingGroups,
    TResult Function(AttendanceStateLoadedGroups value)? loadedGroups,
    TResult Function(AttendanceStateLoadingSchedule value)? loadingSchedule,
    TResult Function(AttendanceStateLoadedSchedule value)? loadedSchedule,
    TResult Function(AttendanceStateError value)? error,
    TResult Function(AttendanceStateEndedSession value)? endedSession,
    TResult Function(AttendanceStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadedSchedule != null) {
      return loadedSchedule(this);
    }
    return orElse();
  }
}

abstract class AttendanceStateLoadedSchedule implements AttendanceState {
  const factory AttendanceStateLoadedSchedule(
          {required final List<ScheduleModel> schedule,
          required final List<StudentModel> students}) =
      _$AttendanceStateLoadedScheduleImpl;

  List<ScheduleModel> get schedule;
  List<StudentModel> get students;

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceStateLoadedScheduleImplCopyWith<
          _$AttendanceStateLoadedScheduleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AttendanceStateErrorImplCopyWith<$Res> {
  factory _$$AttendanceStateErrorImplCopyWith(_$AttendanceStateErrorImpl value,
          $Res Function(_$AttendanceStateErrorImpl) then) =
      __$$AttendanceStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AttendanceStateErrorImplCopyWithImpl<$Res>
    extends _$AttendanceStateCopyWithImpl<$Res, _$AttendanceStateErrorImpl>
    implements _$$AttendanceStateErrorImplCopyWith<$Res> {
  __$$AttendanceStateErrorImplCopyWithImpl(_$AttendanceStateErrorImpl _value,
      $Res Function(_$AttendanceStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AttendanceStateErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AttendanceStateErrorImpl implements AttendanceStateError {
  const _$AttendanceStateErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AttendanceState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceStateErrorImplCopyWith<_$AttendanceStateErrorImpl>
      get copyWith =>
          __$$AttendanceStateErrorImplCopyWithImpl<_$AttendanceStateErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingInstitutes,
    required TResult Function(List<InstituteModel> institutes) loadedInstitutes,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function() loadingSchedule,
    required TResult Function(
            List<ScheduleModel> schedule, List<StudentModel> students)
        loadedSchedule,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)
        loaded,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingInstitutes,
    TResult? Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult? Function()? loadingGroups,
    TResult? Function(List<GroupModel> groups)? loadedGroups,
    TResult? Function()? loadingSchedule,
    TResult? Function(
            List<ScheduleModel> schedule, List<StudentModel> students)?
        loadedSchedule,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        loaded,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingInstitutes,
    TResult Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult Function()? loadingGroups,
    TResult Function(List<GroupModel> groups)? loadedGroups,
    TResult Function()? loadingSchedule,
    TResult Function(List<ScheduleModel> schedule, List<StudentModel> students)?
        loadedSchedule,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
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
    required TResult Function(AttendanceStateLoadingInstitutes value)
        loadingInstitutes,
    required TResult Function(AttendanceStateLoadedInstitutes value)
        loadedInstitutes,
    required TResult Function(AttendanceStateLoadingGroups value) loadingGroups,
    required TResult Function(AttendanceStateLoadedGroups value) loadedGroups,
    required TResult Function(AttendanceStateLoadingSchedule value)
        loadingSchedule,
    required TResult Function(AttendanceStateLoadedSchedule value)
        loadedSchedule,
    required TResult Function(AttendanceStateError value) error,
    required TResult Function(AttendanceStateEndedSession value) endedSession,
    required TResult Function(AttendanceStateToLoaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttendanceStateLoadingInstitutes value)?
        loadingInstitutes,
    TResult? Function(AttendanceStateLoadedInstitutes value)? loadedInstitutes,
    TResult? Function(AttendanceStateLoadingGroups value)? loadingGroups,
    TResult? Function(AttendanceStateLoadedGroups value)? loadedGroups,
    TResult? Function(AttendanceStateLoadingSchedule value)? loadingSchedule,
    TResult? Function(AttendanceStateLoadedSchedule value)? loadedSchedule,
    TResult? Function(AttendanceStateError value)? error,
    TResult? Function(AttendanceStateEndedSession value)? endedSession,
    TResult? Function(AttendanceStateToLoaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttendanceStateLoadingInstitutes value)? loadingInstitutes,
    TResult Function(AttendanceStateLoadedInstitutes value)? loadedInstitutes,
    TResult Function(AttendanceStateLoadingGroups value)? loadingGroups,
    TResult Function(AttendanceStateLoadedGroups value)? loadedGroups,
    TResult Function(AttendanceStateLoadingSchedule value)? loadingSchedule,
    TResult Function(AttendanceStateLoadedSchedule value)? loadedSchedule,
    TResult Function(AttendanceStateError value)? error,
    TResult Function(AttendanceStateEndedSession value)? endedSession,
    TResult Function(AttendanceStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AttendanceStateError implements AttendanceState {
  const factory AttendanceStateError({required final String error}) =
      _$AttendanceStateErrorImpl;

  String get error;

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceStateErrorImplCopyWith<_$AttendanceStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AttendanceStateEndedSessionImplCopyWith<$Res> {
  factory _$$AttendanceStateEndedSessionImplCopyWith(
          _$AttendanceStateEndedSessionImpl value,
          $Res Function(_$AttendanceStateEndedSessionImpl) then) =
      __$$AttendanceStateEndedSessionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AttendanceStateEndedSessionImplCopyWithImpl<$Res>
    extends _$AttendanceStateCopyWithImpl<$Res,
        _$AttendanceStateEndedSessionImpl>
    implements _$$AttendanceStateEndedSessionImplCopyWith<$Res> {
  __$$AttendanceStateEndedSessionImplCopyWithImpl(
      _$AttendanceStateEndedSessionImpl _value,
      $Res Function(_$AttendanceStateEndedSessionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AttendanceStateEndedSessionImpl implements AttendanceStateEndedSession {
  const _$AttendanceStateEndedSessionImpl();

  @override
  String toString() {
    return 'AttendanceState.endedSession()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceStateEndedSessionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingInstitutes,
    required TResult Function(List<InstituteModel> institutes) loadedInstitutes,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function() loadingSchedule,
    required TResult Function(
            List<ScheduleModel> schedule, List<StudentModel> students)
        loadedSchedule,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)
        loaded,
  }) {
    return endedSession();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingInstitutes,
    TResult? Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult? Function()? loadingGroups,
    TResult? Function(List<GroupModel> groups)? loadedGroups,
    TResult? Function()? loadingSchedule,
    TResult? Function(
            List<ScheduleModel> schedule, List<StudentModel> students)?
        loadedSchedule,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        loaded,
  }) {
    return endedSession?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingInstitutes,
    TResult Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult Function()? loadingGroups,
    TResult Function(List<GroupModel> groups)? loadedGroups,
    TResult Function()? loadingSchedule,
    TResult Function(List<ScheduleModel> schedule, List<StudentModel> students)?
        loadedSchedule,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
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
    required TResult Function(AttendanceStateLoadingInstitutes value)
        loadingInstitutes,
    required TResult Function(AttendanceStateLoadedInstitutes value)
        loadedInstitutes,
    required TResult Function(AttendanceStateLoadingGroups value) loadingGroups,
    required TResult Function(AttendanceStateLoadedGroups value) loadedGroups,
    required TResult Function(AttendanceStateLoadingSchedule value)
        loadingSchedule,
    required TResult Function(AttendanceStateLoadedSchedule value)
        loadedSchedule,
    required TResult Function(AttendanceStateError value) error,
    required TResult Function(AttendanceStateEndedSession value) endedSession,
    required TResult Function(AttendanceStateToLoaded value) loaded,
  }) {
    return endedSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttendanceStateLoadingInstitutes value)?
        loadingInstitutes,
    TResult? Function(AttendanceStateLoadedInstitutes value)? loadedInstitutes,
    TResult? Function(AttendanceStateLoadingGroups value)? loadingGroups,
    TResult? Function(AttendanceStateLoadedGroups value)? loadedGroups,
    TResult? Function(AttendanceStateLoadingSchedule value)? loadingSchedule,
    TResult? Function(AttendanceStateLoadedSchedule value)? loadedSchedule,
    TResult? Function(AttendanceStateError value)? error,
    TResult? Function(AttendanceStateEndedSession value)? endedSession,
    TResult? Function(AttendanceStateToLoaded value)? loaded,
  }) {
    return endedSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttendanceStateLoadingInstitutes value)? loadingInstitutes,
    TResult Function(AttendanceStateLoadedInstitutes value)? loadedInstitutes,
    TResult Function(AttendanceStateLoadingGroups value)? loadingGroups,
    TResult Function(AttendanceStateLoadedGroups value)? loadedGroups,
    TResult Function(AttendanceStateLoadingSchedule value)? loadingSchedule,
    TResult Function(AttendanceStateLoadedSchedule value)? loadedSchedule,
    TResult Function(AttendanceStateError value)? error,
    TResult Function(AttendanceStateEndedSession value)? endedSession,
    TResult Function(AttendanceStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (endedSession != null) {
      return endedSession(this);
    }
    return orElse();
  }
}

abstract class AttendanceStateEndedSession implements AttendanceState {
  const factory AttendanceStateEndedSession() =
      _$AttendanceStateEndedSessionImpl;
}

/// @nodoc
abstract class _$$AttendanceStateToLoadedImplCopyWith<$Res> {
  factory _$$AttendanceStateToLoadedImplCopyWith(
          _$AttendanceStateToLoadedImpl value,
          $Res Function(_$AttendanceStateToLoadedImpl) then) =
      __$$AttendanceStateToLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<InstituteModel> institutes,
      InstituteModel? selectedInstitute,
      List<GroupModel> groups,
      GroupModel? selectedGroup,
      List<ScheduleModel> schedule});
}

/// @nodoc
class __$$AttendanceStateToLoadedImplCopyWithImpl<$Res>
    extends _$AttendanceStateCopyWithImpl<$Res, _$AttendanceStateToLoadedImpl>
    implements _$$AttendanceStateToLoadedImplCopyWith<$Res> {
  __$$AttendanceStateToLoadedImplCopyWithImpl(
      _$AttendanceStateToLoadedImpl _value,
      $Res Function(_$AttendanceStateToLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? institutes = null,
    Object? selectedInstitute = freezed,
    Object? groups = null,
    Object? selectedGroup = freezed,
    Object? schedule = null,
  }) {
    return _then(_$AttendanceStateToLoadedImpl(
      institutes: null == institutes
          ? _value._institutes
          : institutes // ignore: cast_nullable_to_non_nullable
              as List<InstituteModel>,
      selectedInstitute: freezed == selectedInstitute
          ? _value.selectedInstitute
          : selectedInstitute // ignore: cast_nullable_to_non_nullable
              as InstituteModel?,
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupModel>,
      selectedGroup: freezed == selectedGroup
          ? _value.selectedGroup
          : selectedGroup // ignore: cast_nullable_to_non_nullable
              as GroupModel?,
      schedule: null == schedule
          ? _value._schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<ScheduleModel>,
    ));
  }
}

/// @nodoc

class _$AttendanceStateToLoadedImpl implements AttendanceStateToLoaded {
  const _$AttendanceStateToLoadedImpl(
      {required final List<InstituteModel> institutes,
      required this.selectedInstitute,
      required final List<GroupModel> groups,
      required this.selectedGroup,
      required final List<ScheduleModel> schedule})
      : _institutes = institutes,
        _groups = groups,
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
  final List<GroupModel> _groups;
  @override
  List<GroupModel> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  final GroupModel? selectedGroup;
  final List<ScheduleModel> _schedule;
  @override
  List<ScheduleModel> get schedule {
    if (_schedule is EqualUnmodifiableListView) return _schedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedule);
  }

  @override
  String toString() {
    return 'AttendanceState.loaded(institutes: $institutes, selectedInstitute: $selectedInstitute, groups: $groups, selectedGroup: $selectedGroup, schedule: $schedule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceStateToLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._institutes, _institutes) &&
            (identical(other.selectedInstitute, selectedInstitute) ||
                other.selectedInstitute == selectedInstitute) &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            (identical(other.selectedGroup, selectedGroup) ||
                other.selectedGroup == selectedGroup) &&
            const DeepCollectionEquality().equals(other._schedule, _schedule));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_institutes),
      selectedInstitute,
      const DeepCollectionEquality().hash(_groups),
      selectedGroup,
      const DeepCollectionEquality().hash(_schedule));

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceStateToLoadedImplCopyWith<_$AttendanceStateToLoadedImpl>
      get copyWith => __$$AttendanceStateToLoadedImplCopyWithImpl<
          _$AttendanceStateToLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingInstitutes,
    required TResult Function(List<InstituteModel> institutes) loadedInstitutes,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function() loadingSchedule,
    required TResult Function(
            List<ScheduleModel> schedule, List<StudentModel> students)
        loadedSchedule,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)
        loaded,
  }) {
    return loaded(
        institutes, selectedInstitute, groups, selectedGroup, schedule);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingInstitutes,
    TResult? Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult? Function()? loadingGroups,
    TResult? Function(List<GroupModel> groups)? loadedGroups,
    TResult? Function()? loadingSchedule,
    TResult? Function(
            List<ScheduleModel> schedule, List<StudentModel> students)?
        loadedSchedule,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        loaded,
  }) {
    return loaded?.call(
        institutes, selectedInstitute, groups, selectedGroup, schedule);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingInstitutes,
    TResult Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult Function()? loadingGroups,
    TResult Function(List<GroupModel> groups)? loadedGroups,
    TResult Function()? loadingSchedule,
    TResult Function(List<ScheduleModel> schedule, List<StudentModel> students)?
        loadedSchedule,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<GroupModel> groups,
            GroupModel? selectedGroup,
            List<ScheduleModel> schedule)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          institutes, selectedInstitute, groups, selectedGroup, schedule);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttendanceStateLoadingInstitutes value)
        loadingInstitutes,
    required TResult Function(AttendanceStateLoadedInstitutes value)
        loadedInstitutes,
    required TResult Function(AttendanceStateLoadingGroups value) loadingGroups,
    required TResult Function(AttendanceStateLoadedGroups value) loadedGroups,
    required TResult Function(AttendanceStateLoadingSchedule value)
        loadingSchedule,
    required TResult Function(AttendanceStateLoadedSchedule value)
        loadedSchedule,
    required TResult Function(AttendanceStateError value) error,
    required TResult Function(AttendanceStateEndedSession value) endedSession,
    required TResult Function(AttendanceStateToLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttendanceStateLoadingInstitutes value)?
        loadingInstitutes,
    TResult? Function(AttendanceStateLoadedInstitutes value)? loadedInstitutes,
    TResult? Function(AttendanceStateLoadingGroups value)? loadingGroups,
    TResult? Function(AttendanceStateLoadedGroups value)? loadedGroups,
    TResult? Function(AttendanceStateLoadingSchedule value)? loadingSchedule,
    TResult? Function(AttendanceStateLoadedSchedule value)? loadedSchedule,
    TResult? Function(AttendanceStateError value)? error,
    TResult? Function(AttendanceStateEndedSession value)? endedSession,
    TResult? Function(AttendanceStateToLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttendanceStateLoadingInstitutes value)? loadingInstitutes,
    TResult Function(AttendanceStateLoadedInstitutes value)? loadedInstitutes,
    TResult Function(AttendanceStateLoadingGroups value)? loadingGroups,
    TResult Function(AttendanceStateLoadedGroups value)? loadedGroups,
    TResult Function(AttendanceStateLoadingSchedule value)? loadingSchedule,
    TResult Function(AttendanceStateLoadedSchedule value)? loadedSchedule,
    TResult Function(AttendanceStateError value)? error,
    TResult Function(AttendanceStateEndedSession value)? endedSession,
    TResult Function(AttendanceStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AttendanceStateToLoaded implements AttendanceState {
  const factory AttendanceStateToLoaded(
          {required final List<InstituteModel> institutes,
          required final InstituteModel? selectedInstitute,
          required final List<GroupModel> groups,
          required final GroupModel? selectedGroup,
          required final List<ScheduleModel> schedule}) =
      _$AttendanceStateToLoadedImpl;

  List<InstituteModel> get institutes;
  InstituteModel? get selectedInstitute;
  List<GroupModel> get groups;
  GroupModel? get selectedGroup;
  List<ScheduleModel> get schedule;

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceStateToLoadedImplCopyWith<_$AttendanceStateToLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
