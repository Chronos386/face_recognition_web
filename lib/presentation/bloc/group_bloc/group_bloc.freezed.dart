// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GroupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInstitutes,
    required TResult Function(int instituteId) loadGroups,
    required TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)
        toLoaded,
    required TResult Function(
            List<GroupModel> groups, int instituteId, String name)
        createGroup,
    required TResult Function(
            List<GroupModel> groups, int groupId, int instituteId, String name)
        updateGroup,
    required TResult Function(List<GroupModel> groups, int groupId) deleteGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInstitutes,
    TResult? Function(int instituteId)? loadGroups,
    TResult? Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
        toLoaded,
    TResult? Function(List<GroupModel> groups, int instituteId, String name)?
        createGroup,
    TResult? Function(
            List<GroupModel> groups, int groupId, int instituteId, String name)?
        updateGroup,
    TResult? Function(List<GroupModel> groups, int groupId)? deleteGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInstitutes,
    TResult Function(int instituteId)? loadGroups,
    TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
        toLoaded,
    TResult Function(List<GroupModel> groups, int instituteId, String name)?
        createGroup,
    TResult Function(
            List<GroupModel> groups, int groupId, int instituteId, String name)?
        updateGroup,
    TResult Function(List<GroupModel> groups, int groupId)? deleteGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroupEventLoadInstitutes value) loadInstitutes,
    required TResult Function(GroupEventLoadGroups value) loadGroups,
    required TResult Function(GroupEventToLoaded value) toLoaded,
    required TResult Function(GroupEventCreateGroup value) createGroup,
    required TResult Function(GroupEventUpdateGroup value) updateGroup,
    required TResult Function(GroupEventDeleteGroup value) deleteGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupEventLoadInstitutes value)? loadInstitutes,
    TResult? Function(GroupEventLoadGroups value)? loadGroups,
    TResult? Function(GroupEventToLoaded value)? toLoaded,
    TResult? Function(GroupEventCreateGroup value)? createGroup,
    TResult? Function(GroupEventUpdateGroup value)? updateGroup,
    TResult? Function(GroupEventDeleteGroup value)? deleteGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupEventLoadInstitutes value)? loadInstitutes,
    TResult Function(GroupEventLoadGroups value)? loadGroups,
    TResult Function(GroupEventToLoaded value)? toLoaded,
    TResult Function(GroupEventCreateGroup value)? createGroup,
    TResult Function(GroupEventUpdateGroup value)? updateGroup,
    TResult Function(GroupEventDeleteGroup value)? deleteGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupEventCopyWith<$Res> {
  factory $GroupEventCopyWith(
          GroupEvent value, $Res Function(GroupEvent) then) =
      _$GroupEventCopyWithImpl<$Res, GroupEvent>;
}

/// @nodoc
class _$GroupEventCopyWithImpl<$Res, $Val extends GroupEvent>
    implements $GroupEventCopyWith<$Res> {
  _$GroupEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GroupEventLoadInstitutesImplCopyWith<$Res> {
  factory _$$GroupEventLoadInstitutesImplCopyWith(
          _$GroupEventLoadInstitutesImpl value,
          $Res Function(_$GroupEventLoadInstitutesImpl) then) =
      __$$GroupEventLoadInstitutesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GroupEventLoadInstitutesImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$GroupEventLoadInstitutesImpl>
    implements _$$GroupEventLoadInstitutesImplCopyWith<$Res> {
  __$$GroupEventLoadInstitutesImplCopyWithImpl(
      _$GroupEventLoadInstitutesImpl _value,
      $Res Function(_$GroupEventLoadInstitutesImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GroupEventLoadInstitutesImpl implements GroupEventLoadInstitutes {
  const _$GroupEventLoadInstitutesImpl();

  @override
  String toString() {
    return 'GroupEvent.loadInstitutes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupEventLoadInstitutesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInstitutes,
    required TResult Function(int instituteId) loadGroups,
    required TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)
        toLoaded,
    required TResult Function(
            List<GroupModel> groups, int instituteId, String name)
        createGroup,
    required TResult Function(
            List<GroupModel> groups, int groupId, int instituteId, String name)
        updateGroup,
    required TResult Function(List<GroupModel> groups, int groupId) deleteGroup,
  }) {
    return loadInstitutes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInstitutes,
    TResult? Function(int instituteId)? loadGroups,
    TResult? Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
        toLoaded,
    TResult? Function(List<GroupModel> groups, int instituteId, String name)?
        createGroup,
    TResult? Function(
            List<GroupModel> groups, int groupId, int instituteId, String name)?
        updateGroup,
    TResult? Function(List<GroupModel> groups, int groupId)? deleteGroup,
  }) {
    return loadInstitutes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInstitutes,
    TResult Function(int instituteId)? loadGroups,
    TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
        toLoaded,
    TResult Function(List<GroupModel> groups, int instituteId, String name)?
        createGroup,
    TResult Function(
            List<GroupModel> groups, int groupId, int instituteId, String name)?
        updateGroup,
    TResult Function(List<GroupModel> groups, int groupId)? deleteGroup,
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
    required TResult Function(GroupEventLoadInstitutes value) loadInstitutes,
    required TResult Function(GroupEventLoadGroups value) loadGroups,
    required TResult Function(GroupEventToLoaded value) toLoaded,
    required TResult Function(GroupEventCreateGroup value) createGroup,
    required TResult Function(GroupEventUpdateGroup value) updateGroup,
    required TResult Function(GroupEventDeleteGroup value) deleteGroup,
  }) {
    return loadInstitutes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupEventLoadInstitutes value)? loadInstitutes,
    TResult? Function(GroupEventLoadGroups value)? loadGroups,
    TResult? Function(GroupEventToLoaded value)? toLoaded,
    TResult? Function(GroupEventCreateGroup value)? createGroup,
    TResult? Function(GroupEventUpdateGroup value)? updateGroup,
    TResult? Function(GroupEventDeleteGroup value)? deleteGroup,
  }) {
    return loadInstitutes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupEventLoadInstitutes value)? loadInstitutes,
    TResult Function(GroupEventLoadGroups value)? loadGroups,
    TResult Function(GroupEventToLoaded value)? toLoaded,
    TResult Function(GroupEventCreateGroup value)? createGroup,
    TResult Function(GroupEventUpdateGroup value)? updateGroup,
    TResult Function(GroupEventDeleteGroup value)? deleteGroup,
    required TResult orElse(),
  }) {
    if (loadInstitutes != null) {
      return loadInstitutes(this);
    }
    return orElse();
  }
}

abstract class GroupEventLoadInstitutes implements GroupEvent {
  const factory GroupEventLoadInstitutes() = _$GroupEventLoadInstitutesImpl;
}

/// @nodoc
abstract class _$$GroupEventLoadGroupsImplCopyWith<$Res> {
  factory _$$GroupEventLoadGroupsImplCopyWith(_$GroupEventLoadGroupsImpl value,
          $Res Function(_$GroupEventLoadGroupsImpl) then) =
      __$$GroupEventLoadGroupsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int instituteId});
}

/// @nodoc
class __$$GroupEventLoadGroupsImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$GroupEventLoadGroupsImpl>
    implements _$$GroupEventLoadGroupsImplCopyWith<$Res> {
  __$$GroupEventLoadGroupsImplCopyWithImpl(_$GroupEventLoadGroupsImpl _value,
      $Res Function(_$GroupEventLoadGroupsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instituteId = null,
  }) {
    return _then(_$GroupEventLoadGroupsImpl(
      instituteId: null == instituteId
          ? _value.instituteId
          : instituteId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GroupEventLoadGroupsImpl implements GroupEventLoadGroups {
  const _$GroupEventLoadGroupsImpl({required this.instituteId});

  @override
  final int instituteId;

  @override
  String toString() {
    return 'GroupEvent.loadGroups(instituteId: $instituteId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupEventLoadGroupsImpl &&
            (identical(other.instituteId, instituteId) ||
                other.instituteId == instituteId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, instituteId);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupEventLoadGroupsImplCopyWith<_$GroupEventLoadGroupsImpl>
      get copyWith =>
          __$$GroupEventLoadGroupsImplCopyWithImpl<_$GroupEventLoadGroupsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInstitutes,
    required TResult Function(int instituteId) loadGroups,
    required TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)
        toLoaded,
    required TResult Function(
            List<GroupModel> groups, int instituteId, String name)
        createGroup,
    required TResult Function(
            List<GroupModel> groups, int groupId, int instituteId, String name)
        updateGroup,
    required TResult Function(List<GroupModel> groups, int groupId) deleteGroup,
  }) {
    return loadGroups(instituteId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInstitutes,
    TResult? Function(int instituteId)? loadGroups,
    TResult? Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
        toLoaded,
    TResult? Function(List<GroupModel> groups, int instituteId, String name)?
        createGroup,
    TResult? Function(
            List<GroupModel> groups, int groupId, int instituteId, String name)?
        updateGroup,
    TResult? Function(List<GroupModel> groups, int groupId)? deleteGroup,
  }) {
    return loadGroups?.call(instituteId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInstitutes,
    TResult Function(int instituteId)? loadGroups,
    TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
        toLoaded,
    TResult Function(List<GroupModel> groups, int instituteId, String name)?
        createGroup,
    TResult Function(
            List<GroupModel> groups, int groupId, int instituteId, String name)?
        updateGroup,
    TResult Function(List<GroupModel> groups, int groupId)? deleteGroup,
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
    required TResult Function(GroupEventLoadInstitutes value) loadInstitutes,
    required TResult Function(GroupEventLoadGroups value) loadGroups,
    required TResult Function(GroupEventToLoaded value) toLoaded,
    required TResult Function(GroupEventCreateGroup value) createGroup,
    required TResult Function(GroupEventUpdateGroup value) updateGroup,
    required TResult Function(GroupEventDeleteGroup value) deleteGroup,
  }) {
    return loadGroups(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupEventLoadInstitutes value)? loadInstitutes,
    TResult? Function(GroupEventLoadGroups value)? loadGroups,
    TResult? Function(GroupEventToLoaded value)? toLoaded,
    TResult? Function(GroupEventCreateGroup value)? createGroup,
    TResult? Function(GroupEventUpdateGroup value)? updateGroup,
    TResult? Function(GroupEventDeleteGroup value)? deleteGroup,
  }) {
    return loadGroups?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupEventLoadInstitutes value)? loadInstitutes,
    TResult Function(GroupEventLoadGroups value)? loadGroups,
    TResult Function(GroupEventToLoaded value)? toLoaded,
    TResult Function(GroupEventCreateGroup value)? createGroup,
    TResult Function(GroupEventUpdateGroup value)? updateGroup,
    TResult Function(GroupEventDeleteGroup value)? deleteGroup,
    required TResult orElse(),
  }) {
    if (loadGroups != null) {
      return loadGroups(this);
    }
    return orElse();
  }
}

abstract class GroupEventLoadGroups implements GroupEvent {
  const factory GroupEventLoadGroups({required final int instituteId}) =
      _$GroupEventLoadGroupsImpl;

  int get instituteId;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupEventLoadGroupsImplCopyWith<_$GroupEventLoadGroupsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroupEventToLoadedImplCopyWith<$Res> {
  factory _$$GroupEventToLoadedImplCopyWith(_$GroupEventToLoadedImpl value,
          $Res Function(_$GroupEventToLoadedImpl) then) =
      __$$GroupEventToLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<InstituteModel> institutes,
      InstituteModel? selectedInstitute,
      List<GroupModel> groups});
}

/// @nodoc
class __$$GroupEventToLoadedImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$GroupEventToLoadedImpl>
    implements _$$GroupEventToLoadedImplCopyWith<$Res> {
  __$$GroupEventToLoadedImplCopyWithImpl(_$GroupEventToLoadedImpl _value,
      $Res Function(_$GroupEventToLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? institutes = null,
    Object? selectedInstitute = freezed,
    Object? groups = null,
  }) {
    return _then(_$GroupEventToLoadedImpl(
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
    ));
  }
}

/// @nodoc

class _$GroupEventToLoadedImpl implements GroupEventToLoaded {
  const _$GroupEventToLoadedImpl(
      {required final List<InstituteModel> institutes,
      required this.selectedInstitute,
      required final List<GroupModel> groups})
      : _institutes = institutes,
        _groups = groups;

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
  String toString() {
    return 'GroupEvent.toLoaded(institutes: $institutes, selectedInstitute: $selectedInstitute, groups: $groups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupEventToLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._institutes, _institutes) &&
            (identical(other.selectedInstitute, selectedInstitute) ||
                other.selectedInstitute == selectedInstitute) &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_institutes),
      selectedInstitute,
      const DeepCollectionEquality().hash(_groups));

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupEventToLoadedImplCopyWith<_$GroupEventToLoadedImpl> get copyWith =>
      __$$GroupEventToLoadedImplCopyWithImpl<_$GroupEventToLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInstitutes,
    required TResult Function(int instituteId) loadGroups,
    required TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)
        toLoaded,
    required TResult Function(
            List<GroupModel> groups, int instituteId, String name)
        createGroup,
    required TResult Function(
            List<GroupModel> groups, int groupId, int instituteId, String name)
        updateGroup,
    required TResult Function(List<GroupModel> groups, int groupId) deleteGroup,
  }) {
    return toLoaded(institutes, selectedInstitute, groups);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInstitutes,
    TResult? Function(int instituteId)? loadGroups,
    TResult? Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
        toLoaded,
    TResult? Function(List<GroupModel> groups, int instituteId, String name)?
        createGroup,
    TResult? Function(
            List<GroupModel> groups, int groupId, int instituteId, String name)?
        updateGroup,
    TResult? Function(List<GroupModel> groups, int groupId)? deleteGroup,
  }) {
    return toLoaded?.call(institutes, selectedInstitute, groups);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInstitutes,
    TResult Function(int instituteId)? loadGroups,
    TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
        toLoaded,
    TResult Function(List<GroupModel> groups, int instituteId, String name)?
        createGroup,
    TResult Function(
            List<GroupModel> groups, int groupId, int instituteId, String name)?
        updateGroup,
    TResult Function(List<GroupModel> groups, int groupId)? deleteGroup,
    required TResult orElse(),
  }) {
    if (toLoaded != null) {
      return toLoaded(institutes, selectedInstitute, groups);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroupEventLoadInstitutes value) loadInstitutes,
    required TResult Function(GroupEventLoadGroups value) loadGroups,
    required TResult Function(GroupEventToLoaded value) toLoaded,
    required TResult Function(GroupEventCreateGroup value) createGroup,
    required TResult Function(GroupEventUpdateGroup value) updateGroup,
    required TResult Function(GroupEventDeleteGroup value) deleteGroup,
  }) {
    return toLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupEventLoadInstitutes value)? loadInstitutes,
    TResult? Function(GroupEventLoadGroups value)? loadGroups,
    TResult? Function(GroupEventToLoaded value)? toLoaded,
    TResult? Function(GroupEventCreateGroup value)? createGroup,
    TResult? Function(GroupEventUpdateGroup value)? updateGroup,
    TResult? Function(GroupEventDeleteGroup value)? deleteGroup,
  }) {
    return toLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupEventLoadInstitutes value)? loadInstitutes,
    TResult Function(GroupEventLoadGroups value)? loadGroups,
    TResult Function(GroupEventToLoaded value)? toLoaded,
    TResult Function(GroupEventCreateGroup value)? createGroup,
    TResult Function(GroupEventUpdateGroup value)? updateGroup,
    TResult Function(GroupEventDeleteGroup value)? deleteGroup,
    required TResult orElse(),
  }) {
    if (toLoaded != null) {
      return toLoaded(this);
    }
    return orElse();
  }
}

abstract class GroupEventToLoaded implements GroupEvent {
  const factory GroupEventToLoaded(
      {required final List<InstituteModel> institutes,
      required final InstituteModel? selectedInstitute,
      required final List<GroupModel> groups}) = _$GroupEventToLoadedImpl;

  List<InstituteModel> get institutes;
  InstituteModel? get selectedInstitute;
  List<GroupModel> get groups;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupEventToLoadedImplCopyWith<_$GroupEventToLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroupEventCreateGroupImplCopyWith<$Res> {
  factory _$$GroupEventCreateGroupImplCopyWith(
          _$GroupEventCreateGroupImpl value,
          $Res Function(_$GroupEventCreateGroupImpl) then) =
      __$$GroupEventCreateGroupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GroupModel> groups, int instituteId, String name});
}

/// @nodoc
class __$$GroupEventCreateGroupImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$GroupEventCreateGroupImpl>
    implements _$$GroupEventCreateGroupImplCopyWith<$Res> {
  __$$GroupEventCreateGroupImplCopyWithImpl(_$GroupEventCreateGroupImpl _value,
      $Res Function(_$GroupEventCreateGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = null,
    Object? instituteId = null,
    Object? name = null,
  }) {
    return _then(_$GroupEventCreateGroupImpl(
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupModel>,
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

class _$GroupEventCreateGroupImpl implements GroupEventCreateGroup {
  const _$GroupEventCreateGroupImpl(
      {required final List<GroupModel> groups,
      required this.instituteId,
      required this.name})
      : _groups = groups;

  final List<GroupModel> _groups;
  @override
  List<GroupModel> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  final int instituteId;
  @override
  final String name;

  @override
  String toString() {
    return 'GroupEvent.createGroup(groups: $groups, instituteId: $instituteId, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupEventCreateGroupImpl &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            (identical(other.instituteId, instituteId) ||
                other.instituteId == instituteId) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_groups), instituteId, name);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupEventCreateGroupImplCopyWith<_$GroupEventCreateGroupImpl>
      get copyWith => __$$GroupEventCreateGroupImplCopyWithImpl<
          _$GroupEventCreateGroupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInstitutes,
    required TResult Function(int instituteId) loadGroups,
    required TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)
        toLoaded,
    required TResult Function(
            List<GroupModel> groups, int instituteId, String name)
        createGroup,
    required TResult Function(
            List<GroupModel> groups, int groupId, int instituteId, String name)
        updateGroup,
    required TResult Function(List<GroupModel> groups, int groupId) deleteGroup,
  }) {
    return createGroup(groups, instituteId, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInstitutes,
    TResult? Function(int instituteId)? loadGroups,
    TResult? Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
        toLoaded,
    TResult? Function(List<GroupModel> groups, int instituteId, String name)?
        createGroup,
    TResult? Function(
            List<GroupModel> groups, int groupId, int instituteId, String name)?
        updateGroup,
    TResult? Function(List<GroupModel> groups, int groupId)? deleteGroup,
  }) {
    return createGroup?.call(groups, instituteId, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInstitutes,
    TResult Function(int instituteId)? loadGroups,
    TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
        toLoaded,
    TResult Function(List<GroupModel> groups, int instituteId, String name)?
        createGroup,
    TResult Function(
            List<GroupModel> groups, int groupId, int instituteId, String name)?
        updateGroup,
    TResult Function(List<GroupModel> groups, int groupId)? deleteGroup,
    required TResult orElse(),
  }) {
    if (createGroup != null) {
      return createGroup(groups, instituteId, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroupEventLoadInstitutes value) loadInstitutes,
    required TResult Function(GroupEventLoadGroups value) loadGroups,
    required TResult Function(GroupEventToLoaded value) toLoaded,
    required TResult Function(GroupEventCreateGroup value) createGroup,
    required TResult Function(GroupEventUpdateGroup value) updateGroup,
    required TResult Function(GroupEventDeleteGroup value) deleteGroup,
  }) {
    return createGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupEventLoadInstitutes value)? loadInstitutes,
    TResult? Function(GroupEventLoadGroups value)? loadGroups,
    TResult? Function(GroupEventToLoaded value)? toLoaded,
    TResult? Function(GroupEventCreateGroup value)? createGroup,
    TResult? Function(GroupEventUpdateGroup value)? updateGroup,
    TResult? Function(GroupEventDeleteGroup value)? deleteGroup,
  }) {
    return createGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupEventLoadInstitutes value)? loadInstitutes,
    TResult Function(GroupEventLoadGroups value)? loadGroups,
    TResult Function(GroupEventToLoaded value)? toLoaded,
    TResult Function(GroupEventCreateGroup value)? createGroup,
    TResult Function(GroupEventUpdateGroup value)? updateGroup,
    TResult Function(GroupEventDeleteGroup value)? deleteGroup,
    required TResult orElse(),
  }) {
    if (createGroup != null) {
      return createGroup(this);
    }
    return orElse();
  }
}

abstract class GroupEventCreateGroup implements GroupEvent {
  const factory GroupEventCreateGroup(
      {required final List<GroupModel> groups,
      required final int instituteId,
      required final String name}) = _$GroupEventCreateGroupImpl;

  List<GroupModel> get groups;
  int get instituteId;
  String get name;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupEventCreateGroupImplCopyWith<_$GroupEventCreateGroupImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroupEventUpdateGroupImplCopyWith<$Res> {
  factory _$$GroupEventUpdateGroupImplCopyWith(
          _$GroupEventUpdateGroupImpl value,
          $Res Function(_$GroupEventUpdateGroupImpl) then) =
      __$$GroupEventUpdateGroupImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<GroupModel> groups, int groupId, int instituteId, String name});
}

/// @nodoc
class __$$GroupEventUpdateGroupImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$GroupEventUpdateGroupImpl>
    implements _$$GroupEventUpdateGroupImplCopyWith<$Res> {
  __$$GroupEventUpdateGroupImplCopyWithImpl(_$GroupEventUpdateGroupImpl _value,
      $Res Function(_$GroupEventUpdateGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = null,
    Object? groupId = null,
    Object? instituteId = null,
    Object? name = null,
  }) {
    return _then(_$GroupEventUpdateGroupImpl(
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupModel>,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
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

class _$GroupEventUpdateGroupImpl implements GroupEventUpdateGroup {
  const _$GroupEventUpdateGroupImpl(
      {required final List<GroupModel> groups,
      required this.groupId,
      required this.instituteId,
      required this.name})
      : _groups = groups;

  final List<GroupModel> _groups;
  @override
  List<GroupModel> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  final int groupId;
  @override
  final int instituteId;
  @override
  final String name;

  @override
  String toString() {
    return 'GroupEvent.updateGroup(groups: $groups, groupId: $groupId, instituteId: $instituteId, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupEventUpdateGroupImpl &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.instituteId, instituteId) ||
                other.instituteId == instituteId) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_groups), groupId, instituteId, name);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupEventUpdateGroupImplCopyWith<_$GroupEventUpdateGroupImpl>
      get copyWith => __$$GroupEventUpdateGroupImplCopyWithImpl<
          _$GroupEventUpdateGroupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInstitutes,
    required TResult Function(int instituteId) loadGroups,
    required TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)
        toLoaded,
    required TResult Function(
            List<GroupModel> groups, int instituteId, String name)
        createGroup,
    required TResult Function(
            List<GroupModel> groups, int groupId, int instituteId, String name)
        updateGroup,
    required TResult Function(List<GroupModel> groups, int groupId) deleteGroup,
  }) {
    return updateGroup(groups, groupId, instituteId, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInstitutes,
    TResult? Function(int instituteId)? loadGroups,
    TResult? Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
        toLoaded,
    TResult? Function(List<GroupModel> groups, int instituteId, String name)?
        createGroup,
    TResult? Function(
            List<GroupModel> groups, int groupId, int instituteId, String name)?
        updateGroup,
    TResult? Function(List<GroupModel> groups, int groupId)? deleteGroup,
  }) {
    return updateGroup?.call(groups, groupId, instituteId, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInstitutes,
    TResult Function(int instituteId)? loadGroups,
    TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
        toLoaded,
    TResult Function(List<GroupModel> groups, int instituteId, String name)?
        createGroup,
    TResult Function(
            List<GroupModel> groups, int groupId, int instituteId, String name)?
        updateGroup,
    TResult Function(List<GroupModel> groups, int groupId)? deleteGroup,
    required TResult orElse(),
  }) {
    if (updateGroup != null) {
      return updateGroup(groups, groupId, instituteId, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroupEventLoadInstitutes value) loadInstitutes,
    required TResult Function(GroupEventLoadGroups value) loadGroups,
    required TResult Function(GroupEventToLoaded value) toLoaded,
    required TResult Function(GroupEventCreateGroup value) createGroup,
    required TResult Function(GroupEventUpdateGroup value) updateGroup,
    required TResult Function(GroupEventDeleteGroup value) deleteGroup,
  }) {
    return updateGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupEventLoadInstitutes value)? loadInstitutes,
    TResult? Function(GroupEventLoadGroups value)? loadGroups,
    TResult? Function(GroupEventToLoaded value)? toLoaded,
    TResult? Function(GroupEventCreateGroup value)? createGroup,
    TResult? Function(GroupEventUpdateGroup value)? updateGroup,
    TResult? Function(GroupEventDeleteGroup value)? deleteGroup,
  }) {
    return updateGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupEventLoadInstitutes value)? loadInstitutes,
    TResult Function(GroupEventLoadGroups value)? loadGroups,
    TResult Function(GroupEventToLoaded value)? toLoaded,
    TResult Function(GroupEventCreateGroup value)? createGroup,
    TResult Function(GroupEventUpdateGroup value)? updateGroup,
    TResult Function(GroupEventDeleteGroup value)? deleteGroup,
    required TResult orElse(),
  }) {
    if (updateGroup != null) {
      return updateGroup(this);
    }
    return orElse();
  }
}

abstract class GroupEventUpdateGroup implements GroupEvent {
  const factory GroupEventUpdateGroup(
      {required final List<GroupModel> groups,
      required final int groupId,
      required final int instituteId,
      required final String name}) = _$GroupEventUpdateGroupImpl;

  List<GroupModel> get groups;
  int get groupId;
  int get instituteId;
  String get name;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupEventUpdateGroupImplCopyWith<_$GroupEventUpdateGroupImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroupEventDeleteGroupImplCopyWith<$Res> {
  factory _$$GroupEventDeleteGroupImplCopyWith(
          _$GroupEventDeleteGroupImpl value,
          $Res Function(_$GroupEventDeleteGroupImpl) then) =
      __$$GroupEventDeleteGroupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GroupModel> groups, int groupId});
}

/// @nodoc
class __$$GroupEventDeleteGroupImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$GroupEventDeleteGroupImpl>
    implements _$$GroupEventDeleteGroupImplCopyWith<$Res> {
  __$$GroupEventDeleteGroupImplCopyWithImpl(_$GroupEventDeleteGroupImpl _value,
      $Res Function(_$GroupEventDeleteGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = null,
    Object? groupId = null,
  }) {
    return _then(_$GroupEventDeleteGroupImpl(
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupModel>,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GroupEventDeleteGroupImpl implements GroupEventDeleteGroup {
  const _$GroupEventDeleteGroupImpl(
      {required final List<GroupModel> groups, required this.groupId})
      : _groups = groups;

  final List<GroupModel> _groups;
  @override
  List<GroupModel> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  final int groupId;

  @override
  String toString() {
    return 'GroupEvent.deleteGroup(groups: $groups, groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupEventDeleteGroupImpl &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_groups), groupId);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupEventDeleteGroupImplCopyWith<_$GroupEventDeleteGroupImpl>
      get copyWith => __$$GroupEventDeleteGroupImplCopyWithImpl<
          _$GroupEventDeleteGroupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInstitutes,
    required TResult Function(int instituteId) loadGroups,
    required TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)
        toLoaded,
    required TResult Function(
            List<GroupModel> groups, int instituteId, String name)
        createGroup,
    required TResult Function(
            List<GroupModel> groups, int groupId, int instituteId, String name)
        updateGroup,
    required TResult Function(List<GroupModel> groups, int groupId) deleteGroup,
  }) {
    return deleteGroup(groups, groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInstitutes,
    TResult? Function(int instituteId)? loadGroups,
    TResult? Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
        toLoaded,
    TResult? Function(List<GroupModel> groups, int instituteId, String name)?
        createGroup,
    TResult? Function(
            List<GroupModel> groups, int groupId, int instituteId, String name)?
        updateGroup,
    TResult? Function(List<GroupModel> groups, int groupId)? deleteGroup,
  }) {
    return deleteGroup?.call(groups, groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInstitutes,
    TResult Function(int instituteId)? loadGroups,
    TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
        toLoaded,
    TResult Function(List<GroupModel> groups, int instituteId, String name)?
        createGroup,
    TResult Function(
            List<GroupModel> groups, int groupId, int instituteId, String name)?
        updateGroup,
    TResult Function(List<GroupModel> groups, int groupId)? deleteGroup,
    required TResult orElse(),
  }) {
    if (deleteGroup != null) {
      return deleteGroup(groups, groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroupEventLoadInstitutes value) loadInstitutes,
    required TResult Function(GroupEventLoadGroups value) loadGroups,
    required TResult Function(GroupEventToLoaded value) toLoaded,
    required TResult Function(GroupEventCreateGroup value) createGroup,
    required TResult Function(GroupEventUpdateGroup value) updateGroup,
    required TResult Function(GroupEventDeleteGroup value) deleteGroup,
  }) {
    return deleteGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupEventLoadInstitutes value)? loadInstitutes,
    TResult? Function(GroupEventLoadGroups value)? loadGroups,
    TResult? Function(GroupEventToLoaded value)? toLoaded,
    TResult? Function(GroupEventCreateGroup value)? createGroup,
    TResult? Function(GroupEventUpdateGroup value)? updateGroup,
    TResult? Function(GroupEventDeleteGroup value)? deleteGroup,
  }) {
    return deleteGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupEventLoadInstitutes value)? loadInstitutes,
    TResult Function(GroupEventLoadGroups value)? loadGroups,
    TResult Function(GroupEventToLoaded value)? toLoaded,
    TResult Function(GroupEventCreateGroup value)? createGroup,
    TResult Function(GroupEventUpdateGroup value)? updateGroup,
    TResult Function(GroupEventDeleteGroup value)? deleteGroup,
    required TResult orElse(),
  }) {
    if (deleteGroup != null) {
      return deleteGroup(this);
    }
    return orElse();
  }
}

abstract class GroupEventDeleteGroup implements GroupEvent {
  const factory GroupEventDeleteGroup(
      {required final List<GroupModel> groups,
      required final int groupId}) = _$GroupEventDeleteGroupImpl;

  List<GroupModel> get groups;
  int get groupId;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupEventDeleteGroupImplCopyWith<_$GroupEventDeleteGroupImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GroupState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingInstitutes,
    required TResult Function(List<InstituteModel> institutes) loadedInstitutes,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingInstitutes,
    TResult? Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult? Function()? loadingGroups,
    TResult? Function(List<GroupModel> groups)? loadedGroups,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingInstitutes,
    TResult Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult Function()? loadingGroups,
    TResult Function(List<GroupModel> groups)? loadedGroups,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroupStateLoadingInstitutes value)
        loadingInstitutes,
    required TResult Function(GroupStateLoadedInstitutes value)
        loadedInstitutes,
    required TResult Function(GroupStateLoadingGroups value) loadingGroups,
    required TResult Function(GroupStateLoadedGroups value) loadedGroups,
    required TResult Function(GroupStateError value) error,
    required TResult Function(GroupStateEndedSession value) endedSession,
    required TResult Function(GroupStateToLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupStateLoadingInstitutes value)? loadingInstitutes,
    TResult? Function(GroupStateLoadedInstitutes value)? loadedInstitutes,
    TResult? Function(GroupStateLoadingGroups value)? loadingGroups,
    TResult? Function(GroupStateLoadedGroups value)? loadedGroups,
    TResult? Function(GroupStateError value)? error,
    TResult? Function(GroupStateEndedSession value)? endedSession,
    TResult? Function(GroupStateToLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupStateLoadingInstitutes value)? loadingInstitutes,
    TResult Function(GroupStateLoadedInstitutes value)? loadedInstitutes,
    TResult Function(GroupStateLoadingGroups value)? loadingGroups,
    TResult Function(GroupStateLoadedGroups value)? loadedGroups,
    TResult Function(GroupStateError value)? error,
    TResult Function(GroupStateEndedSession value)? endedSession,
    TResult Function(GroupStateToLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupStateCopyWith<$Res> {
  factory $GroupStateCopyWith(
          GroupState value, $Res Function(GroupState) then) =
      _$GroupStateCopyWithImpl<$Res, GroupState>;
}

/// @nodoc
class _$GroupStateCopyWithImpl<$Res, $Val extends GroupState>
    implements $GroupStateCopyWith<$Res> {
  _$GroupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GroupStateLoadingInstitutesImplCopyWith<$Res> {
  factory _$$GroupStateLoadingInstitutesImplCopyWith(
          _$GroupStateLoadingInstitutesImpl value,
          $Res Function(_$GroupStateLoadingInstitutesImpl) then) =
      __$$GroupStateLoadingInstitutesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GroupStateLoadingInstitutesImplCopyWithImpl<$Res>
    extends _$GroupStateCopyWithImpl<$Res, _$GroupStateLoadingInstitutesImpl>
    implements _$$GroupStateLoadingInstitutesImplCopyWith<$Res> {
  __$$GroupStateLoadingInstitutesImplCopyWithImpl(
      _$GroupStateLoadingInstitutesImpl _value,
      $Res Function(_$GroupStateLoadingInstitutesImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GroupStateLoadingInstitutesImpl implements GroupStateLoadingInstitutes {
  const _$GroupStateLoadingInstitutesImpl();

  @override
  String toString() {
    return 'GroupState.loadingInstitutes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupStateLoadingInstitutesImpl);
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
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)
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
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
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
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
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
    required TResult Function(GroupStateLoadingInstitutes value)
        loadingInstitutes,
    required TResult Function(GroupStateLoadedInstitutes value)
        loadedInstitutes,
    required TResult Function(GroupStateLoadingGroups value) loadingGroups,
    required TResult Function(GroupStateLoadedGroups value) loadedGroups,
    required TResult Function(GroupStateError value) error,
    required TResult Function(GroupStateEndedSession value) endedSession,
    required TResult Function(GroupStateToLoaded value) loaded,
  }) {
    return loadingInstitutes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupStateLoadingInstitutes value)? loadingInstitutes,
    TResult? Function(GroupStateLoadedInstitutes value)? loadedInstitutes,
    TResult? Function(GroupStateLoadingGroups value)? loadingGroups,
    TResult? Function(GroupStateLoadedGroups value)? loadedGroups,
    TResult? Function(GroupStateError value)? error,
    TResult? Function(GroupStateEndedSession value)? endedSession,
    TResult? Function(GroupStateToLoaded value)? loaded,
  }) {
    return loadingInstitutes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupStateLoadingInstitutes value)? loadingInstitutes,
    TResult Function(GroupStateLoadedInstitutes value)? loadedInstitutes,
    TResult Function(GroupStateLoadingGroups value)? loadingGroups,
    TResult Function(GroupStateLoadedGroups value)? loadedGroups,
    TResult Function(GroupStateError value)? error,
    TResult Function(GroupStateEndedSession value)? endedSession,
    TResult Function(GroupStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadingInstitutes != null) {
      return loadingInstitutes(this);
    }
    return orElse();
  }
}

abstract class GroupStateLoadingInstitutes implements GroupState {
  const factory GroupStateLoadingInstitutes() =
      _$GroupStateLoadingInstitutesImpl;
}

/// @nodoc
abstract class _$$GroupStateLoadedInstitutesImplCopyWith<$Res> {
  factory _$$GroupStateLoadedInstitutesImplCopyWith(
          _$GroupStateLoadedInstitutesImpl value,
          $Res Function(_$GroupStateLoadedInstitutesImpl) then) =
      __$$GroupStateLoadedInstitutesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<InstituteModel> institutes});
}

/// @nodoc
class __$$GroupStateLoadedInstitutesImplCopyWithImpl<$Res>
    extends _$GroupStateCopyWithImpl<$Res, _$GroupStateLoadedInstitutesImpl>
    implements _$$GroupStateLoadedInstitutesImplCopyWith<$Res> {
  __$$GroupStateLoadedInstitutesImplCopyWithImpl(
      _$GroupStateLoadedInstitutesImpl _value,
      $Res Function(_$GroupStateLoadedInstitutesImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? institutes = null,
  }) {
    return _then(_$GroupStateLoadedInstitutesImpl(
      institutes: null == institutes
          ? _value._institutes
          : institutes // ignore: cast_nullable_to_non_nullable
              as List<InstituteModel>,
    ));
  }
}

/// @nodoc

class _$GroupStateLoadedInstitutesImpl implements GroupStateLoadedInstitutes {
  const _$GroupStateLoadedInstitutesImpl(
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
    return 'GroupState.loadedInstitutes(institutes: $institutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupStateLoadedInstitutesImpl &&
            const DeepCollectionEquality()
                .equals(other._institutes, _institutes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_institutes));

  /// Create a copy of GroupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupStateLoadedInstitutesImplCopyWith<_$GroupStateLoadedInstitutesImpl>
      get copyWith => __$$GroupStateLoadedInstitutesImplCopyWithImpl<
          _$GroupStateLoadedInstitutesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingInstitutes,
    required TResult Function(List<InstituteModel> institutes) loadedInstitutes,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)
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
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
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
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
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
    required TResult Function(GroupStateLoadingInstitutes value)
        loadingInstitutes,
    required TResult Function(GroupStateLoadedInstitutes value)
        loadedInstitutes,
    required TResult Function(GroupStateLoadingGroups value) loadingGroups,
    required TResult Function(GroupStateLoadedGroups value) loadedGroups,
    required TResult Function(GroupStateError value) error,
    required TResult Function(GroupStateEndedSession value) endedSession,
    required TResult Function(GroupStateToLoaded value) loaded,
  }) {
    return loadedInstitutes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupStateLoadingInstitutes value)? loadingInstitutes,
    TResult? Function(GroupStateLoadedInstitutes value)? loadedInstitutes,
    TResult? Function(GroupStateLoadingGroups value)? loadingGroups,
    TResult? Function(GroupStateLoadedGroups value)? loadedGroups,
    TResult? Function(GroupStateError value)? error,
    TResult? Function(GroupStateEndedSession value)? endedSession,
    TResult? Function(GroupStateToLoaded value)? loaded,
  }) {
    return loadedInstitutes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupStateLoadingInstitutes value)? loadingInstitutes,
    TResult Function(GroupStateLoadedInstitutes value)? loadedInstitutes,
    TResult Function(GroupStateLoadingGroups value)? loadingGroups,
    TResult Function(GroupStateLoadedGroups value)? loadedGroups,
    TResult Function(GroupStateError value)? error,
    TResult Function(GroupStateEndedSession value)? endedSession,
    TResult Function(GroupStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadedInstitutes != null) {
      return loadedInstitutes(this);
    }
    return orElse();
  }
}

abstract class GroupStateLoadedInstitutes implements GroupState {
  const factory GroupStateLoadedInstitutes(
          {required final List<InstituteModel> institutes}) =
      _$GroupStateLoadedInstitutesImpl;

  List<InstituteModel> get institutes;

  /// Create a copy of GroupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupStateLoadedInstitutesImplCopyWith<_$GroupStateLoadedInstitutesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroupStateLoadingGroupsImplCopyWith<$Res> {
  factory _$$GroupStateLoadingGroupsImplCopyWith(
          _$GroupStateLoadingGroupsImpl value,
          $Res Function(_$GroupStateLoadingGroupsImpl) then) =
      __$$GroupStateLoadingGroupsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GroupStateLoadingGroupsImplCopyWithImpl<$Res>
    extends _$GroupStateCopyWithImpl<$Res, _$GroupStateLoadingGroupsImpl>
    implements _$$GroupStateLoadingGroupsImplCopyWith<$Res> {
  __$$GroupStateLoadingGroupsImplCopyWithImpl(
      _$GroupStateLoadingGroupsImpl _value,
      $Res Function(_$GroupStateLoadingGroupsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GroupStateLoadingGroupsImpl implements GroupStateLoadingGroups {
  const _$GroupStateLoadingGroupsImpl();

  @override
  String toString() {
    return 'GroupState.loadingGroups()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupStateLoadingGroupsImpl);
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
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)
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
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
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
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
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
    required TResult Function(GroupStateLoadingInstitutes value)
        loadingInstitutes,
    required TResult Function(GroupStateLoadedInstitutes value)
        loadedInstitutes,
    required TResult Function(GroupStateLoadingGroups value) loadingGroups,
    required TResult Function(GroupStateLoadedGroups value) loadedGroups,
    required TResult Function(GroupStateError value) error,
    required TResult Function(GroupStateEndedSession value) endedSession,
    required TResult Function(GroupStateToLoaded value) loaded,
  }) {
    return loadingGroups(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupStateLoadingInstitutes value)? loadingInstitutes,
    TResult? Function(GroupStateLoadedInstitutes value)? loadedInstitutes,
    TResult? Function(GroupStateLoadingGroups value)? loadingGroups,
    TResult? Function(GroupStateLoadedGroups value)? loadedGroups,
    TResult? Function(GroupStateError value)? error,
    TResult? Function(GroupStateEndedSession value)? endedSession,
    TResult? Function(GroupStateToLoaded value)? loaded,
  }) {
    return loadingGroups?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupStateLoadingInstitutes value)? loadingInstitutes,
    TResult Function(GroupStateLoadedInstitutes value)? loadedInstitutes,
    TResult Function(GroupStateLoadingGroups value)? loadingGroups,
    TResult Function(GroupStateLoadedGroups value)? loadedGroups,
    TResult Function(GroupStateError value)? error,
    TResult Function(GroupStateEndedSession value)? endedSession,
    TResult Function(GroupStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadingGroups != null) {
      return loadingGroups(this);
    }
    return orElse();
  }
}

abstract class GroupStateLoadingGroups implements GroupState {
  const factory GroupStateLoadingGroups() = _$GroupStateLoadingGroupsImpl;
}

/// @nodoc
abstract class _$$GroupStateLoadedGroupsImplCopyWith<$Res> {
  factory _$$GroupStateLoadedGroupsImplCopyWith(
          _$GroupStateLoadedGroupsImpl value,
          $Res Function(_$GroupStateLoadedGroupsImpl) then) =
      __$$GroupStateLoadedGroupsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GroupModel> groups});
}

/// @nodoc
class __$$GroupStateLoadedGroupsImplCopyWithImpl<$Res>
    extends _$GroupStateCopyWithImpl<$Res, _$GroupStateLoadedGroupsImpl>
    implements _$$GroupStateLoadedGroupsImplCopyWith<$Res> {
  __$$GroupStateLoadedGroupsImplCopyWithImpl(
      _$GroupStateLoadedGroupsImpl _value,
      $Res Function(_$GroupStateLoadedGroupsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = null,
  }) {
    return _then(_$GroupStateLoadedGroupsImpl(
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupModel>,
    ));
  }
}

/// @nodoc

class _$GroupStateLoadedGroupsImpl implements GroupStateLoadedGroups {
  const _$GroupStateLoadedGroupsImpl({required final List<GroupModel> groups})
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
    return 'GroupState.loadedGroups(groups: $groups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupStateLoadedGroupsImpl &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groups));

  /// Create a copy of GroupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupStateLoadedGroupsImplCopyWith<_$GroupStateLoadedGroupsImpl>
      get copyWith => __$$GroupStateLoadedGroupsImplCopyWithImpl<
          _$GroupStateLoadedGroupsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingInstitutes,
    required TResult Function(List<InstituteModel> institutes) loadedInstitutes,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)
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
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
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
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
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
    required TResult Function(GroupStateLoadingInstitutes value)
        loadingInstitutes,
    required TResult Function(GroupStateLoadedInstitutes value)
        loadedInstitutes,
    required TResult Function(GroupStateLoadingGroups value) loadingGroups,
    required TResult Function(GroupStateLoadedGroups value) loadedGroups,
    required TResult Function(GroupStateError value) error,
    required TResult Function(GroupStateEndedSession value) endedSession,
    required TResult Function(GroupStateToLoaded value) loaded,
  }) {
    return loadedGroups(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupStateLoadingInstitutes value)? loadingInstitutes,
    TResult? Function(GroupStateLoadedInstitutes value)? loadedInstitutes,
    TResult? Function(GroupStateLoadingGroups value)? loadingGroups,
    TResult? Function(GroupStateLoadedGroups value)? loadedGroups,
    TResult? Function(GroupStateError value)? error,
    TResult? Function(GroupStateEndedSession value)? endedSession,
    TResult? Function(GroupStateToLoaded value)? loaded,
  }) {
    return loadedGroups?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupStateLoadingInstitutes value)? loadingInstitutes,
    TResult Function(GroupStateLoadedInstitutes value)? loadedInstitutes,
    TResult Function(GroupStateLoadingGroups value)? loadingGroups,
    TResult Function(GroupStateLoadedGroups value)? loadedGroups,
    TResult Function(GroupStateError value)? error,
    TResult Function(GroupStateEndedSession value)? endedSession,
    TResult Function(GroupStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadedGroups != null) {
      return loadedGroups(this);
    }
    return orElse();
  }
}

abstract class GroupStateLoadedGroups implements GroupState {
  const factory GroupStateLoadedGroups(
      {required final List<GroupModel> groups}) = _$GroupStateLoadedGroupsImpl;

  List<GroupModel> get groups;

  /// Create a copy of GroupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupStateLoadedGroupsImplCopyWith<_$GroupStateLoadedGroupsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroupStateErrorImplCopyWith<$Res> {
  factory _$$GroupStateErrorImplCopyWith(_$GroupStateErrorImpl value,
          $Res Function(_$GroupStateErrorImpl) then) =
      __$$GroupStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GroupStateErrorImplCopyWithImpl<$Res>
    extends _$GroupStateCopyWithImpl<$Res, _$GroupStateErrorImpl>
    implements _$$GroupStateErrorImplCopyWith<$Res> {
  __$$GroupStateErrorImplCopyWithImpl(
      _$GroupStateErrorImpl _value, $Res Function(_$GroupStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GroupStateErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GroupStateErrorImpl implements GroupStateError {
  const _$GroupStateErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'GroupState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of GroupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupStateErrorImplCopyWith<_$GroupStateErrorImpl> get copyWith =>
      __$$GroupStateErrorImplCopyWithImpl<_$GroupStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingInstitutes,
    required TResult Function(List<InstituteModel> institutes) loadedInstitutes,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)
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
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
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
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
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
    required TResult Function(GroupStateLoadingInstitutes value)
        loadingInstitutes,
    required TResult Function(GroupStateLoadedInstitutes value)
        loadedInstitutes,
    required TResult Function(GroupStateLoadingGroups value) loadingGroups,
    required TResult Function(GroupStateLoadedGroups value) loadedGroups,
    required TResult Function(GroupStateError value) error,
    required TResult Function(GroupStateEndedSession value) endedSession,
    required TResult Function(GroupStateToLoaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupStateLoadingInstitutes value)? loadingInstitutes,
    TResult? Function(GroupStateLoadedInstitutes value)? loadedInstitutes,
    TResult? Function(GroupStateLoadingGroups value)? loadingGroups,
    TResult? Function(GroupStateLoadedGroups value)? loadedGroups,
    TResult? Function(GroupStateError value)? error,
    TResult? Function(GroupStateEndedSession value)? endedSession,
    TResult? Function(GroupStateToLoaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupStateLoadingInstitutes value)? loadingInstitutes,
    TResult Function(GroupStateLoadedInstitutes value)? loadedInstitutes,
    TResult Function(GroupStateLoadingGroups value)? loadingGroups,
    TResult Function(GroupStateLoadedGroups value)? loadedGroups,
    TResult Function(GroupStateError value)? error,
    TResult Function(GroupStateEndedSession value)? endedSession,
    TResult Function(GroupStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GroupStateError implements GroupState {
  const factory GroupStateError({required final String error}) =
      _$GroupStateErrorImpl;

  String get error;

  /// Create a copy of GroupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupStateErrorImplCopyWith<_$GroupStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroupStateEndedSessionImplCopyWith<$Res> {
  factory _$$GroupStateEndedSessionImplCopyWith(
          _$GroupStateEndedSessionImpl value,
          $Res Function(_$GroupStateEndedSessionImpl) then) =
      __$$GroupStateEndedSessionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GroupStateEndedSessionImplCopyWithImpl<$Res>
    extends _$GroupStateCopyWithImpl<$Res, _$GroupStateEndedSessionImpl>
    implements _$$GroupStateEndedSessionImplCopyWith<$Res> {
  __$$GroupStateEndedSessionImplCopyWithImpl(
      _$GroupStateEndedSessionImpl _value,
      $Res Function(_$GroupStateEndedSessionImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GroupStateEndedSessionImpl implements GroupStateEndedSession {
  const _$GroupStateEndedSessionImpl();

  @override
  String toString() {
    return 'GroupState.endedSession()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupStateEndedSessionImpl);
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
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)
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
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
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
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
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
    required TResult Function(GroupStateLoadingInstitutes value)
        loadingInstitutes,
    required TResult Function(GroupStateLoadedInstitutes value)
        loadedInstitutes,
    required TResult Function(GroupStateLoadingGroups value) loadingGroups,
    required TResult Function(GroupStateLoadedGroups value) loadedGroups,
    required TResult Function(GroupStateError value) error,
    required TResult Function(GroupStateEndedSession value) endedSession,
    required TResult Function(GroupStateToLoaded value) loaded,
  }) {
    return endedSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupStateLoadingInstitutes value)? loadingInstitutes,
    TResult? Function(GroupStateLoadedInstitutes value)? loadedInstitutes,
    TResult? Function(GroupStateLoadingGroups value)? loadingGroups,
    TResult? Function(GroupStateLoadedGroups value)? loadedGroups,
    TResult? Function(GroupStateError value)? error,
    TResult? Function(GroupStateEndedSession value)? endedSession,
    TResult? Function(GroupStateToLoaded value)? loaded,
  }) {
    return endedSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupStateLoadingInstitutes value)? loadingInstitutes,
    TResult Function(GroupStateLoadedInstitutes value)? loadedInstitutes,
    TResult Function(GroupStateLoadingGroups value)? loadingGroups,
    TResult Function(GroupStateLoadedGroups value)? loadedGroups,
    TResult Function(GroupStateError value)? error,
    TResult Function(GroupStateEndedSession value)? endedSession,
    TResult Function(GroupStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (endedSession != null) {
      return endedSession(this);
    }
    return orElse();
  }
}

abstract class GroupStateEndedSession implements GroupState {
  const factory GroupStateEndedSession() = _$GroupStateEndedSessionImpl;
}

/// @nodoc
abstract class _$$GroupStateToLoadedImplCopyWith<$Res> {
  factory _$$GroupStateToLoadedImplCopyWith(_$GroupStateToLoadedImpl value,
          $Res Function(_$GroupStateToLoadedImpl) then) =
      __$$GroupStateToLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<InstituteModel> institutes,
      InstituteModel? selectedInstitute,
      List<GroupModel> groups});
}

/// @nodoc
class __$$GroupStateToLoadedImplCopyWithImpl<$Res>
    extends _$GroupStateCopyWithImpl<$Res, _$GroupStateToLoadedImpl>
    implements _$$GroupStateToLoadedImplCopyWith<$Res> {
  __$$GroupStateToLoadedImplCopyWithImpl(_$GroupStateToLoadedImpl _value,
      $Res Function(_$GroupStateToLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? institutes = null,
    Object? selectedInstitute = freezed,
    Object? groups = null,
  }) {
    return _then(_$GroupStateToLoadedImpl(
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
    ));
  }
}

/// @nodoc

class _$GroupStateToLoadedImpl implements GroupStateToLoaded {
  const _$GroupStateToLoadedImpl(
      {required final List<InstituteModel> institutes,
      required this.selectedInstitute,
      required final List<GroupModel> groups})
      : _institutes = institutes,
        _groups = groups;

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
  String toString() {
    return 'GroupState.loaded(institutes: $institutes, selectedInstitute: $selectedInstitute, groups: $groups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupStateToLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._institutes, _institutes) &&
            (identical(other.selectedInstitute, selectedInstitute) ||
                other.selectedInstitute == selectedInstitute) &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_institutes),
      selectedInstitute,
      const DeepCollectionEquality().hash(_groups));

  /// Create a copy of GroupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupStateToLoadedImplCopyWith<_$GroupStateToLoadedImpl> get copyWith =>
      __$$GroupStateToLoadedImplCopyWithImpl<_$GroupStateToLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingInstitutes,
    required TResult Function(List<InstituteModel> institutes) loadedInstitutes,
    required TResult Function() loadingGroups,
    required TResult Function(List<GroupModel> groups) loadedGroups,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)
        loaded,
  }) {
    return loaded(institutes, selectedInstitute, groups);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingInstitutes,
    TResult? Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult? Function()? loadingGroups,
    TResult? Function(List<GroupModel> groups)? loadedGroups,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
        loaded,
  }) {
    return loaded?.call(institutes, selectedInstitute, groups);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingInstitutes,
    TResult Function(List<InstituteModel> institutes)? loadedInstitutes,
    TResult Function()? loadingGroups,
    TResult Function(List<GroupModel> groups)? loadedGroups,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(List<InstituteModel> institutes,
            InstituteModel? selectedInstitute, List<GroupModel> groups)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(institutes, selectedInstitute, groups);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroupStateLoadingInstitutes value)
        loadingInstitutes,
    required TResult Function(GroupStateLoadedInstitutes value)
        loadedInstitutes,
    required TResult Function(GroupStateLoadingGroups value) loadingGroups,
    required TResult Function(GroupStateLoadedGroups value) loadedGroups,
    required TResult Function(GroupStateError value) error,
    required TResult Function(GroupStateEndedSession value) endedSession,
    required TResult Function(GroupStateToLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupStateLoadingInstitutes value)? loadingInstitutes,
    TResult? Function(GroupStateLoadedInstitutes value)? loadedInstitutes,
    TResult? Function(GroupStateLoadingGroups value)? loadingGroups,
    TResult? Function(GroupStateLoadedGroups value)? loadedGroups,
    TResult? Function(GroupStateError value)? error,
    TResult? Function(GroupStateEndedSession value)? endedSession,
    TResult? Function(GroupStateToLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupStateLoadingInstitutes value)? loadingInstitutes,
    TResult Function(GroupStateLoadedInstitutes value)? loadedInstitutes,
    TResult Function(GroupStateLoadingGroups value)? loadingGroups,
    TResult Function(GroupStateLoadedGroups value)? loadedGroups,
    TResult Function(GroupStateError value)? error,
    TResult Function(GroupStateEndedSession value)? endedSession,
    TResult Function(GroupStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class GroupStateToLoaded implements GroupState {
  const factory GroupStateToLoaded(
      {required final List<InstituteModel> institutes,
      required final InstituteModel? selectedInstitute,
      required final List<GroupModel> groups}) = _$GroupStateToLoadedImpl;

  List<InstituteModel> get institutes;
  InstituteModel? get selectedInstitute;
  List<GroupModel> get groups;

  /// Create a copy of GroupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupStateToLoadedImplCopyWith<_$GroupStateToLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
