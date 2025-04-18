// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'department_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DepartmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInstitutes,
    required TResult Function(int instituteId) loadDepartments,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)
        toLoaded,
    required TResult Function(
            List<DepartmentModel> departments, int instituteId, String name)
        createDepartment,
    required TResult Function(List<DepartmentModel> departments,
            int departmentId, int instituteId, String name)
        updateDepartment,
    required TResult Function(
            List<DepartmentModel> departments, int departmentId)
        deleteDepartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInstitutes,
    TResult? Function(int instituteId)? loadDepartments,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
        toLoaded,
    TResult? Function(
            List<DepartmentModel> departments, int instituteId, String name)?
        createDepartment,
    TResult? Function(List<DepartmentModel> departments, int departmentId,
            int instituteId, String name)?
        updateDepartment,
    TResult? Function(List<DepartmentModel> departments, int departmentId)?
        deleteDepartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInstitutes,
    TResult Function(int instituteId)? loadDepartments,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
        toLoaded,
    TResult Function(
            List<DepartmentModel> departments, int instituteId, String name)?
        createDepartment,
    TResult Function(List<DepartmentModel> departments, int departmentId,
            int instituteId, String name)?
        updateDepartment,
    TResult Function(List<DepartmentModel> departments, int departmentId)?
        deleteDepartment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DepartmentEventLoadInstitutes value)
        loadInstitutes,
    required TResult Function(DepartmentEventLoadDepartments value)
        loadDepartments,
    required TResult Function(DepartmentEventToLoaded value) toLoaded,
    required TResult Function(DepartmentEventCreateDepartment value)
        createDepartment,
    required TResult Function(DepartmentEventUpdateDepartment value)
        updateDepartment,
    required TResult Function(DepartmentEventDeleteDepartment value)
        deleteDepartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DepartmentEventLoadInstitutes value)? loadInstitutes,
    TResult? Function(DepartmentEventLoadDepartments value)? loadDepartments,
    TResult? Function(DepartmentEventToLoaded value)? toLoaded,
    TResult? Function(DepartmentEventCreateDepartment value)? createDepartment,
    TResult? Function(DepartmentEventUpdateDepartment value)? updateDepartment,
    TResult? Function(DepartmentEventDeleteDepartment value)? deleteDepartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DepartmentEventLoadInstitutes value)? loadInstitutes,
    TResult Function(DepartmentEventLoadDepartments value)? loadDepartments,
    TResult Function(DepartmentEventToLoaded value)? toLoaded,
    TResult Function(DepartmentEventCreateDepartment value)? createDepartment,
    TResult Function(DepartmentEventUpdateDepartment value)? updateDepartment,
    TResult Function(DepartmentEventDeleteDepartment value)? deleteDepartment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentEventCopyWith<$Res> {
  factory $DepartmentEventCopyWith(
          DepartmentEvent value, $Res Function(DepartmentEvent) then) =
      _$DepartmentEventCopyWithImpl<$Res, DepartmentEvent>;
}

/// @nodoc
class _$DepartmentEventCopyWithImpl<$Res, $Val extends DepartmentEvent>
    implements $DepartmentEventCopyWith<$Res> {
  _$DepartmentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DepartmentEventLoadInstitutesImplCopyWith<$Res> {
  factory _$$DepartmentEventLoadInstitutesImplCopyWith(
          _$DepartmentEventLoadInstitutesImpl value,
          $Res Function(_$DepartmentEventLoadInstitutesImpl) then) =
      __$$DepartmentEventLoadInstitutesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DepartmentEventLoadInstitutesImplCopyWithImpl<$Res>
    extends _$DepartmentEventCopyWithImpl<$Res,
        _$DepartmentEventLoadInstitutesImpl>
    implements _$$DepartmentEventLoadInstitutesImplCopyWith<$Res> {
  __$$DepartmentEventLoadInstitutesImplCopyWithImpl(
      _$DepartmentEventLoadInstitutesImpl _value,
      $Res Function(_$DepartmentEventLoadInstitutesImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DepartmentEventLoadInstitutesImpl
    implements DepartmentEventLoadInstitutes {
  const _$DepartmentEventLoadInstitutesImpl();

  @override
  String toString() {
    return 'DepartmentEvent.loadInstitutes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentEventLoadInstitutesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInstitutes,
    required TResult Function(int instituteId) loadDepartments,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)
        toLoaded,
    required TResult Function(
            List<DepartmentModel> departments, int instituteId, String name)
        createDepartment,
    required TResult Function(List<DepartmentModel> departments,
            int departmentId, int instituteId, String name)
        updateDepartment,
    required TResult Function(
            List<DepartmentModel> departments, int departmentId)
        deleteDepartment,
  }) {
    return loadInstitutes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInstitutes,
    TResult? Function(int instituteId)? loadDepartments,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
        toLoaded,
    TResult? Function(
            List<DepartmentModel> departments, int instituteId, String name)?
        createDepartment,
    TResult? Function(List<DepartmentModel> departments, int departmentId,
            int instituteId, String name)?
        updateDepartment,
    TResult? Function(List<DepartmentModel> departments, int departmentId)?
        deleteDepartment,
  }) {
    return loadInstitutes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInstitutes,
    TResult Function(int instituteId)? loadDepartments,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
        toLoaded,
    TResult Function(
            List<DepartmentModel> departments, int instituteId, String name)?
        createDepartment,
    TResult Function(List<DepartmentModel> departments, int departmentId,
            int instituteId, String name)?
        updateDepartment,
    TResult Function(List<DepartmentModel> departments, int departmentId)?
        deleteDepartment,
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
    required TResult Function(DepartmentEventLoadInstitutes value)
        loadInstitutes,
    required TResult Function(DepartmentEventLoadDepartments value)
        loadDepartments,
    required TResult Function(DepartmentEventToLoaded value) toLoaded,
    required TResult Function(DepartmentEventCreateDepartment value)
        createDepartment,
    required TResult Function(DepartmentEventUpdateDepartment value)
        updateDepartment,
    required TResult Function(DepartmentEventDeleteDepartment value)
        deleteDepartment,
  }) {
    return loadInstitutes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DepartmentEventLoadInstitutes value)? loadInstitutes,
    TResult? Function(DepartmentEventLoadDepartments value)? loadDepartments,
    TResult? Function(DepartmentEventToLoaded value)? toLoaded,
    TResult? Function(DepartmentEventCreateDepartment value)? createDepartment,
    TResult? Function(DepartmentEventUpdateDepartment value)? updateDepartment,
    TResult? Function(DepartmentEventDeleteDepartment value)? deleteDepartment,
  }) {
    return loadInstitutes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DepartmentEventLoadInstitutes value)? loadInstitutes,
    TResult Function(DepartmentEventLoadDepartments value)? loadDepartments,
    TResult Function(DepartmentEventToLoaded value)? toLoaded,
    TResult Function(DepartmentEventCreateDepartment value)? createDepartment,
    TResult Function(DepartmentEventUpdateDepartment value)? updateDepartment,
    TResult Function(DepartmentEventDeleteDepartment value)? deleteDepartment,
    required TResult orElse(),
  }) {
    if (loadInstitutes != null) {
      return loadInstitutes(this);
    }
    return orElse();
  }
}

abstract class DepartmentEventLoadInstitutes implements DepartmentEvent {
  const factory DepartmentEventLoadInstitutes() =
      _$DepartmentEventLoadInstitutesImpl;
}

/// @nodoc
abstract class _$$DepartmentEventLoadDepartmentsImplCopyWith<$Res> {
  factory _$$DepartmentEventLoadDepartmentsImplCopyWith(
          _$DepartmentEventLoadDepartmentsImpl value,
          $Res Function(_$DepartmentEventLoadDepartmentsImpl) then) =
      __$$DepartmentEventLoadDepartmentsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int instituteId});
}

/// @nodoc
class __$$DepartmentEventLoadDepartmentsImplCopyWithImpl<$Res>
    extends _$DepartmentEventCopyWithImpl<$Res,
        _$DepartmentEventLoadDepartmentsImpl>
    implements _$$DepartmentEventLoadDepartmentsImplCopyWith<$Res> {
  __$$DepartmentEventLoadDepartmentsImplCopyWithImpl(
      _$DepartmentEventLoadDepartmentsImpl _value,
      $Res Function(_$DepartmentEventLoadDepartmentsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instituteId = null,
  }) {
    return _then(_$DepartmentEventLoadDepartmentsImpl(
      instituteId: null == instituteId
          ? _value.instituteId
          : instituteId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DepartmentEventLoadDepartmentsImpl
    implements DepartmentEventLoadDepartments {
  const _$DepartmentEventLoadDepartmentsImpl({required this.instituteId});

  @override
  final int instituteId;

  @override
  String toString() {
    return 'DepartmentEvent.loadDepartments(instituteId: $instituteId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentEventLoadDepartmentsImpl &&
            (identical(other.instituteId, instituteId) ||
                other.instituteId == instituteId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, instituteId);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentEventLoadDepartmentsImplCopyWith<
          _$DepartmentEventLoadDepartmentsImpl>
      get copyWith => __$$DepartmentEventLoadDepartmentsImplCopyWithImpl<
          _$DepartmentEventLoadDepartmentsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInstitutes,
    required TResult Function(int instituteId) loadDepartments,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)
        toLoaded,
    required TResult Function(
            List<DepartmentModel> departments, int instituteId, String name)
        createDepartment,
    required TResult Function(List<DepartmentModel> departments,
            int departmentId, int instituteId, String name)
        updateDepartment,
    required TResult Function(
            List<DepartmentModel> departments, int departmentId)
        deleteDepartment,
  }) {
    return loadDepartments(instituteId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInstitutes,
    TResult? Function(int instituteId)? loadDepartments,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
        toLoaded,
    TResult? Function(
            List<DepartmentModel> departments, int instituteId, String name)?
        createDepartment,
    TResult? Function(List<DepartmentModel> departments, int departmentId,
            int instituteId, String name)?
        updateDepartment,
    TResult? Function(List<DepartmentModel> departments, int departmentId)?
        deleteDepartment,
  }) {
    return loadDepartments?.call(instituteId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInstitutes,
    TResult Function(int instituteId)? loadDepartments,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
        toLoaded,
    TResult Function(
            List<DepartmentModel> departments, int instituteId, String name)?
        createDepartment,
    TResult Function(List<DepartmentModel> departments, int departmentId,
            int instituteId, String name)?
        updateDepartment,
    TResult Function(List<DepartmentModel> departments, int departmentId)?
        deleteDepartment,
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
    required TResult Function(DepartmentEventLoadInstitutes value)
        loadInstitutes,
    required TResult Function(DepartmentEventLoadDepartments value)
        loadDepartments,
    required TResult Function(DepartmentEventToLoaded value) toLoaded,
    required TResult Function(DepartmentEventCreateDepartment value)
        createDepartment,
    required TResult Function(DepartmentEventUpdateDepartment value)
        updateDepartment,
    required TResult Function(DepartmentEventDeleteDepartment value)
        deleteDepartment,
  }) {
    return loadDepartments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DepartmentEventLoadInstitutes value)? loadInstitutes,
    TResult? Function(DepartmentEventLoadDepartments value)? loadDepartments,
    TResult? Function(DepartmentEventToLoaded value)? toLoaded,
    TResult? Function(DepartmentEventCreateDepartment value)? createDepartment,
    TResult? Function(DepartmentEventUpdateDepartment value)? updateDepartment,
    TResult? Function(DepartmentEventDeleteDepartment value)? deleteDepartment,
  }) {
    return loadDepartments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DepartmentEventLoadInstitutes value)? loadInstitutes,
    TResult Function(DepartmentEventLoadDepartments value)? loadDepartments,
    TResult Function(DepartmentEventToLoaded value)? toLoaded,
    TResult Function(DepartmentEventCreateDepartment value)? createDepartment,
    TResult Function(DepartmentEventUpdateDepartment value)? updateDepartment,
    TResult Function(DepartmentEventDeleteDepartment value)? deleteDepartment,
    required TResult orElse(),
  }) {
    if (loadDepartments != null) {
      return loadDepartments(this);
    }
    return orElse();
  }
}

abstract class DepartmentEventLoadDepartments implements DepartmentEvent {
  const factory DepartmentEventLoadDepartments(
      {required final int instituteId}) = _$DepartmentEventLoadDepartmentsImpl;

  int get instituteId;

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DepartmentEventLoadDepartmentsImplCopyWith<
          _$DepartmentEventLoadDepartmentsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DepartmentEventToLoadedImplCopyWith<$Res> {
  factory _$$DepartmentEventToLoadedImplCopyWith(
          _$DepartmentEventToLoadedImpl value,
          $Res Function(_$DepartmentEventToLoadedImpl) then) =
      __$$DepartmentEventToLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<InstituteModel> institutes,
      InstituteModel? selectedInstitute,
      List<DepartmentModel> departments});
}

/// @nodoc
class __$$DepartmentEventToLoadedImplCopyWithImpl<$Res>
    extends _$DepartmentEventCopyWithImpl<$Res, _$DepartmentEventToLoadedImpl>
    implements _$$DepartmentEventToLoadedImplCopyWith<$Res> {
  __$$DepartmentEventToLoadedImplCopyWithImpl(
      _$DepartmentEventToLoadedImpl _value,
      $Res Function(_$DepartmentEventToLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? institutes = null,
    Object? selectedInstitute = freezed,
    Object? departments = null,
  }) {
    return _then(_$DepartmentEventToLoadedImpl(
      institutes: null == institutes
          ? _value._institutes
          : institutes // ignore: cast_nullable_to_non_nullable
              as List<InstituteModel>,
      selectedInstitute: freezed == selectedInstitute
          ? _value.selectedInstitute
          : selectedInstitute // ignore: cast_nullable_to_non_nullable
              as InstituteModel?,
      departments: null == departments
          ? _value._departments
          : departments // ignore: cast_nullable_to_non_nullable
              as List<DepartmentModel>,
    ));
  }
}

/// @nodoc

class _$DepartmentEventToLoadedImpl implements DepartmentEventToLoaded {
  const _$DepartmentEventToLoadedImpl(
      {required final List<InstituteModel> institutes,
      required this.selectedInstitute,
      required final List<DepartmentModel> departments})
      : _institutes = institutes,
        _departments = departments;

  final List<InstituteModel> _institutes;
  @override
  List<InstituteModel> get institutes {
    if (_institutes is EqualUnmodifiableListView) return _institutes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_institutes);
  }

  @override
  final InstituteModel? selectedInstitute;
  final List<DepartmentModel> _departments;
  @override
  List<DepartmentModel> get departments {
    if (_departments is EqualUnmodifiableListView) return _departments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_departments);
  }

  @override
  String toString() {
    return 'DepartmentEvent.toLoaded(institutes: $institutes, selectedInstitute: $selectedInstitute, departments: $departments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentEventToLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._institutes, _institutes) &&
            (identical(other.selectedInstitute, selectedInstitute) ||
                other.selectedInstitute == selectedInstitute) &&
            const DeepCollectionEquality()
                .equals(other._departments, _departments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_institutes),
      selectedInstitute,
      const DeepCollectionEquality().hash(_departments));

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentEventToLoadedImplCopyWith<_$DepartmentEventToLoadedImpl>
      get copyWith => __$$DepartmentEventToLoadedImplCopyWithImpl<
          _$DepartmentEventToLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInstitutes,
    required TResult Function(int instituteId) loadDepartments,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)
        toLoaded,
    required TResult Function(
            List<DepartmentModel> departments, int instituteId, String name)
        createDepartment,
    required TResult Function(List<DepartmentModel> departments,
            int departmentId, int instituteId, String name)
        updateDepartment,
    required TResult Function(
            List<DepartmentModel> departments, int departmentId)
        deleteDepartment,
  }) {
    return toLoaded(institutes, selectedInstitute, departments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInstitutes,
    TResult? Function(int instituteId)? loadDepartments,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
        toLoaded,
    TResult? Function(
            List<DepartmentModel> departments, int instituteId, String name)?
        createDepartment,
    TResult? Function(List<DepartmentModel> departments, int departmentId,
            int instituteId, String name)?
        updateDepartment,
    TResult? Function(List<DepartmentModel> departments, int departmentId)?
        deleteDepartment,
  }) {
    return toLoaded?.call(institutes, selectedInstitute, departments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInstitutes,
    TResult Function(int instituteId)? loadDepartments,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
        toLoaded,
    TResult Function(
            List<DepartmentModel> departments, int instituteId, String name)?
        createDepartment,
    TResult Function(List<DepartmentModel> departments, int departmentId,
            int instituteId, String name)?
        updateDepartment,
    TResult Function(List<DepartmentModel> departments, int departmentId)?
        deleteDepartment,
    required TResult orElse(),
  }) {
    if (toLoaded != null) {
      return toLoaded(institutes, selectedInstitute, departments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DepartmentEventLoadInstitutes value)
        loadInstitutes,
    required TResult Function(DepartmentEventLoadDepartments value)
        loadDepartments,
    required TResult Function(DepartmentEventToLoaded value) toLoaded,
    required TResult Function(DepartmentEventCreateDepartment value)
        createDepartment,
    required TResult Function(DepartmentEventUpdateDepartment value)
        updateDepartment,
    required TResult Function(DepartmentEventDeleteDepartment value)
        deleteDepartment,
  }) {
    return toLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DepartmentEventLoadInstitutes value)? loadInstitutes,
    TResult? Function(DepartmentEventLoadDepartments value)? loadDepartments,
    TResult? Function(DepartmentEventToLoaded value)? toLoaded,
    TResult? Function(DepartmentEventCreateDepartment value)? createDepartment,
    TResult? Function(DepartmentEventUpdateDepartment value)? updateDepartment,
    TResult? Function(DepartmentEventDeleteDepartment value)? deleteDepartment,
  }) {
    return toLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DepartmentEventLoadInstitutes value)? loadInstitutes,
    TResult Function(DepartmentEventLoadDepartments value)? loadDepartments,
    TResult Function(DepartmentEventToLoaded value)? toLoaded,
    TResult Function(DepartmentEventCreateDepartment value)? createDepartment,
    TResult Function(DepartmentEventUpdateDepartment value)? updateDepartment,
    TResult Function(DepartmentEventDeleteDepartment value)? deleteDepartment,
    required TResult orElse(),
  }) {
    if (toLoaded != null) {
      return toLoaded(this);
    }
    return orElse();
  }
}

abstract class DepartmentEventToLoaded implements DepartmentEvent {
  const factory DepartmentEventToLoaded(
          {required final List<InstituteModel> institutes,
          required final InstituteModel? selectedInstitute,
          required final List<DepartmentModel> departments}) =
      _$DepartmentEventToLoadedImpl;

  List<InstituteModel> get institutes;
  InstituteModel? get selectedInstitute;
  List<DepartmentModel> get departments;

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DepartmentEventToLoadedImplCopyWith<_$DepartmentEventToLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DepartmentEventCreateDepartmentImplCopyWith<$Res> {
  factory _$$DepartmentEventCreateDepartmentImplCopyWith(
          _$DepartmentEventCreateDepartmentImpl value,
          $Res Function(_$DepartmentEventCreateDepartmentImpl) then) =
      __$$DepartmentEventCreateDepartmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DepartmentModel> departments, int instituteId, String name});
}

/// @nodoc
class __$$DepartmentEventCreateDepartmentImplCopyWithImpl<$Res>
    extends _$DepartmentEventCopyWithImpl<$Res,
        _$DepartmentEventCreateDepartmentImpl>
    implements _$$DepartmentEventCreateDepartmentImplCopyWith<$Res> {
  __$$DepartmentEventCreateDepartmentImplCopyWithImpl(
      _$DepartmentEventCreateDepartmentImpl _value,
      $Res Function(_$DepartmentEventCreateDepartmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departments = null,
    Object? instituteId = null,
    Object? name = null,
  }) {
    return _then(_$DepartmentEventCreateDepartmentImpl(
      departments: null == departments
          ? _value._departments
          : departments // ignore: cast_nullable_to_non_nullable
              as List<DepartmentModel>,
      instituteId: null == instituteId
          ? _value.instituteId
          : instituteId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DepartmentEventCreateDepartmentImpl
    implements DepartmentEventCreateDepartment {
  const _$DepartmentEventCreateDepartmentImpl(
      {required final List<DepartmentModel> departments,
      required this.instituteId,
      required this.name})
      : _departments = departments;

  final List<DepartmentModel> _departments;
  @override
  List<DepartmentModel> get departments {
    if (_departments is EqualUnmodifiableListView) return _departments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_departments);
  }

  @override
  final int instituteId;
  @override
  final String name;

  @override
  String toString() {
    return 'DepartmentEvent.createDepartment(departments: $departments, instituteId: $instituteId, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentEventCreateDepartmentImpl &&
            const DeepCollectionEquality()
                .equals(other._departments, _departments) &&
            (identical(other.instituteId, instituteId) ||
                other.instituteId == instituteId) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_departments), instituteId, name);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentEventCreateDepartmentImplCopyWith<
          _$DepartmentEventCreateDepartmentImpl>
      get copyWith => __$$DepartmentEventCreateDepartmentImplCopyWithImpl<
          _$DepartmentEventCreateDepartmentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInstitutes,
    required TResult Function(int instituteId) loadDepartments,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)
        toLoaded,
    required TResult Function(
            List<DepartmentModel> departments, int instituteId, String name)
        createDepartment,
    required TResult Function(List<DepartmentModel> departments,
            int departmentId, int instituteId, String name)
        updateDepartment,
    required TResult Function(
            List<DepartmentModel> departments, int departmentId)
        deleteDepartment,
  }) {
    return createDepartment(departments, instituteId, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInstitutes,
    TResult? Function(int instituteId)? loadDepartments,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
        toLoaded,
    TResult? Function(
            List<DepartmentModel> departments, int instituteId, String name)?
        createDepartment,
    TResult? Function(List<DepartmentModel> departments, int departmentId,
            int instituteId, String name)?
        updateDepartment,
    TResult? Function(List<DepartmentModel> departments, int departmentId)?
        deleteDepartment,
  }) {
    return createDepartment?.call(departments, instituteId, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInstitutes,
    TResult Function(int instituteId)? loadDepartments,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
        toLoaded,
    TResult Function(
            List<DepartmentModel> departments, int instituteId, String name)?
        createDepartment,
    TResult Function(List<DepartmentModel> departments, int departmentId,
            int instituteId, String name)?
        updateDepartment,
    TResult Function(List<DepartmentModel> departments, int departmentId)?
        deleteDepartment,
    required TResult orElse(),
  }) {
    if (createDepartment != null) {
      return createDepartment(departments, instituteId, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DepartmentEventLoadInstitutes value)
        loadInstitutes,
    required TResult Function(DepartmentEventLoadDepartments value)
        loadDepartments,
    required TResult Function(DepartmentEventToLoaded value) toLoaded,
    required TResult Function(DepartmentEventCreateDepartment value)
        createDepartment,
    required TResult Function(DepartmentEventUpdateDepartment value)
        updateDepartment,
    required TResult Function(DepartmentEventDeleteDepartment value)
        deleteDepartment,
  }) {
    return createDepartment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DepartmentEventLoadInstitutes value)? loadInstitutes,
    TResult? Function(DepartmentEventLoadDepartments value)? loadDepartments,
    TResult? Function(DepartmentEventToLoaded value)? toLoaded,
    TResult? Function(DepartmentEventCreateDepartment value)? createDepartment,
    TResult? Function(DepartmentEventUpdateDepartment value)? updateDepartment,
    TResult? Function(DepartmentEventDeleteDepartment value)? deleteDepartment,
  }) {
    return createDepartment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DepartmentEventLoadInstitutes value)? loadInstitutes,
    TResult Function(DepartmentEventLoadDepartments value)? loadDepartments,
    TResult Function(DepartmentEventToLoaded value)? toLoaded,
    TResult Function(DepartmentEventCreateDepartment value)? createDepartment,
    TResult Function(DepartmentEventUpdateDepartment value)? updateDepartment,
    TResult Function(DepartmentEventDeleteDepartment value)? deleteDepartment,
    required TResult orElse(),
  }) {
    if (createDepartment != null) {
      return createDepartment(this);
    }
    return orElse();
  }
}

abstract class DepartmentEventCreateDepartment implements DepartmentEvent {
  const factory DepartmentEventCreateDepartment(
      {required final List<DepartmentModel> departments,
      required final int instituteId,
      required final String name}) = _$DepartmentEventCreateDepartmentImpl;

  List<DepartmentModel> get departments;
  int get instituteId;
  String get name;

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DepartmentEventCreateDepartmentImplCopyWith<
          _$DepartmentEventCreateDepartmentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DepartmentEventUpdateDepartmentImplCopyWith<$Res> {
  factory _$$DepartmentEventUpdateDepartmentImplCopyWith(
          _$DepartmentEventUpdateDepartmentImpl value,
          $Res Function(_$DepartmentEventUpdateDepartmentImpl) then) =
      __$$DepartmentEventUpdateDepartmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<DepartmentModel> departments,
      int departmentId,
      int instituteId,
      String name});
}

/// @nodoc
class __$$DepartmentEventUpdateDepartmentImplCopyWithImpl<$Res>
    extends _$DepartmentEventCopyWithImpl<$Res,
        _$DepartmentEventUpdateDepartmentImpl>
    implements _$$DepartmentEventUpdateDepartmentImplCopyWith<$Res> {
  __$$DepartmentEventUpdateDepartmentImplCopyWithImpl(
      _$DepartmentEventUpdateDepartmentImpl _value,
      $Res Function(_$DepartmentEventUpdateDepartmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departments = null,
    Object? departmentId = null,
    Object? instituteId = null,
    Object? name = null,
  }) {
    return _then(_$DepartmentEventUpdateDepartmentImpl(
      departments: null == departments
          ? _value._departments
          : departments // ignore: cast_nullable_to_non_nullable
              as List<DepartmentModel>,
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
      instituteId: null == instituteId
          ? _value.instituteId
          : instituteId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DepartmentEventUpdateDepartmentImpl
    implements DepartmentEventUpdateDepartment {
  const _$DepartmentEventUpdateDepartmentImpl(
      {required final List<DepartmentModel> departments,
      required this.departmentId,
      required this.instituteId,
      required this.name})
      : _departments = departments;

  final List<DepartmentModel> _departments;
  @override
  List<DepartmentModel> get departments {
    if (_departments is EqualUnmodifiableListView) return _departments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_departments);
  }

  @override
  final int departmentId;
  @override
  final int instituteId;
  @override
  final String name;

  @override
  String toString() {
    return 'DepartmentEvent.updateDepartment(departments: $departments, departmentId: $departmentId, instituteId: $instituteId, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentEventUpdateDepartmentImpl &&
            const DeepCollectionEquality()
                .equals(other._departments, _departments) &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId) &&
            (identical(other.instituteId, instituteId) ||
                other.instituteId == instituteId) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_departments),
      departmentId,
      instituteId,
      name);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentEventUpdateDepartmentImplCopyWith<
          _$DepartmentEventUpdateDepartmentImpl>
      get copyWith => __$$DepartmentEventUpdateDepartmentImplCopyWithImpl<
          _$DepartmentEventUpdateDepartmentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInstitutes,
    required TResult Function(int instituteId) loadDepartments,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)
        toLoaded,
    required TResult Function(
            List<DepartmentModel> departments, int instituteId, String name)
        createDepartment,
    required TResult Function(List<DepartmentModel> departments,
            int departmentId, int instituteId, String name)
        updateDepartment,
    required TResult Function(
            List<DepartmentModel> departments, int departmentId)
        deleteDepartment,
  }) {
    return updateDepartment(departments, departmentId, instituteId, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInstitutes,
    TResult? Function(int instituteId)? loadDepartments,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
        toLoaded,
    TResult? Function(
            List<DepartmentModel> departments, int instituteId, String name)?
        createDepartment,
    TResult? Function(List<DepartmentModel> departments, int departmentId,
            int instituteId, String name)?
        updateDepartment,
    TResult? Function(List<DepartmentModel> departments, int departmentId)?
        deleteDepartment,
  }) {
    return updateDepartment?.call(departments, departmentId, instituteId, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInstitutes,
    TResult Function(int instituteId)? loadDepartments,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
        toLoaded,
    TResult Function(
            List<DepartmentModel> departments, int instituteId, String name)?
        createDepartment,
    TResult Function(List<DepartmentModel> departments, int departmentId,
            int instituteId, String name)?
        updateDepartment,
    TResult Function(List<DepartmentModel> departments, int departmentId)?
        deleteDepartment,
    required TResult orElse(),
  }) {
    if (updateDepartment != null) {
      return updateDepartment(departments, departmentId, instituteId, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DepartmentEventLoadInstitutes value)
        loadInstitutes,
    required TResult Function(DepartmentEventLoadDepartments value)
        loadDepartments,
    required TResult Function(DepartmentEventToLoaded value) toLoaded,
    required TResult Function(DepartmentEventCreateDepartment value)
        createDepartment,
    required TResult Function(DepartmentEventUpdateDepartment value)
        updateDepartment,
    required TResult Function(DepartmentEventDeleteDepartment value)
        deleteDepartment,
  }) {
    return updateDepartment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DepartmentEventLoadInstitutes value)? loadInstitutes,
    TResult? Function(DepartmentEventLoadDepartments value)? loadDepartments,
    TResult? Function(DepartmentEventToLoaded value)? toLoaded,
    TResult? Function(DepartmentEventCreateDepartment value)? createDepartment,
    TResult? Function(DepartmentEventUpdateDepartment value)? updateDepartment,
    TResult? Function(DepartmentEventDeleteDepartment value)? deleteDepartment,
  }) {
    return updateDepartment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DepartmentEventLoadInstitutes value)? loadInstitutes,
    TResult Function(DepartmentEventLoadDepartments value)? loadDepartments,
    TResult Function(DepartmentEventToLoaded value)? toLoaded,
    TResult Function(DepartmentEventCreateDepartment value)? createDepartment,
    TResult Function(DepartmentEventUpdateDepartment value)? updateDepartment,
    TResult Function(DepartmentEventDeleteDepartment value)? deleteDepartment,
    required TResult orElse(),
  }) {
    if (updateDepartment != null) {
      return updateDepartment(this);
    }
    return orElse();
  }
}

abstract class DepartmentEventUpdateDepartment implements DepartmentEvent {
  const factory DepartmentEventUpdateDepartment(
      {required final List<DepartmentModel> departments,
      required final int departmentId,
      required final int instituteId,
      required final String name}) = _$DepartmentEventUpdateDepartmentImpl;

  List<DepartmentModel> get departments;
  int get departmentId;
  int get instituteId;
  String get name;

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DepartmentEventUpdateDepartmentImplCopyWith<
          _$DepartmentEventUpdateDepartmentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DepartmentEventDeleteDepartmentImplCopyWith<$Res> {
  factory _$$DepartmentEventDeleteDepartmentImplCopyWith(
          _$DepartmentEventDeleteDepartmentImpl value,
          $Res Function(_$DepartmentEventDeleteDepartmentImpl) then) =
      __$$DepartmentEventDeleteDepartmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DepartmentModel> departments, int departmentId});
}

/// @nodoc
class __$$DepartmentEventDeleteDepartmentImplCopyWithImpl<$Res>
    extends _$DepartmentEventCopyWithImpl<$Res,
        _$DepartmentEventDeleteDepartmentImpl>
    implements _$$DepartmentEventDeleteDepartmentImplCopyWith<$Res> {
  __$$DepartmentEventDeleteDepartmentImplCopyWithImpl(
      _$DepartmentEventDeleteDepartmentImpl _value,
      $Res Function(_$DepartmentEventDeleteDepartmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departments = null,
    Object? departmentId = null,
  }) {
    return _then(_$DepartmentEventDeleteDepartmentImpl(
      departments: null == departments
          ? _value._departments
          : departments // ignore: cast_nullable_to_non_nullable
              as List<DepartmentModel>,
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DepartmentEventDeleteDepartmentImpl
    implements DepartmentEventDeleteDepartment {
  const _$DepartmentEventDeleteDepartmentImpl(
      {required final List<DepartmentModel> departments,
      required this.departmentId})
      : _departments = departments;

  final List<DepartmentModel> _departments;
  @override
  List<DepartmentModel> get departments {
    if (_departments is EqualUnmodifiableListView) return _departments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_departments);
  }

  @override
  final int departmentId;

  @override
  String toString() {
    return 'DepartmentEvent.deleteDepartment(departments: $departments, departmentId: $departmentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentEventDeleteDepartmentImpl &&
            const DeepCollectionEquality()
                .equals(other._departments, _departments) &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_departments), departmentId);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentEventDeleteDepartmentImplCopyWith<
          _$DepartmentEventDeleteDepartmentImpl>
      get copyWith => __$$DepartmentEventDeleteDepartmentImplCopyWithImpl<
          _$DepartmentEventDeleteDepartmentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInstitutes,
    required TResult Function(int instituteId) loadDepartments,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)
        toLoaded,
    required TResult Function(
            List<DepartmentModel> departments, int instituteId, String name)
        createDepartment,
    required TResult Function(List<DepartmentModel> departments,
            int departmentId, int instituteId, String name)
        updateDepartment,
    required TResult Function(
            List<DepartmentModel> departments, int departmentId)
        deleteDepartment,
  }) {
    return deleteDepartment(departments, departmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInstitutes,
    TResult? Function(int instituteId)? loadDepartments,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
        toLoaded,
    TResult? Function(
            List<DepartmentModel> departments, int instituteId, String name)?
        createDepartment,
    TResult? Function(List<DepartmentModel> departments, int departmentId,
            int instituteId, String name)?
        updateDepartment,
    TResult? Function(List<DepartmentModel> departments, int departmentId)?
        deleteDepartment,
  }) {
    return deleteDepartment?.call(departments, departmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInstitutes,
    TResult Function(int instituteId)? loadDepartments,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
        toLoaded,
    TResult Function(
            List<DepartmentModel> departments, int instituteId, String name)?
        createDepartment,
    TResult Function(List<DepartmentModel> departments, int departmentId,
            int instituteId, String name)?
        updateDepartment,
    TResult Function(List<DepartmentModel> departments, int departmentId)?
        deleteDepartment,
    required TResult orElse(),
  }) {
    if (deleteDepartment != null) {
      return deleteDepartment(departments, departmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DepartmentEventLoadInstitutes value)
        loadInstitutes,
    required TResult Function(DepartmentEventLoadDepartments value)
        loadDepartments,
    required TResult Function(DepartmentEventToLoaded value) toLoaded,
    required TResult Function(DepartmentEventCreateDepartment value)
        createDepartment,
    required TResult Function(DepartmentEventUpdateDepartment value)
        updateDepartment,
    required TResult Function(DepartmentEventDeleteDepartment value)
        deleteDepartment,
  }) {
    return deleteDepartment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DepartmentEventLoadInstitutes value)? loadInstitutes,
    TResult? Function(DepartmentEventLoadDepartments value)? loadDepartments,
    TResult? Function(DepartmentEventToLoaded value)? toLoaded,
    TResult? Function(DepartmentEventCreateDepartment value)? createDepartment,
    TResult? Function(DepartmentEventUpdateDepartment value)? updateDepartment,
    TResult? Function(DepartmentEventDeleteDepartment value)? deleteDepartment,
  }) {
    return deleteDepartment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DepartmentEventLoadInstitutes value)? loadInstitutes,
    TResult Function(DepartmentEventLoadDepartments value)? loadDepartments,
    TResult Function(DepartmentEventToLoaded value)? toLoaded,
    TResult Function(DepartmentEventCreateDepartment value)? createDepartment,
    TResult Function(DepartmentEventUpdateDepartment value)? updateDepartment,
    TResult Function(DepartmentEventDeleteDepartment value)? deleteDepartment,
    required TResult orElse(),
  }) {
    if (deleteDepartment != null) {
      return deleteDepartment(this);
    }
    return orElse();
  }
}

abstract class DepartmentEventDeleteDepartment implements DepartmentEvent {
  const factory DepartmentEventDeleteDepartment(
      {required final List<DepartmentModel> departments,
      required final int departmentId}) = _$DepartmentEventDeleteDepartmentImpl;

  List<DepartmentModel> get departments;
  int get departmentId;

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DepartmentEventDeleteDepartmentImplCopyWith<
          _$DepartmentEventDeleteDepartmentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DepartmentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingInstitutes,
    required TResult Function(List<InstituteModel> institutes) loadedInstitutes,
    required TResult Function() loadingDepartments,
    required TResult Function(List<DepartmentModel> departments)
        loadedDepartments,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingInstitutes,
    TResult? Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult? Function()? loadingDepartments,
    TResult? Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingInstitutes,
    TResult Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult Function()? loadingDepartments,
    TResult Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DepartmentStateLoadingInstitutes value)
        loadingInstitutes,
    required TResult Function(DepartmentStateLoadedInstitutes value)
        loadedInstitutes,
    required TResult Function(DepartmentStateLoadingDepartments value)
        loadingDepartments,
    required TResult Function(DepartmentStateLoadedDepartments value)
        loadedDepartments,
    required TResult Function(DepartmentStateError value) error,
    required TResult Function(DepartmentStateEndedSession value) endedSession,
    required TResult Function(DepartmentStateToLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DepartmentStateLoadingInstitutes value)?
        loadingInstitutes,
    TResult? Function(DepartmentStateLoadedInstitutes value)? loadedInstitutes,
    TResult? Function(DepartmentStateLoadingDepartments value)?
        loadingDepartments,
    TResult? Function(DepartmentStateLoadedDepartments value)?
        loadedDepartments,
    TResult? Function(DepartmentStateError value)? error,
    TResult? Function(DepartmentStateEndedSession value)? endedSession,
    TResult? Function(DepartmentStateToLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DepartmentStateLoadingInstitutes value)? loadingInstitutes,
    TResult Function(DepartmentStateLoadedInstitutes value)? loadedInstitutes,
    TResult Function(DepartmentStateLoadingDepartments value)?
        loadingDepartments,
    TResult Function(DepartmentStateLoadedDepartments value)? loadedDepartments,
    TResult Function(DepartmentStateError value)? error,
    TResult Function(DepartmentStateEndedSession value)? endedSession,
    TResult Function(DepartmentStateToLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentStateCopyWith<$Res> {
  factory $DepartmentStateCopyWith(
          DepartmentState value, $Res Function(DepartmentState) then) =
      _$DepartmentStateCopyWithImpl<$Res, DepartmentState>;
}

/// @nodoc
class _$DepartmentStateCopyWithImpl<$Res, $Val extends DepartmentState>
    implements $DepartmentStateCopyWith<$Res> {
  _$DepartmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DepartmentStateLoadingInstitutesImplCopyWith<$Res> {
  factory _$$DepartmentStateLoadingInstitutesImplCopyWith(
          _$DepartmentStateLoadingInstitutesImpl value,
          $Res Function(_$DepartmentStateLoadingInstitutesImpl) then) =
      __$$DepartmentStateLoadingInstitutesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DepartmentStateLoadingInstitutesImplCopyWithImpl<$Res>
    extends _$DepartmentStateCopyWithImpl<$Res,
        _$DepartmentStateLoadingInstitutesImpl>
    implements _$$DepartmentStateLoadingInstitutesImplCopyWith<$Res> {
  __$$DepartmentStateLoadingInstitutesImplCopyWithImpl(
      _$DepartmentStateLoadingInstitutesImpl _value,
      $Res Function(_$DepartmentStateLoadingInstitutesImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DepartmentStateLoadingInstitutesImpl
    implements DepartmentStateLoadingInstitutes {
  const _$DepartmentStateLoadingInstitutesImpl();

  @override
  String toString() {
    return 'DepartmentState.loadingInstitutes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentStateLoadingInstitutesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingInstitutes,
    required TResult Function(List<InstituteModel> institutes) loadedInstitutes,
    required TResult Function() loadingDepartments,
    required TResult Function(List<DepartmentModel> departments)
        loadedDepartments,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)
        loaded,
  }) {
    return loadingInstitutes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingInstitutes,
    TResult? Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult? Function()? loadingDepartments,
    TResult? Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
        loaded,
  }) {
    return loadingInstitutes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingInstitutes,
    TResult Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult Function()? loadingDepartments,
    TResult Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
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
    required TResult Function(DepartmentStateLoadingInstitutes value)
        loadingInstitutes,
    required TResult Function(DepartmentStateLoadedInstitutes value)
        loadedInstitutes,
    required TResult Function(DepartmentStateLoadingDepartments value)
        loadingDepartments,
    required TResult Function(DepartmentStateLoadedDepartments value)
        loadedDepartments,
    required TResult Function(DepartmentStateError value) error,
    required TResult Function(DepartmentStateEndedSession value) endedSession,
    required TResult Function(DepartmentStateToLoaded value) loaded,
  }) {
    return loadingInstitutes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DepartmentStateLoadingInstitutes value)?
        loadingInstitutes,
    TResult? Function(DepartmentStateLoadedInstitutes value)? loadedInstitutes,
    TResult? Function(DepartmentStateLoadingDepartments value)?
        loadingDepartments,
    TResult? Function(DepartmentStateLoadedDepartments value)?
        loadedDepartments,
    TResult? Function(DepartmentStateError value)? error,
    TResult? Function(DepartmentStateEndedSession value)? endedSession,
    TResult? Function(DepartmentStateToLoaded value)? loaded,
  }) {
    return loadingInstitutes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DepartmentStateLoadingInstitutes value)? loadingInstitutes,
    TResult Function(DepartmentStateLoadedInstitutes value)? loadedInstitutes,
    TResult Function(DepartmentStateLoadingDepartments value)?
        loadingDepartments,
    TResult Function(DepartmentStateLoadedDepartments value)? loadedDepartments,
    TResult Function(DepartmentStateError value)? error,
    TResult Function(DepartmentStateEndedSession value)? endedSession,
    TResult Function(DepartmentStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadingInstitutes != null) {
      return loadingInstitutes(this);
    }
    return orElse();
  }
}

abstract class DepartmentStateLoadingInstitutes implements DepartmentState {
  const factory DepartmentStateLoadingInstitutes() =
      _$DepartmentStateLoadingInstitutesImpl;
}

/// @nodoc
abstract class _$$DepartmentStateLoadedInstitutesImplCopyWith<$Res> {
  factory _$$DepartmentStateLoadedInstitutesImplCopyWith(
          _$DepartmentStateLoadedInstitutesImpl value,
          $Res Function(_$DepartmentStateLoadedInstitutesImpl) then) =
      __$$DepartmentStateLoadedInstitutesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<InstituteModel> institutes});
}

/// @nodoc
class __$$DepartmentStateLoadedInstitutesImplCopyWithImpl<$Res>
    extends _$DepartmentStateCopyWithImpl<$Res,
        _$DepartmentStateLoadedInstitutesImpl>
    implements _$$DepartmentStateLoadedInstitutesImplCopyWith<$Res> {
  __$$DepartmentStateLoadedInstitutesImplCopyWithImpl(
      _$DepartmentStateLoadedInstitutesImpl _value,
      $Res Function(_$DepartmentStateLoadedInstitutesImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? institutes = null,
  }) {
    return _then(_$DepartmentStateLoadedInstitutesImpl(
      institutes: null == institutes
          ? _value._institutes
          : institutes // ignore: cast_nullable_to_non_nullable
              as List<InstituteModel>,
    ));
  }
}

/// @nodoc

class _$DepartmentStateLoadedInstitutesImpl
    implements DepartmentStateLoadedInstitutes {
  const _$DepartmentStateLoadedInstitutesImpl(
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
    return 'DepartmentState.loadedInstitutes(institutes: $institutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentStateLoadedInstitutesImpl &&
            const DeepCollectionEquality()
                .equals(other._institutes, _institutes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_institutes));

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentStateLoadedInstitutesImplCopyWith<
          _$DepartmentStateLoadedInstitutesImpl>
      get copyWith => __$$DepartmentStateLoadedInstitutesImplCopyWithImpl<
          _$DepartmentStateLoadedInstitutesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingInstitutes,
    required TResult Function(List<InstituteModel> institutes) loadedInstitutes,
    required TResult Function() loadingDepartments,
    required TResult Function(List<DepartmentModel> departments)
        loadedDepartments,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)
        loaded,
  }) {
    return loadedInstitutes(institutes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingInstitutes,
    TResult? Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult? Function()? loadingDepartments,
    TResult? Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
        loaded,
  }) {
    return loadedInstitutes?.call(institutes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingInstitutes,
    TResult Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult Function()? loadingDepartments,
    TResult Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
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
    required TResult Function(DepartmentStateLoadingInstitutes value)
        loadingInstitutes,
    required TResult Function(DepartmentStateLoadedInstitutes value)
        loadedInstitutes,
    required TResult Function(DepartmentStateLoadingDepartments value)
        loadingDepartments,
    required TResult Function(DepartmentStateLoadedDepartments value)
        loadedDepartments,
    required TResult Function(DepartmentStateError value) error,
    required TResult Function(DepartmentStateEndedSession value) endedSession,
    required TResult Function(DepartmentStateToLoaded value) loaded,
  }) {
    return loadedInstitutes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DepartmentStateLoadingInstitutes value)?
        loadingInstitutes,
    TResult? Function(DepartmentStateLoadedInstitutes value)? loadedInstitutes,
    TResult? Function(DepartmentStateLoadingDepartments value)?
        loadingDepartments,
    TResult? Function(DepartmentStateLoadedDepartments value)?
        loadedDepartments,
    TResult? Function(DepartmentStateError value)? error,
    TResult? Function(DepartmentStateEndedSession value)? endedSession,
    TResult? Function(DepartmentStateToLoaded value)? loaded,
  }) {
    return loadedInstitutes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DepartmentStateLoadingInstitutes value)? loadingInstitutes,
    TResult Function(DepartmentStateLoadedInstitutes value)? loadedInstitutes,
    TResult Function(DepartmentStateLoadingDepartments value)?
        loadingDepartments,
    TResult Function(DepartmentStateLoadedDepartments value)? loadedDepartments,
    TResult Function(DepartmentStateError value)? error,
    TResult Function(DepartmentStateEndedSession value)? endedSession,
    TResult Function(DepartmentStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadedInstitutes != null) {
      return loadedInstitutes(this);
    }
    return orElse();
  }
}

abstract class DepartmentStateLoadedInstitutes implements DepartmentState {
  const factory DepartmentStateLoadedInstitutes(
          {required final List<InstituteModel> institutes}) =
      _$DepartmentStateLoadedInstitutesImpl;

  List<InstituteModel> get institutes;

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DepartmentStateLoadedInstitutesImplCopyWith<
          _$DepartmentStateLoadedInstitutesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DepartmentStateLoadingDepartmentsImplCopyWith<$Res> {
  factory _$$DepartmentStateLoadingDepartmentsImplCopyWith(
          _$DepartmentStateLoadingDepartmentsImpl value,
          $Res Function(_$DepartmentStateLoadingDepartmentsImpl) then) =
      __$$DepartmentStateLoadingDepartmentsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DepartmentStateLoadingDepartmentsImplCopyWithImpl<$Res>
    extends _$DepartmentStateCopyWithImpl<$Res,
        _$DepartmentStateLoadingDepartmentsImpl>
    implements _$$DepartmentStateLoadingDepartmentsImplCopyWith<$Res> {
  __$$DepartmentStateLoadingDepartmentsImplCopyWithImpl(
      _$DepartmentStateLoadingDepartmentsImpl _value,
      $Res Function(_$DepartmentStateLoadingDepartmentsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DepartmentStateLoadingDepartmentsImpl
    implements DepartmentStateLoadingDepartments {
  const _$DepartmentStateLoadingDepartmentsImpl();

  @override
  String toString() {
    return 'DepartmentState.loadingDepartments()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentStateLoadingDepartmentsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingInstitutes,
    required TResult Function(List<InstituteModel> institutes) loadedInstitutes,
    required TResult Function() loadingDepartments,
    required TResult Function(List<DepartmentModel> departments)
        loadedDepartments,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)
        loaded,
  }) {
    return loadingDepartments();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingInstitutes,
    TResult? Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult? Function()? loadingDepartments,
    TResult? Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
        loaded,
  }) {
    return loadingDepartments?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingInstitutes,
    TResult Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult Function()? loadingDepartments,
    TResult Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
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
    required TResult Function(DepartmentStateLoadingInstitutes value)
        loadingInstitutes,
    required TResult Function(DepartmentStateLoadedInstitutes value)
        loadedInstitutes,
    required TResult Function(DepartmentStateLoadingDepartments value)
        loadingDepartments,
    required TResult Function(DepartmentStateLoadedDepartments value)
        loadedDepartments,
    required TResult Function(DepartmentStateError value) error,
    required TResult Function(DepartmentStateEndedSession value) endedSession,
    required TResult Function(DepartmentStateToLoaded value) loaded,
  }) {
    return loadingDepartments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DepartmentStateLoadingInstitutes value)?
        loadingInstitutes,
    TResult? Function(DepartmentStateLoadedInstitutes value)? loadedInstitutes,
    TResult? Function(DepartmentStateLoadingDepartments value)?
        loadingDepartments,
    TResult? Function(DepartmentStateLoadedDepartments value)?
        loadedDepartments,
    TResult? Function(DepartmentStateError value)? error,
    TResult? Function(DepartmentStateEndedSession value)? endedSession,
    TResult? Function(DepartmentStateToLoaded value)? loaded,
  }) {
    return loadingDepartments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DepartmentStateLoadingInstitutes value)? loadingInstitutes,
    TResult Function(DepartmentStateLoadedInstitutes value)? loadedInstitutes,
    TResult Function(DepartmentStateLoadingDepartments value)?
        loadingDepartments,
    TResult Function(DepartmentStateLoadedDepartments value)? loadedDepartments,
    TResult Function(DepartmentStateError value)? error,
    TResult Function(DepartmentStateEndedSession value)? endedSession,
    TResult Function(DepartmentStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadingDepartments != null) {
      return loadingDepartments(this);
    }
    return orElse();
  }
}

abstract class DepartmentStateLoadingDepartments implements DepartmentState {
  const factory DepartmentStateLoadingDepartments() =
      _$DepartmentStateLoadingDepartmentsImpl;
}

/// @nodoc
abstract class _$$DepartmentStateLoadedDepartmentsImplCopyWith<$Res> {
  factory _$$DepartmentStateLoadedDepartmentsImplCopyWith(
          _$DepartmentStateLoadedDepartmentsImpl value,
          $Res Function(_$DepartmentStateLoadedDepartmentsImpl) then) =
      __$$DepartmentStateLoadedDepartmentsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DepartmentModel> departments});
}

/// @nodoc
class __$$DepartmentStateLoadedDepartmentsImplCopyWithImpl<$Res>
    extends _$DepartmentStateCopyWithImpl<$Res,
        _$DepartmentStateLoadedDepartmentsImpl>
    implements _$$DepartmentStateLoadedDepartmentsImplCopyWith<$Res> {
  __$$DepartmentStateLoadedDepartmentsImplCopyWithImpl(
      _$DepartmentStateLoadedDepartmentsImpl _value,
      $Res Function(_$DepartmentStateLoadedDepartmentsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departments = null,
  }) {
    return _then(_$DepartmentStateLoadedDepartmentsImpl(
      departments: null == departments
          ? _value._departments
          : departments // ignore: cast_nullable_to_non_nullable
              as List<DepartmentModel>,
    ));
  }
}

/// @nodoc

class _$DepartmentStateLoadedDepartmentsImpl
    implements DepartmentStateLoadedDepartments {
  const _$DepartmentStateLoadedDepartmentsImpl(
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
    return 'DepartmentState.loadedDepartments(departments: $departments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentStateLoadedDepartmentsImpl &&
            const DeepCollectionEquality()
                .equals(other._departments, _departments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_departments));

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentStateLoadedDepartmentsImplCopyWith<
          _$DepartmentStateLoadedDepartmentsImpl>
      get copyWith => __$$DepartmentStateLoadedDepartmentsImplCopyWithImpl<
          _$DepartmentStateLoadedDepartmentsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingInstitutes,
    required TResult Function(List<InstituteModel> institutes) loadedInstitutes,
    required TResult Function() loadingDepartments,
    required TResult Function(List<DepartmentModel> departments)
        loadedDepartments,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)
        loaded,
  }) {
    return loadedDepartments(departments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingInstitutes,
    TResult? Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult? Function()? loadingDepartments,
    TResult? Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
        loaded,
  }) {
    return loadedDepartments?.call(departments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingInstitutes,
    TResult Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult Function()? loadingDepartments,
    TResult Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
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
    required TResult Function(DepartmentStateLoadingInstitutes value)
        loadingInstitutes,
    required TResult Function(DepartmentStateLoadedInstitutes value)
        loadedInstitutes,
    required TResult Function(DepartmentStateLoadingDepartments value)
        loadingDepartments,
    required TResult Function(DepartmentStateLoadedDepartments value)
        loadedDepartments,
    required TResult Function(DepartmentStateError value) error,
    required TResult Function(DepartmentStateEndedSession value) endedSession,
    required TResult Function(DepartmentStateToLoaded value) loaded,
  }) {
    return loadedDepartments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DepartmentStateLoadingInstitutes value)?
        loadingInstitutes,
    TResult? Function(DepartmentStateLoadedInstitutes value)? loadedInstitutes,
    TResult? Function(DepartmentStateLoadingDepartments value)?
        loadingDepartments,
    TResult? Function(DepartmentStateLoadedDepartments value)?
        loadedDepartments,
    TResult? Function(DepartmentStateError value)? error,
    TResult? Function(DepartmentStateEndedSession value)? endedSession,
    TResult? Function(DepartmentStateToLoaded value)? loaded,
  }) {
    return loadedDepartments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DepartmentStateLoadingInstitutes value)? loadingInstitutes,
    TResult Function(DepartmentStateLoadedInstitutes value)? loadedInstitutes,
    TResult Function(DepartmentStateLoadingDepartments value)?
        loadingDepartments,
    TResult Function(DepartmentStateLoadedDepartments value)? loadedDepartments,
    TResult Function(DepartmentStateError value)? error,
    TResult Function(DepartmentStateEndedSession value)? endedSession,
    TResult Function(DepartmentStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadedDepartments != null) {
      return loadedDepartments(this);
    }
    return orElse();
  }
}

abstract class DepartmentStateLoadedDepartments implements DepartmentState {
  const factory DepartmentStateLoadedDepartments(
          {required final List<DepartmentModel> departments}) =
      _$DepartmentStateLoadedDepartmentsImpl;

  List<DepartmentModel> get departments;

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DepartmentStateLoadedDepartmentsImplCopyWith<
          _$DepartmentStateLoadedDepartmentsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DepartmentStateErrorImplCopyWith<$Res> {
  factory _$$DepartmentStateErrorImplCopyWith(_$DepartmentStateErrorImpl value,
          $Res Function(_$DepartmentStateErrorImpl) then) =
      __$$DepartmentStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$DepartmentStateErrorImplCopyWithImpl<$Res>
    extends _$DepartmentStateCopyWithImpl<$Res, _$DepartmentStateErrorImpl>
    implements _$$DepartmentStateErrorImplCopyWith<$Res> {
  __$$DepartmentStateErrorImplCopyWithImpl(_$DepartmentStateErrorImpl _value,
      $Res Function(_$DepartmentStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$DepartmentStateErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DepartmentStateErrorImpl implements DepartmentStateError {
  const _$DepartmentStateErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'DepartmentState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentStateErrorImplCopyWith<_$DepartmentStateErrorImpl>
      get copyWith =>
          __$$DepartmentStateErrorImplCopyWithImpl<_$DepartmentStateErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingInstitutes,
    required TResult Function(List<InstituteModel> institutes) loadedInstitutes,
    required TResult Function() loadingDepartments,
    required TResult Function(List<DepartmentModel> departments)
        loadedDepartments,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)
        loaded,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingInstitutes,
    TResult? Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult? Function()? loadingDepartments,
    TResult? Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
        loaded,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingInstitutes,
    TResult Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult Function()? loadingDepartments,
    TResult Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
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
    required TResult Function(DepartmentStateLoadingInstitutes value)
        loadingInstitutes,
    required TResult Function(DepartmentStateLoadedInstitutes value)
        loadedInstitutes,
    required TResult Function(DepartmentStateLoadingDepartments value)
        loadingDepartments,
    required TResult Function(DepartmentStateLoadedDepartments value)
        loadedDepartments,
    required TResult Function(DepartmentStateError value) error,
    required TResult Function(DepartmentStateEndedSession value) endedSession,
    required TResult Function(DepartmentStateToLoaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DepartmentStateLoadingInstitutes value)?
        loadingInstitutes,
    TResult? Function(DepartmentStateLoadedInstitutes value)? loadedInstitutes,
    TResult? Function(DepartmentStateLoadingDepartments value)?
        loadingDepartments,
    TResult? Function(DepartmentStateLoadedDepartments value)?
        loadedDepartments,
    TResult? Function(DepartmentStateError value)? error,
    TResult? Function(DepartmentStateEndedSession value)? endedSession,
    TResult? Function(DepartmentStateToLoaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DepartmentStateLoadingInstitutes value)? loadingInstitutes,
    TResult Function(DepartmentStateLoadedInstitutes value)? loadedInstitutes,
    TResult Function(DepartmentStateLoadingDepartments value)?
        loadingDepartments,
    TResult Function(DepartmentStateLoadedDepartments value)? loadedDepartments,
    TResult Function(DepartmentStateError value)? error,
    TResult Function(DepartmentStateEndedSession value)? endedSession,
    TResult Function(DepartmentStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DepartmentStateError implements DepartmentState {
  const factory DepartmentStateError({required final String error}) =
      _$DepartmentStateErrorImpl;

  String get error;

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DepartmentStateErrorImplCopyWith<_$DepartmentStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DepartmentStateEndedSessionImplCopyWith<$Res> {
  factory _$$DepartmentStateEndedSessionImplCopyWith(
          _$DepartmentStateEndedSessionImpl value,
          $Res Function(_$DepartmentStateEndedSessionImpl) then) =
      __$$DepartmentStateEndedSessionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DepartmentStateEndedSessionImplCopyWithImpl<$Res>
    extends _$DepartmentStateCopyWithImpl<$Res,
        _$DepartmentStateEndedSessionImpl>
    implements _$$DepartmentStateEndedSessionImplCopyWith<$Res> {
  __$$DepartmentStateEndedSessionImplCopyWithImpl(
      _$DepartmentStateEndedSessionImpl _value,
      $Res Function(_$DepartmentStateEndedSessionImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DepartmentStateEndedSessionImpl implements DepartmentStateEndedSession {
  const _$DepartmentStateEndedSessionImpl();

  @override
  String toString() {
    return 'DepartmentState.endedSession()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentStateEndedSessionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingInstitutes,
    required TResult Function(List<InstituteModel> institutes) loadedInstitutes,
    required TResult Function() loadingDepartments,
    required TResult Function(List<DepartmentModel> departments)
        loadedDepartments,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)
        loaded,
  }) {
    return endedSession();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingInstitutes,
    TResult? Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult? Function()? loadingDepartments,
    TResult? Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
        loaded,
  }) {
    return endedSession?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingInstitutes,
    TResult Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult Function()? loadingDepartments,
    TResult Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
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
    required TResult Function(DepartmentStateLoadingInstitutes value)
        loadingInstitutes,
    required TResult Function(DepartmentStateLoadedInstitutes value)
        loadedInstitutes,
    required TResult Function(DepartmentStateLoadingDepartments value)
        loadingDepartments,
    required TResult Function(DepartmentStateLoadedDepartments value)
        loadedDepartments,
    required TResult Function(DepartmentStateError value) error,
    required TResult Function(DepartmentStateEndedSession value) endedSession,
    required TResult Function(DepartmentStateToLoaded value) loaded,
  }) {
    return endedSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DepartmentStateLoadingInstitutes value)?
        loadingInstitutes,
    TResult? Function(DepartmentStateLoadedInstitutes value)? loadedInstitutes,
    TResult? Function(DepartmentStateLoadingDepartments value)?
        loadingDepartments,
    TResult? Function(DepartmentStateLoadedDepartments value)?
        loadedDepartments,
    TResult? Function(DepartmentStateError value)? error,
    TResult? Function(DepartmentStateEndedSession value)? endedSession,
    TResult? Function(DepartmentStateToLoaded value)? loaded,
  }) {
    return endedSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DepartmentStateLoadingInstitutes value)? loadingInstitutes,
    TResult Function(DepartmentStateLoadedInstitutes value)? loadedInstitutes,
    TResult Function(DepartmentStateLoadingDepartments value)?
        loadingDepartments,
    TResult Function(DepartmentStateLoadedDepartments value)? loadedDepartments,
    TResult Function(DepartmentStateError value)? error,
    TResult Function(DepartmentStateEndedSession value)? endedSession,
    TResult Function(DepartmentStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (endedSession != null) {
      return endedSession(this);
    }
    return orElse();
  }
}

abstract class DepartmentStateEndedSession implements DepartmentState {
  const factory DepartmentStateEndedSession() =
      _$DepartmentStateEndedSessionImpl;
}

/// @nodoc
abstract class _$$DepartmentStateToLoadedImplCopyWith<$Res> {
  factory _$$DepartmentStateToLoadedImplCopyWith(
          _$DepartmentStateToLoadedImpl value,
          $Res Function(_$DepartmentStateToLoadedImpl) then) =
      __$$DepartmentStateToLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<InstituteModel> institutes,
      InstituteModel? selectedInstitute,
      List<DepartmentModel> departments});
}

/// @nodoc
class __$$DepartmentStateToLoadedImplCopyWithImpl<$Res>
    extends _$DepartmentStateCopyWithImpl<$Res, _$DepartmentStateToLoadedImpl>
    implements _$$DepartmentStateToLoadedImplCopyWith<$Res> {
  __$$DepartmentStateToLoadedImplCopyWithImpl(
      _$DepartmentStateToLoadedImpl _value,
      $Res Function(_$DepartmentStateToLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? institutes = null,
    Object? selectedInstitute = freezed,
    Object? departments = null,
  }) {
    return _then(_$DepartmentStateToLoadedImpl(
      institutes: null == institutes
          ? _value._institutes
          : institutes // ignore: cast_nullable_to_non_nullable
              as List<InstituteModel>,
      selectedInstitute: freezed == selectedInstitute
          ? _value.selectedInstitute
          : selectedInstitute // ignore: cast_nullable_to_non_nullable
              as InstituteModel?,
      departments: null == departments
          ? _value._departments
          : departments // ignore: cast_nullable_to_non_nullable
              as List<DepartmentModel>,
    ));
  }
}

/// @nodoc

class _$DepartmentStateToLoadedImpl implements DepartmentStateToLoaded {
  const _$DepartmentStateToLoadedImpl(
      {required final List<InstituteModel> institutes,
      required this.selectedInstitute,
      required final List<DepartmentModel> departments})
      : _institutes = institutes,
        _departments = departments;

  final List<InstituteModel> _institutes;
  @override
  List<InstituteModel> get institutes {
    if (_institutes is EqualUnmodifiableListView) return _institutes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_institutes);
  }

  @override
  final InstituteModel? selectedInstitute;
  final List<DepartmentModel> _departments;
  @override
  List<DepartmentModel> get departments {
    if (_departments is EqualUnmodifiableListView) return _departments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_departments);
  }

  @override
  String toString() {
    return 'DepartmentState.loaded(institutes: $institutes, selectedInstitute: $selectedInstitute, departments: $departments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentStateToLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._institutes, _institutes) &&
            (identical(other.selectedInstitute, selectedInstitute) ||
                other.selectedInstitute == selectedInstitute) &&
            const DeepCollectionEquality()
                .equals(other._departments, _departments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_institutes),
      selectedInstitute,
      const DeepCollectionEquality().hash(_departments));

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentStateToLoadedImplCopyWith<_$DepartmentStateToLoadedImpl>
      get copyWith => __$$DepartmentStateToLoadedImplCopyWithImpl<
          _$DepartmentStateToLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingInstitutes,
    required TResult Function(List<InstituteModel> institutes) loadedInstitutes,
    required TResult Function() loadingDepartments,
    required TResult Function(List<DepartmentModel> departments)
        loadedDepartments,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)
        loaded,
  }) {
    return loaded(institutes, selectedInstitute, departments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingInstitutes,
    TResult? Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult? Function()? loadingDepartments,
    TResult? Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
        loaded,
  }) {
    return loaded?.call(institutes, selectedInstitute, departments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingInstitutes,
    TResult Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult Function()? loadingDepartments,
    TResult Function(List<DepartmentModel> departments)? loadedDepartments,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(
            List<InstituteModel> institutes,
            InstituteModel? selectedInstitute,
            List<DepartmentModel> departments)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(institutes, selectedInstitute, departments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DepartmentStateLoadingInstitutes value)
        loadingInstitutes,
    required TResult Function(DepartmentStateLoadedInstitutes value)
        loadedInstitutes,
    required TResult Function(DepartmentStateLoadingDepartments value)
        loadingDepartments,
    required TResult Function(DepartmentStateLoadedDepartments value)
        loadedDepartments,
    required TResult Function(DepartmentStateError value) error,
    required TResult Function(DepartmentStateEndedSession value) endedSession,
    required TResult Function(DepartmentStateToLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DepartmentStateLoadingInstitutes value)?
        loadingInstitutes,
    TResult? Function(DepartmentStateLoadedInstitutes value)? loadedInstitutes,
    TResult? Function(DepartmentStateLoadingDepartments value)?
        loadingDepartments,
    TResult? Function(DepartmentStateLoadedDepartments value)?
        loadedDepartments,
    TResult? Function(DepartmentStateError value)? error,
    TResult? Function(DepartmentStateEndedSession value)? endedSession,
    TResult? Function(DepartmentStateToLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DepartmentStateLoadingInstitutes value)? loadingInstitutes,
    TResult Function(DepartmentStateLoadedInstitutes value)? loadedInstitutes,
    TResult Function(DepartmentStateLoadingDepartments value)?
        loadingDepartments,
    TResult Function(DepartmentStateLoadedDepartments value)? loadedDepartments,
    TResult Function(DepartmentStateError value)? error,
    TResult Function(DepartmentStateEndedSession value)? endedSession,
    TResult Function(DepartmentStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class DepartmentStateToLoaded implements DepartmentState {
  const factory DepartmentStateToLoaded(
          {required final List<InstituteModel> institutes,
          required final InstituteModel? selectedInstitute,
          required final List<DepartmentModel> departments}) =
      _$DepartmentStateToLoadedImpl;

  List<InstituteModel> get institutes;
  InstituteModel? get selectedInstitute;
  List<DepartmentModel> get departments;

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DepartmentStateToLoadedImplCopyWith<_$DepartmentStateToLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
