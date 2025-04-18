// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RoomEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBuildings,
    required TResult Function(int buildingId) loadRooms,
    required TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)
        toLoaded,
    required TResult Function(
            List<RoomModel> rooms, int buildingId, String number)
        createRoom,
    required TResult Function(
            List<RoomModel> rooms, int roomId, int buildingId, String number)
        updateRoom,
    required TResult Function(List<RoomModel> rooms, int roomId) deleteRoom,
    required TResult Function(List<RoomModel> rooms, RoomModel room)
        createDevice,
    required TResult Function(List<RoomModel> rooms, RoomModel room)
        deleteDevice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadBuildings,
    TResult? Function(int buildingId)? loadRooms,
    TResult? Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        toLoaded,
    TResult? Function(List<RoomModel> rooms, int buildingId, String number)?
        createRoom,
    TResult? Function(
            List<RoomModel> rooms, int roomId, int buildingId, String number)?
        updateRoom,
    TResult? Function(List<RoomModel> rooms, int roomId)? deleteRoom,
    TResult? Function(List<RoomModel> rooms, RoomModel room)? createDevice,
    TResult? Function(List<RoomModel> rooms, RoomModel room)? deleteDevice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBuildings,
    TResult Function(int buildingId)? loadRooms,
    TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        toLoaded,
    TResult Function(List<RoomModel> rooms, int buildingId, String number)?
        createRoom,
    TResult Function(
            List<RoomModel> rooms, int roomId, int buildingId, String number)?
        updateRoom,
    TResult Function(List<RoomModel> rooms, int roomId)? deleteRoom,
    TResult Function(List<RoomModel> rooms, RoomModel room)? createDevice,
    TResult Function(List<RoomModel> rooms, RoomModel room)? deleteDevice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomEventLoadBuildings value) loadBuildings,
    required TResult Function(RoomEventLoadRooms value) loadRooms,
    required TResult Function(RoomEventToLoaded value) toLoaded,
    required TResult Function(RoomEventCreateRoom value) createRoom,
    required TResult Function(RoomEventUpdateRoom value) updateRoom,
    required TResult Function(RoomEventDeleteRoom value) deleteRoom,
    required TResult Function(RoomEventCreateDevice value) createDevice,
    required TResult Function(RoomEventDeleteDevice value) deleteDevice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomEventLoadBuildings value)? loadBuildings,
    TResult? Function(RoomEventLoadRooms value)? loadRooms,
    TResult? Function(RoomEventToLoaded value)? toLoaded,
    TResult? Function(RoomEventCreateRoom value)? createRoom,
    TResult? Function(RoomEventUpdateRoom value)? updateRoom,
    TResult? Function(RoomEventDeleteRoom value)? deleteRoom,
    TResult? Function(RoomEventCreateDevice value)? createDevice,
    TResult? Function(RoomEventDeleteDevice value)? deleteDevice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomEventLoadBuildings value)? loadBuildings,
    TResult Function(RoomEventLoadRooms value)? loadRooms,
    TResult Function(RoomEventToLoaded value)? toLoaded,
    TResult Function(RoomEventCreateRoom value)? createRoom,
    TResult Function(RoomEventUpdateRoom value)? updateRoom,
    TResult Function(RoomEventDeleteRoom value)? deleteRoom,
    TResult Function(RoomEventCreateDevice value)? createDevice,
    TResult Function(RoomEventDeleteDevice value)? deleteDevice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomEventCopyWith<$Res> {
  factory $RoomEventCopyWith(RoomEvent value, $Res Function(RoomEvent) then) =
      _$RoomEventCopyWithImpl<$Res, RoomEvent>;
}

/// @nodoc
class _$RoomEventCopyWithImpl<$Res, $Val extends RoomEvent>
    implements $RoomEventCopyWith<$Res> {
  _$RoomEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RoomEventLoadBuildingsImplCopyWith<$Res> {
  factory _$$RoomEventLoadBuildingsImplCopyWith(
          _$RoomEventLoadBuildingsImpl value,
          $Res Function(_$RoomEventLoadBuildingsImpl) then) =
      __$$RoomEventLoadBuildingsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoomEventLoadBuildingsImplCopyWithImpl<$Res>
    extends _$RoomEventCopyWithImpl<$Res, _$RoomEventLoadBuildingsImpl>
    implements _$$RoomEventLoadBuildingsImplCopyWith<$Res> {
  __$$RoomEventLoadBuildingsImplCopyWithImpl(
      _$RoomEventLoadBuildingsImpl _value,
      $Res Function(_$RoomEventLoadBuildingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RoomEventLoadBuildingsImpl implements RoomEventLoadBuildings {
  const _$RoomEventLoadBuildingsImpl();

  @override
  String toString() {
    return 'RoomEvent.loadBuildings()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomEventLoadBuildingsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBuildings,
    required TResult Function(int buildingId) loadRooms,
    required TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)
        toLoaded,
    required TResult Function(
            List<RoomModel> rooms, int buildingId, String number)
        createRoom,
    required TResult Function(
            List<RoomModel> rooms, int roomId, int buildingId, String number)
        updateRoom,
    required TResult Function(List<RoomModel> rooms, int roomId) deleteRoom,
    required TResult Function(List<RoomModel> rooms, RoomModel room)
        createDevice,
    required TResult Function(List<RoomModel> rooms, RoomModel room)
        deleteDevice,
  }) {
    return loadBuildings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadBuildings,
    TResult? Function(int buildingId)? loadRooms,
    TResult? Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        toLoaded,
    TResult? Function(List<RoomModel> rooms, int buildingId, String number)?
        createRoom,
    TResult? Function(
            List<RoomModel> rooms, int roomId, int buildingId, String number)?
        updateRoom,
    TResult? Function(List<RoomModel> rooms, int roomId)? deleteRoom,
    TResult? Function(List<RoomModel> rooms, RoomModel room)? createDevice,
    TResult? Function(List<RoomModel> rooms, RoomModel room)? deleteDevice,
  }) {
    return loadBuildings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBuildings,
    TResult Function(int buildingId)? loadRooms,
    TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        toLoaded,
    TResult Function(List<RoomModel> rooms, int buildingId, String number)?
        createRoom,
    TResult Function(
            List<RoomModel> rooms, int roomId, int buildingId, String number)?
        updateRoom,
    TResult Function(List<RoomModel> rooms, int roomId)? deleteRoom,
    TResult Function(List<RoomModel> rooms, RoomModel room)? createDevice,
    TResult Function(List<RoomModel> rooms, RoomModel room)? deleteDevice,
    required TResult orElse(),
  }) {
    if (loadBuildings != null) {
      return loadBuildings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomEventLoadBuildings value) loadBuildings,
    required TResult Function(RoomEventLoadRooms value) loadRooms,
    required TResult Function(RoomEventToLoaded value) toLoaded,
    required TResult Function(RoomEventCreateRoom value) createRoom,
    required TResult Function(RoomEventUpdateRoom value) updateRoom,
    required TResult Function(RoomEventDeleteRoom value) deleteRoom,
    required TResult Function(RoomEventCreateDevice value) createDevice,
    required TResult Function(RoomEventDeleteDevice value) deleteDevice,
  }) {
    return loadBuildings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomEventLoadBuildings value)? loadBuildings,
    TResult? Function(RoomEventLoadRooms value)? loadRooms,
    TResult? Function(RoomEventToLoaded value)? toLoaded,
    TResult? Function(RoomEventCreateRoom value)? createRoom,
    TResult? Function(RoomEventUpdateRoom value)? updateRoom,
    TResult? Function(RoomEventDeleteRoom value)? deleteRoom,
    TResult? Function(RoomEventCreateDevice value)? createDevice,
    TResult? Function(RoomEventDeleteDevice value)? deleteDevice,
  }) {
    return loadBuildings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomEventLoadBuildings value)? loadBuildings,
    TResult Function(RoomEventLoadRooms value)? loadRooms,
    TResult Function(RoomEventToLoaded value)? toLoaded,
    TResult Function(RoomEventCreateRoom value)? createRoom,
    TResult Function(RoomEventUpdateRoom value)? updateRoom,
    TResult Function(RoomEventDeleteRoom value)? deleteRoom,
    TResult Function(RoomEventCreateDevice value)? createDevice,
    TResult Function(RoomEventDeleteDevice value)? deleteDevice,
    required TResult orElse(),
  }) {
    if (loadBuildings != null) {
      return loadBuildings(this);
    }
    return orElse();
  }
}

abstract class RoomEventLoadBuildings implements RoomEvent {
  const factory RoomEventLoadBuildings() = _$RoomEventLoadBuildingsImpl;
}

/// @nodoc
abstract class _$$RoomEventLoadRoomsImplCopyWith<$Res> {
  factory _$$RoomEventLoadRoomsImplCopyWith(_$RoomEventLoadRoomsImpl value,
          $Res Function(_$RoomEventLoadRoomsImpl) then) =
      __$$RoomEventLoadRoomsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int buildingId});
}

/// @nodoc
class __$$RoomEventLoadRoomsImplCopyWithImpl<$Res>
    extends _$RoomEventCopyWithImpl<$Res, _$RoomEventLoadRoomsImpl>
    implements _$$RoomEventLoadRoomsImplCopyWith<$Res> {
  __$$RoomEventLoadRoomsImplCopyWithImpl(_$RoomEventLoadRoomsImpl _value,
      $Res Function(_$RoomEventLoadRoomsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildingId = null,
  }) {
    return _then(_$RoomEventLoadRoomsImpl(
      buildingId: null == buildingId
          ? _value.buildingId
          : buildingId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RoomEventLoadRoomsImpl implements RoomEventLoadRooms {
  const _$RoomEventLoadRoomsImpl({required this.buildingId});

  @override
  final int buildingId;

  @override
  String toString() {
    return 'RoomEvent.loadRooms(buildingId: $buildingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomEventLoadRoomsImpl &&
            (identical(other.buildingId, buildingId) ||
                other.buildingId == buildingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, buildingId);

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomEventLoadRoomsImplCopyWith<_$RoomEventLoadRoomsImpl> get copyWith =>
      __$$RoomEventLoadRoomsImplCopyWithImpl<_$RoomEventLoadRoomsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBuildings,
    required TResult Function(int buildingId) loadRooms,
    required TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)
        toLoaded,
    required TResult Function(
            List<RoomModel> rooms, int buildingId, String number)
        createRoom,
    required TResult Function(
            List<RoomModel> rooms, int roomId, int buildingId, String number)
        updateRoom,
    required TResult Function(List<RoomModel> rooms, int roomId) deleteRoom,
    required TResult Function(List<RoomModel> rooms, RoomModel room)
        createDevice,
    required TResult Function(List<RoomModel> rooms, RoomModel room)
        deleteDevice,
  }) {
    return loadRooms(buildingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadBuildings,
    TResult? Function(int buildingId)? loadRooms,
    TResult? Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        toLoaded,
    TResult? Function(List<RoomModel> rooms, int buildingId, String number)?
        createRoom,
    TResult? Function(
            List<RoomModel> rooms, int roomId, int buildingId, String number)?
        updateRoom,
    TResult? Function(List<RoomModel> rooms, int roomId)? deleteRoom,
    TResult? Function(List<RoomModel> rooms, RoomModel room)? createDevice,
    TResult? Function(List<RoomModel> rooms, RoomModel room)? deleteDevice,
  }) {
    return loadRooms?.call(buildingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBuildings,
    TResult Function(int buildingId)? loadRooms,
    TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        toLoaded,
    TResult Function(List<RoomModel> rooms, int buildingId, String number)?
        createRoom,
    TResult Function(
            List<RoomModel> rooms, int roomId, int buildingId, String number)?
        updateRoom,
    TResult Function(List<RoomModel> rooms, int roomId)? deleteRoom,
    TResult Function(List<RoomModel> rooms, RoomModel room)? createDevice,
    TResult Function(List<RoomModel> rooms, RoomModel room)? deleteDevice,
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
    required TResult Function(RoomEventLoadBuildings value) loadBuildings,
    required TResult Function(RoomEventLoadRooms value) loadRooms,
    required TResult Function(RoomEventToLoaded value) toLoaded,
    required TResult Function(RoomEventCreateRoom value) createRoom,
    required TResult Function(RoomEventUpdateRoom value) updateRoom,
    required TResult Function(RoomEventDeleteRoom value) deleteRoom,
    required TResult Function(RoomEventCreateDevice value) createDevice,
    required TResult Function(RoomEventDeleteDevice value) deleteDevice,
  }) {
    return loadRooms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomEventLoadBuildings value)? loadBuildings,
    TResult? Function(RoomEventLoadRooms value)? loadRooms,
    TResult? Function(RoomEventToLoaded value)? toLoaded,
    TResult? Function(RoomEventCreateRoom value)? createRoom,
    TResult? Function(RoomEventUpdateRoom value)? updateRoom,
    TResult? Function(RoomEventDeleteRoom value)? deleteRoom,
    TResult? Function(RoomEventCreateDevice value)? createDevice,
    TResult? Function(RoomEventDeleteDevice value)? deleteDevice,
  }) {
    return loadRooms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomEventLoadBuildings value)? loadBuildings,
    TResult Function(RoomEventLoadRooms value)? loadRooms,
    TResult Function(RoomEventToLoaded value)? toLoaded,
    TResult Function(RoomEventCreateRoom value)? createRoom,
    TResult Function(RoomEventUpdateRoom value)? updateRoom,
    TResult Function(RoomEventDeleteRoom value)? deleteRoom,
    TResult Function(RoomEventCreateDevice value)? createDevice,
    TResult Function(RoomEventDeleteDevice value)? deleteDevice,
    required TResult orElse(),
  }) {
    if (loadRooms != null) {
      return loadRooms(this);
    }
    return orElse();
  }
}

abstract class RoomEventLoadRooms implements RoomEvent {
  const factory RoomEventLoadRooms({required final int buildingId}) =
      _$RoomEventLoadRoomsImpl;

  int get buildingId;

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomEventLoadRoomsImplCopyWith<_$RoomEventLoadRoomsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RoomEventToLoadedImplCopyWith<$Res> {
  factory _$$RoomEventToLoadedImplCopyWith(_$RoomEventToLoadedImpl value,
          $Res Function(_$RoomEventToLoadedImpl) then) =
      __$$RoomEventToLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<BuildingModel> buildings,
      BuildingModel? selectedBuilding,
      List<RoomModel> rooms});
}

/// @nodoc
class __$$RoomEventToLoadedImplCopyWithImpl<$Res>
    extends _$RoomEventCopyWithImpl<$Res, _$RoomEventToLoadedImpl>
    implements _$$RoomEventToLoadedImplCopyWith<$Res> {
  __$$RoomEventToLoadedImplCopyWithImpl(_$RoomEventToLoadedImpl _value,
      $Res Function(_$RoomEventToLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildings = null,
    Object? selectedBuilding = freezed,
    Object? rooms = null,
  }) {
    return _then(_$RoomEventToLoadedImpl(
      buildings: null == buildings
          ? _value._buildings
          : buildings // ignore: cast_nullable_to_non_nullable
              as List<BuildingModel>,
      selectedBuilding: freezed == selectedBuilding
          ? _value.selectedBuilding
          : selectedBuilding // ignore: cast_nullable_to_non_nullable
              as BuildingModel?,
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>,
    ));
  }
}

/// @nodoc

class _$RoomEventToLoadedImpl implements RoomEventToLoaded {
  const _$RoomEventToLoadedImpl(
      {required final List<BuildingModel> buildings,
      required this.selectedBuilding,
      required final List<RoomModel> rooms})
      : _buildings = buildings,
        _rooms = rooms;

  final List<BuildingModel> _buildings;
  @override
  List<BuildingModel> get buildings {
    if (_buildings is EqualUnmodifiableListView) return _buildings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_buildings);
  }

  @override
  final BuildingModel? selectedBuilding;
  final List<RoomModel> _rooms;
  @override
  List<RoomModel> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  String toString() {
    return 'RoomEvent.toLoaded(buildings: $buildings, selectedBuilding: $selectedBuilding, rooms: $rooms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomEventToLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._buildings, _buildings) &&
            (identical(other.selectedBuilding, selectedBuilding) ||
                other.selectedBuilding == selectedBuilding) &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_buildings),
      selectedBuilding,
      const DeepCollectionEquality().hash(_rooms));

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomEventToLoadedImplCopyWith<_$RoomEventToLoadedImpl> get copyWith =>
      __$$RoomEventToLoadedImplCopyWithImpl<_$RoomEventToLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBuildings,
    required TResult Function(int buildingId) loadRooms,
    required TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)
        toLoaded,
    required TResult Function(
            List<RoomModel> rooms, int buildingId, String number)
        createRoom,
    required TResult Function(
            List<RoomModel> rooms, int roomId, int buildingId, String number)
        updateRoom,
    required TResult Function(List<RoomModel> rooms, int roomId) deleteRoom,
    required TResult Function(List<RoomModel> rooms, RoomModel room)
        createDevice,
    required TResult Function(List<RoomModel> rooms, RoomModel room)
        deleteDevice,
  }) {
    return toLoaded(buildings, selectedBuilding, rooms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadBuildings,
    TResult? Function(int buildingId)? loadRooms,
    TResult? Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        toLoaded,
    TResult? Function(List<RoomModel> rooms, int buildingId, String number)?
        createRoom,
    TResult? Function(
            List<RoomModel> rooms, int roomId, int buildingId, String number)?
        updateRoom,
    TResult? Function(List<RoomModel> rooms, int roomId)? deleteRoom,
    TResult? Function(List<RoomModel> rooms, RoomModel room)? createDevice,
    TResult? Function(List<RoomModel> rooms, RoomModel room)? deleteDevice,
  }) {
    return toLoaded?.call(buildings, selectedBuilding, rooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBuildings,
    TResult Function(int buildingId)? loadRooms,
    TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        toLoaded,
    TResult Function(List<RoomModel> rooms, int buildingId, String number)?
        createRoom,
    TResult Function(
            List<RoomModel> rooms, int roomId, int buildingId, String number)?
        updateRoom,
    TResult Function(List<RoomModel> rooms, int roomId)? deleteRoom,
    TResult Function(List<RoomModel> rooms, RoomModel room)? createDevice,
    TResult Function(List<RoomModel> rooms, RoomModel room)? deleteDevice,
    required TResult orElse(),
  }) {
    if (toLoaded != null) {
      return toLoaded(buildings, selectedBuilding, rooms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomEventLoadBuildings value) loadBuildings,
    required TResult Function(RoomEventLoadRooms value) loadRooms,
    required TResult Function(RoomEventToLoaded value) toLoaded,
    required TResult Function(RoomEventCreateRoom value) createRoom,
    required TResult Function(RoomEventUpdateRoom value) updateRoom,
    required TResult Function(RoomEventDeleteRoom value) deleteRoom,
    required TResult Function(RoomEventCreateDevice value) createDevice,
    required TResult Function(RoomEventDeleteDevice value) deleteDevice,
  }) {
    return toLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomEventLoadBuildings value)? loadBuildings,
    TResult? Function(RoomEventLoadRooms value)? loadRooms,
    TResult? Function(RoomEventToLoaded value)? toLoaded,
    TResult? Function(RoomEventCreateRoom value)? createRoom,
    TResult? Function(RoomEventUpdateRoom value)? updateRoom,
    TResult? Function(RoomEventDeleteRoom value)? deleteRoom,
    TResult? Function(RoomEventCreateDevice value)? createDevice,
    TResult? Function(RoomEventDeleteDevice value)? deleteDevice,
  }) {
    return toLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomEventLoadBuildings value)? loadBuildings,
    TResult Function(RoomEventLoadRooms value)? loadRooms,
    TResult Function(RoomEventToLoaded value)? toLoaded,
    TResult Function(RoomEventCreateRoom value)? createRoom,
    TResult Function(RoomEventUpdateRoom value)? updateRoom,
    TResult Function(RoomEventDeleteRoom value)? deleteRoom,
    TResult Function(RoomEventCreateDevice value)? createDevice,
    TResult Function(RoomEventDeleteDevice value)? deleteDevice,
    required TResult orElse(),
  }) {
    if (toLoaded != null) {
      return toLoaded(this);
    }
    return orElse();
  }
}

abstract class RoomEventToLoaded implements RoomEvent {
  const factory RoomEventToLoaded(
      {required final List<BuildingModel> buildings,
      required final BuildingModel? selectedBuilding,
      required final List<RoomModel> rooms}) = _$RoomEventToLoadedImpl;

  List<BuildingModel> get buildings;
  BuildingModel? get selectedBuilding;
  List<RoomModel> get rooms;

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomEventToLoadedImplCopyWith<_$RoomEventToLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RoomEventCreateRoomImplCopyWith<$Res> {
  factory _$$RoomEventCreateRoomImplCopyWith(_$RoomEventCreateRoomImpl value,
          $Res Function(_$RoomEventCreateRoomImpl) then) =
      __$$RoomEventCreateRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RoomModel> rooms, int buildingId, String number});
}

/// @nodoc
class __$$RoomEventCreateRoomImplCopyWithImpl<$Res>
    extends _$RoomEventCopyWithImpl<$Res, _$RoomEventCreateRoomImpl>
    implements _$$RoomEventCreateRoomImplCopyWith<$Res> {
  __$$RoomEventCreateRoomImplCopyWithImpl(_$RoomEventCreateRoomImpl _value,
      $Res Function(_$RoomEventCreateRoomImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
    Object? buildingId = null,
    Object? number = null,
  }) {
    return _then(_$RoomEventCreateRoomImpl(
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>,
      buildingId: null == buildingId
          ? _value.buildingId
          : buildingId // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RoomEventCreateRoomImpl implements RoomEventCreateRoom {
  const _$RoomEventCreateRoomImpl(
      {required final List<RoomModel> rooms,
      required this.buildingId,
      required this.number})
      : _rooms = rooms;

  final List<RoomModel> _rooms;
  @override
  List<RoomModel> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  final int buildingId;
  @override
  final String number;

  @override
  String toString() {
    return 'RoomEvent.createRoom(rooms: $rooms, buildingId: $buildingId, number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomEventCreateRoomImpl &&
            const DeepCollectionEquality().equals(other._rooms, _rooms) &&
            (identical(other.buildingId, buildingId) ||
                other.buildingId == buildingId) &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_rooms), buildingId, number);

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomEventCreateRoomImplCopyWith<_$RoomEventCreateRoomImpl> get copyWith =>
      __$$RoomEventCreateRoomImplCopyWithImpl<_$RoomEventCreateRoomImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBuildings,
    required TResult Function(int buildingId) loadRooms,
    required TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)
        toLoaded,
    required TResult Function(
            List<RoomModel> rooms, int buildingId, String number)
        createRoom,
    required TResult Function(
            List<RoomModel> rooms, int roomId, int buildingId, String number)
        updateRoom,
    required TResult Function(List<RoomModel> rooms, int roomId) deleteRoom,
    required TResult Function(List<RoomModel> rooms, RoomModel room)
        createDevice,
    required TResult Function(List<RoomModel> rooms, RoomModel room)
        deleteDevice,
  }) {
    return createRoom(rooms, buildingId, number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadBuildings,
    TResult? Function(int buildingId)? loadRooms,
    TResult? Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        toLoaded,
    TResult? Function(List<RoomModel> rooms, int buildingId, String number)?
        createRoom,
    TResult? Function(
            List<RoomModel> rooms, int roomId, int buildingId, String number)?
        updateRoom,
    TResult? Function(List<RoomModel> rooms, int roomId)? deleteRoom,
    TResult? Function(List<RoomModel> rooms, RoomModel room)? createDevice,
    TResult? Function(List<RoomModel> rooms, RoomModel room)? deleteDevice,
  }) {
    return createRoom?.call(rooms, buildingId, number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBuildings,
    TResult Function(int buildingId)? loadRooms,
    TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        toLoaded,
    TResult Function(List<RoomModel> rooms, int buildingId, String number)?
        createRoom,
    TResult Function(
            List<RoomModel> rooms, int roomId, int buildingId, String number)?
        updateRoom,
    TResult Function(List<RoomModel> rooms, int roomId)? deleteRoom,
    TResult Function(List<RoomModel> rooms, RoomModel room)? createDevice,
    TResult Function(List<RoomModel> rooms, RoomModel room)? deleteDevice,
    required TResult orElse(),
  }) {
    if (createRoom != null) {
      return createRoom(rooms, buildingId, number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomEventLoadBuildings value) loadBuildings,
    required TResult Function(RoomEventLoadRooms value) loadRooms,
    required TResult Function(RoomEventToLoaded value) toLoaded,
    required TResult Function(RoomEventCreateRoom value) createRoom,
    required TResult Function(RoomEventUpdateRoom value) updateRoom,
    required TResult Function(RoomEventDeleteRoom value) deleteRoom,
    required TResult Function(RoomEventCreateDevice value) createDevice,
    required TResult Function(RoomEventDeleteDevice value) deleteDevice,
  }) {
    return createRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomEventLoadBuildings value)? loadBuildings,
    TResult? Function(RoomEventLoadRooms value)? loadRooms,
    TResult? Function(RoomEventToLoaded value)? toLoaded,
    TResult? Function(RoomEventCreateRoom value)? createRoom,
    TResult? Function(RoomEventUpdateRoom value)? updateRoom,
    TResult? Function(RoomEventDeleteRoom value)? deleteRoom,
    TResult? Function(RoomEventCreateDevice value)? createDevice,
    TResult? Function(RoomEventDeleteDevice value)? deleteDevice,
  }) {
    return createRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomEventLoadBuildings value)? loadBuildings,
    TResult Function(RoomEventLoadRooms value)? loadRooms,
    TResult Function(RoomEventToLoaded value)? toLoaded,
    TResult Function(RoomEventCreateRoom value)? createRoom,
    TResult Function(RoomEventUpdateRoom value)? updateRoom,
    TResult Function(RoomEventDeleteRoom value)? deleteRoom,
    TResult Function(RoomEventCreateDevice value)? createDevice,
    TResult Function(RoomEventDeleteDevice value)? deleteDevice,
    required TResult orElse(),
  }) {
    if (createRoom != null) {
      return createRoom(this);
    }
    return orElse();
  }
}

abstract class RoomEventCreateRoom implements RoomEvent {
  const factory RoomEventCreateRoom(
      {required final List<RoomModel> rooms,
      required final int buildingId,
      required final String number}) = _$RoomEventCreateRoomImpl;

  List<RoomModel> get rooms;
  int get buildingId;
  String get number;

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomEventCreateRoomImplCopyWith<_$RoomEventCreateRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RoomEventUpdateRoomImplCopyWith<$Res> {
  factory _$$RoomEventUpdateRoomImplCopyWith(_$RoomEventUpdateRoomImpl value,
          $Res Function(_$RoomEventUpdateRoomImpl) then) =
      __$$RoomEventUpdateRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RoomModel> rooms, int roomId, int buildingId, String number});
}

/// @nodoc
class __$$RoomEventUpdateRoomImplCopyWithImpl<$Res>
    extends _$RoomEventCopyWithImpl<$Res, _$RoomEventUpdateRoomImpl>
    implements _$$RoomEventUpdateRoomImplCopyWith<$Res> {
  __$$RoomEventUpdateRoomImplCopyWithImpl(_$RoomEventUpdateRoomImpl _value,
      $Res Function(_$RoomEventUpdateRoomImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
    Object? roomId = null,
    Object? buildingId = null,
    Object? number = null,
  }) {
    return _then(_$RoomEventUpdateRoomImpl(
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
      buildingId: null == buildingId
          ? _value.buildingId
          : buildingId // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RoomEventUpdateRoomImpl implements RoomEventUpdateRoom {
  const _$RoomEventUpdateRoomImpl(
      {required final List<RoomModel> rooms,
      required this.roomId,
      required this.buildingId,
      required this.number})
      : _rooms = rooms;

  final List<RoomModel> _rooms;
  @override
  List<RoomModel> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  final int roomId;
  @override
  final int buildingId;
  @override
  final String number;

  @override
  String toString() {
    return 'RoomEvent.updateRoom(rooms: $rooms, roomId: $roomId, buildingId: $buildingId, number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomEventUpdateRoomImpl &&
            const DeepCollectionEquality().equals(other._rooms, _rooms) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.buildingId, buildingId) ||
                other.buildingId == buildingId) &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_rooms), roomId, buildingId, number);

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomEventUpdateRoomImplCopyWith<_$RoomEventUpdateRoomImpl> get copyWith =>
      __$$RoomEventUpdateRoomImplCopyWithImpl<_$RoomEventUpdateRoomImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBuildings,
    required TResult Function(int buildingId) loadRooms,
    required TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)
        toLoaded,
    required TResult Function(
            List<RoomModel> rooms, int buildingId, String number)
        createRoom,
    required TResult Function(
            List<RoomModel> rooms, int roomId, int buildingId, String number)
        updateRoom,
    required TResult Function(List<RoomModel> rooms, int roomId) deleteRoom,
    required TResult Function(List<RoomModel> rooms, RoomModel room)
        createDevice,
    required TResult Function(List<RoomModel> rooms, RoomModel room)
        deleteDevice,
  }) {
    return updateRoom(rooms, roomId, buildingId, number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadBuildings,
    TResult? Function(int buildingId)? loadRooms,
    TResult? Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        toLoaded,
    TResult? Function(List<RoomModel> rooms, int buildingId, String number)?
        createRoom,
    TResult? Function(
            List<RoomModel> rooms, int roomId, int buildingId, String number)?
        updateRoom,
    TResult? Function(List<RoomModel> rooms, int roomId)? deleteRoom,
    TResult? Function(List<RoomModel> rooms, RoomModel room)? createDevice,
    TResult? Function(List<RoomModel> rooms, RoomModel room)? deleteDevice,
  }) {
    return updateRoom?.call(rooms, roomId, buildingId, number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBuildings,
    TResult Function(int buildingId)? loadRooms,
    TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        toLoaded,
    TResult Function(List<RoomModel> rooms, int buildingId, String number)?
        createRoom,
    TResult Function(
            List<RoomModel> rooms, int roomId, int buildingId, String number)?
        updateRoom,
    TResult Function(List<RoomModel> rooms, int roomId)? deleteRoom,
    TResult Function(List<RoomModel> rooms, RoomModel room)? createDevice,
    TResult Function(List<RoomModel> rooms, RoomModel room)? deleteDevice,
    required TResult orElse(),
  }) {
    if (updateRoom != null) {
      return updateRoom(rooms, roomId, buildingId, number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomEventLoadBuildings value) loadBuildings,
    required TResult Function(RoomEventLoadRooms value) loadRooms,
    required TResult Function(RoomEventToLoaded value) toLoaded,
    required TResult Function(RoomEventCreateRoom value) createRoom,
    required TResult Function(RoomEventUpdateRoom value) updateRoom,
    required TResult Function(RoomEventDeleteRoom value) deleteRoom,
    required TResult Function(RoomEventCreateDevice value) createDevice,
    required TResult Function(RoomEventDeleteDevice value) deleteDevice,
  }) {
    return updateRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomEventLoadBuildings value)? loadBuildings,
    TResult? Function(RoomEventLoadRooms value)? loadRooms,
    TResult? Function(RoomEventToLoaded value)? toLoaded,
    TResult? Function(RoomEventCreateRoom value)? createRoom,
    TResult? Function(RoomEventUpdateRoom value)? updateRoom,
    TResult? Function(RoomEventDeleteRoom value)? deleteRoom,
    TResult? Function(RoomEventCreateDevice value)? createDevice,
    TResult? Function(RoomEventDeleteDevice value)? deleteDevice,
  }) {
    return updateRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomEventLoadBuildings value)? loadBuildings,
    TResult Function(RoomEventLoadRooms value)? loadRooms,
    TResult Function(RoomEventToLoaded value)? toLoaded,
    TResult Function(RoomEventCreateRoom value)? createRoom,
    TResult Function(RoomEventUpdateRoom value)? updateRoom,
    TResult Function(RoomEventDeleteRoom value)? deleteRoom,
    TResult Function(RoomEventCreateDevice value)? createDevice,
    TResult Function(RoomEventDeleteDevice value)? deleteDevice,
    required TResult orElse(),
  }) {
    if (updateRoom != null) {
      return updateRoom(this);
    }
    return orElse();
  }
}

abstract class RoomEventUpdateRoom implements RoomEvent {
  const factory RoomEventUpdateRoom(
      {required final List<RoomModel> rooms,
      required final int roomId,
      required final int buildingId,
      required final String number}) = _$RoomEventUpdateRoomImpl;

  List<RoomModel> get rooms;
  int get roomId;
  int get buildingId;
  String get number;

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomEventUpdateRoomImplCopyWith<_$RoomEventUpdateRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RoomEventDeleteRoomImplCopyWith<$Res> {
  factory _$$RoomEventDeleteRoomImplCopyWith(_$RoomEventDeleteRoomImpl value,
          $Res Function(_$RoomEventDeleteRoomImpl) then) =
      __$$RoomEventDeleteRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RoomModel> rooms, int roomId});
}

/// @nodoc
class __$$RoomEventDeleteRoomImplCopyWithImpl<$Res>
    extends _$RoomEventCopyWithImpl<$Res, _$RoomEventDeleteRoomImpl>
    implements _$$RoomEventDeleteRoomImplCopyWith<$Res> {
  __$$RoomEventDeleteRoomImplCopyWithImpl(_$RoomEventDeleteRoomImpl _value,
      $Res Function(_$RoomEventDeleteRoomImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
    Object? roomId = null,
  }) {
    return _then(_$RoomEventDeleteRoomImpl(
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RoomEventDeleteRoomImpl implements RoomEventDeleteRoom {
  const _$RoomEventDeleteRoomImpl(
      {required final List<RoomModel> rooms, required this.roomId})
      : _rooms = rooms;

  final List<RoomModel> _rooms;
  @override
  List<RoomModel> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  final int roomId;

  @override
  String toString() {
    return 'RoomEvent.deleteRoom(rooms: $rooms, roomId: $roomId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomEventDeleteRoomImpl &&
            const DeepCollectionEquality().equals(other._rooms, _rooms) &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_rooms), roomId);

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomEventDeleteRoomImplCopyWith<_$RoomEventDeleteRoomImpl> get copyWith =>
      __$$RoomEventDeleteRoomImplCopyWithImpl<_$RoomEventDeleteRoomImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBuildings,
    required TResult Function(int buildingId) loadRooms,
    required TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)
        toLoaded,
    required TResult Function(
            List<RoomModel> rooms, int buildingId, String number)
        createRoom,
    required TResult Function(
            List<RoomModel> rooms, int roomId, int buildingId, String number)
        updateRoom,
    required TResult Function(List<RoomModel> rooms, int roomId) deleteRoom,
    required TResult Function(List<RoomModel> rooms, RoomModel room)
        createDevice,
    required TResult Function(List<RoomModel> rooms, RoomModel room)
        deleteDevice,
  }) {
    return deleteRoom(rooms, roomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadBuildings,
    TResult? Function(int buildingId)? loadRooms,
    TResult? Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        toLoaded,
    TResult? Function(List<RoomModel> rooms, int buildingId, String number)?
        createRoom,
    TResult? Function(
            List<RoomModel> rooms, int roomId, int buildingId, String number)?
        updateRoom,
    TResult? Function(List<RoomModel> rooms, int roomId)? deleteRoom,
    TResult? Function(List<RoomModel> rooms, RoomModel room)? createDevice,
    TResult? Function(List<RoomModel> rooms, RoomModel room)? deleteDevice,
  }) {
    return deleteRoom?.call(rooms, roomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBuildings,
    TResult Function(int buildingId)? loadRooms,
    TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        toLoaded,
    TResult Function(List<RoomModel> rooms, int buildingId, String number)?
        createRoom,
    TResult Function(
            List<RoomModel> rooms, int roomId, int buildingId, String number)?
        updateRoom,
    TResult Function(List<RoomModel> rooms, int roomId)? deleteRoom,
    TResult Function(List<RoomModel> rooms, RoomModel room)? createDevice,
    TResult Function(List<RoomModel> rooms, RoomModel room)? deleteDevice,
    required TResult orElse(),
  }) {
    if (deleteRoom != null) {
      return deleteRoom(rooms, roomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomEventLoadBuildings value) loadBuildings,
    required TResult Function(RoomEventLoadRooms value) loadRooms,
    required TResult Function(RoomEventToLoaded value) toLoaded,
    required TResult Function(RoomEventCreateRoom value) createRoom,
    required TResult Function(RoomEventUpdateRoom value) updateRoom,
    required TResult Function(RoomEventDeleteRoom value) deleteRoom,
    required TResult Function(RoomEventCreateDevice value) createDevice,
    required TResult Function(RoomEventDeleteDevice value) deleteDevice,
  }) {
    return deleteRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomEventLoadBuildings value)? loadBuildings,
    TResult? Function(RoomEventLoadRooms value)? loadRooms,
    TResult? Function(RoomEventToLoaded value)? toLoaded,
    TResult? Function(RoomEventCreateRoom value)? createRoom,
    TResult? Function(RoomEventUpdateRoom value)? updateRoom,
    TResult? Function(RoomEventDeleteRoom value)? deleteRoom,
    TResult? Function(RoomEventCreateDevice value)? createDevice,
    TResult? Function(RoomEventDeleteDevice value)? deleteDevice,
  }) {
    return deleteRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomEventLoadBuildings value)? loadBuildings,
    TResult Function(RoomEventLoadRooms value)? loadRooms,
    TResult Function(RoomEventToLoaded value)? toLoaded,
    TResult Function(RoomEventCreateRoom value)? createRoom,
    TResult Function(RoomEventUpdateRoom value)? updateRoom,
    TResult Function(RoomEventDeleteRoom value)? deleteRoom,
    TResult Function(RoomEventCreateDevice value)? createDevice,
    TResult Function(RoomEventDeleteDevice value)? deleteDevice,
    required TResult orElse(),
  }) {
    if (deleteRoom != null) {
      return deleteRoom(this);
    }
    return orElse();
  }
}

abstract class RoomEventDeleteRoom implements RoomEvent {
  const factory RoomEventDeleteRoom(
      {required final List<RoomModel> rooms,
      required final int roomId}) = _$RoomEventDeleteRoomImpl;

  List<RoomModel> get rooms;
  int get roomId;

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomEventDeleteRoomImplCopyWith<_$RoomEventDeleteRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RoomEventCreateDeviceImplCopyWith<$Res> {
  factory _$$RoomEventCreateDeviceImplCopyWith(
          _$RoomEventCreateDeviceImpl value,
          $Res Function(_$RoomEventCreateDeviceImpl) then) =
      __$$RoomEventCreateDeviceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RoomModel> rooms, RoomModel room});
}

/// @nodoc
class __$$RoomEventCreateDeviceImplCopyWithImpl<$Res>
    extends _$RoomEventCopyWithImpl<$Res, _$RoomEventCreateDeviceImpl>
    implements _$$RoomEventCreateDeviceImplCopyWith<$Res> {
  __$$RoomEventCreateDeviceImplCopyWithImpl(_$RoomEventCreateDeviceImpl _value,
      $Res Function(_$RoomEventCreateDeviceImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
    Object? room = null,
  }) {
    return _then(_$RoomEventCreateDeviceImpl(
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as RoomModel,
    ));
  }
}

/// @nodoc

class _$RoomEventCreateDeviceImpl implements RoomEventCreateDevice {
  const _$RoomEventCreateDeviceImpl(
      {required final List<RoomModel> rooms, required this.room})
      : _rooms = rooms;

  final List<RoomModel> _rooms;
  @override
  List<RoomModel> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  final RoomModel room;

  @override
  String toString() {
    return 'RoomEvent.createDevice(rooms: $rooms, room: $room)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomEventCreateDeviceImpl &&
            const DeepCollectionEquality().equals(other._rooms, _rooms) &&
            (identical(other.room, room) || other.room == room));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_rooms), room);

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomEventCreateDeviceImplCopyWith<_$RoomEventCreateDeviceImpl>
      get copyWith => __$$RoomEventCreateDeviceImplCopyWithImpl<
          _$RoomEventCreateDeviceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBuildings,
    required TResult Function(int buildingId) loadRooms,
    required TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)
        toLoaded,
    required TResult Function(
            List<RoomModel> rooms, int buildingId, String number)
        createRoom,
    required TResult Function(
            List<RoomModel> rooms, int roomId, int buildingId, String number)
        updateRoom,
    required TResult Function(List<RoomModel> rooms, int roomId) deleteRoom,
    required TResult Function(List<RoomModel> rooms, RoomModel room)
        createDevice,
    required TResult Function(List<RoomModel> rooms, RoomModel room)
        deleteDevice,
  }) {
    return createDevice(rooms, room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadBuildings,
    TResult? Function(int buildingId)? loadRooms,
    TResult? Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        toLoaded,
    TResult? Function(List<RoomModel> rooms, int buildingId, String number)?
        createRoom,
    TResult? Function(
            List<RoomModel> rooms, int roomId, int buildingId, String number)?
        updateRoom,
    TResult? Function(List<RoomModel> rooms, int roomId)? deleteRoom,
    TResult? Function(List<RoomModel> rooms, RoomModel room)? createDevice,
    TResult? Function(List<RoomModel> rooms, RoomModel room)? deleteDevice,
  }) {
    return createDevice?.call(rooms, room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBuildings,
    TResult Function(int buildingId)? loadRooms,
    TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        toLoaded,
    TResult Function(List<RoomModel> rooms, int buildingId, String number)?
        createRoom,
    TResult Function(
            List<RoomModel> rooms, int roomId, int buildingId, String number)?
        updateRoom,
    TResult Function(List<RoomModel> rooms, int roomId)? deleteRoom,
    TResult Function(List<RoomModel> rooms, RoomModel room)? createDevice,
    TResult Function(List<RoomModel> rooms, RoomModel room)? deleteDevice,
    required TResult orElse(),
  }) {
    if (createDevice != null) {
      return createDevice(rooms, room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomEventLoadBuildings value) loadBuildings,
    required TResult Function(RoomEventLoadRooms value) loadRooms,
    required TResult Function(RoomEventToLoaded value) toLoaded,
    required TResult Function(RoomEventCreateRoom value) createRoom,
    required TResult Function(RoomEventUpdateRoom value) updateRoom,
    required TResult Function(RoomEventDeleteRoom value) deleteRoom,
    required TResult Function(RoomEventCreateDevice value) createDevice,
    required TResult Function(RoomEventDeleteDevice value) deleteDevice,
  }) {
    return createDevice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomEventLoadBuildings value)? loadBuildings,
    TResult? Function(RoomEventLoadRooms value)? loadRooms,
    TResult? Function(RoomEventToLoaded value)? toLoaded,
    TResult? Function(RoomEventCreateRoom value)? createRoom,
    TResult? Function(RoomEventUpdateRoom value)? updateRoom,
    TResult? Function(RoomEventDeleteRoom value)? deleteRoom,
    TResult? Function(RoomEventCreateDevice value)? createDevice,
    TResult? Function(RoomEventDeleteDevice value)? deleteDevice,
  }) {
    return createDevice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomEventLoadBuildings value)? loadBuildings,
    TResult Function(RoomEventLoadRooms value)? loadRooms,
    TResult Function(RoomEventToLoaded value)? toLoaded,
    TResult Function(RoomEventCreateRoom value)? createRoom,
    TResult Function(RoomEventUpdateRoom value)? updateRoom,
    TResult Function(RoomEventDeleteRoom value)? deleteRoom,
    TResult Function(RoomEventCreateDevice value)? createDevice,
    TResult Function(RoomEventDeleteDevice value)? deleteDevice,
    required TResult orElse(),
  }) {
    if (createDevice != null) {
      return createDevice(this);
    }
    return orElse();
  }
}

abstract class RoomEventCreateDevice implements RoomEvent {
  const factory RoomEventCreateDevice(
      {required final List<RoomModel> rooms,
      required final RoomModel room}) = _$RoomEventCreateDeviceImpl;

  List<RoomModel> get rooms;
  RoomModel get room;

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomEventCreateDeviceImplCopyWith<_$RoomEventCreateDeviceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RoomEventDeleteDeviceImplCopyWith<$Res> {
  factory _$$RoomEventDeleteDeviceImplCopyWith(
          _$RoomEventDeleteDeviceImpl value,
          $Res Function(_$RoomEventDeleteDeviceImpl) then) =
      __$$RoomEventDeleteDeviceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RoomModel> rooms, RoomModel room});
}

/// @nodoc
class __$$RoomEventDeleteDeviceImplCopyWithImpl<$Res>
    extends _$RoomEventCopyWithImpl<$Res, _$RoomEventDeleteDeviceImpl>
    implements _$$RoomEventDeleteDeviceImplCopyWith<$Res> {
  __$$RoomEventDeleteDeviceImplCopyWithImpl(_$RoomEventDeleteDeviceImpl _value,
      $Res Function(_$RoomEventDeleteDeviceImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
    Object? room = null,
  }) {
    return _then(_$RoomEventDeleteDeviceImpl(
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as RoomModel,
    ));
  }
}

/// @nodoc

class _$RoomEventDeleteDeviceImpl implements RoomEventDeleteDevice {
  const _$RoomEventDeleteDeviceImpl(
      {required final List<RoomModel> rooms, required this.room})
      : _rooms = rooms;

  final List<RoomModel> _rooms;
  @override
  List<RoomModel> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  final RoomModel room;

  @override
  String toString() {
    return 'RoomEvent.deleteDevice(rooms: $rooms, room: $room)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomEventDeleteDeviceImpl &&
            const DeepCollectionEquality().equals(other._rooms, _rooms) &&
            (identical(other.room, room) || other.room == room));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_rooms), room);

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomEventDeleteDeviceImplCopyWith<_$RoomEventDeleteDeviceImpl>
      get copyWith => __$$RoomEventDeleteDeviceImplCopyWithImpl<
          _$RoomEventDeleteDeviceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBuildings,
    required TResult Function(int buildingId) loadRooms,
    required TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)
        toLoaded,
    required TResult Function(
            List<RoomModel> rooms, int buildingId, String number)
        createRoom,
    required TResult Function(
            List<RoomModel> rooms, int roomId, int buildingId, String number)
        updateRoom,
    required TResult Function(List<RoomModel> rooms, int roomId) deleteRoom,
    required TResult Function(List<RoomModel> rooms, RoomModel room)
        createDevice,
    required TResult Function(List<RoomModel> rooms, RoomModel room)
        deleteDevice,
  }) {
    return deleteDevice(rooms, room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadBuildings,
    TResult? Function(int buildingId)? loadRooms,
    TResult? Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        toLoaded,
    TResult? Function(List<RoomModel> rooms, int buildingId, String number)?
        createRoom,
    TResult? Function(
            List<RoomModel> rooms, int roomId, int buildingId, String number)?
        updateRoom,
    TResult? Function(List<RoomModel> rooms, int roomId)? deleteRoom,
    TResult? Function(List<RoomModel> rooms, RoomModel room)? createDevice,
    TResult? Function(List<RoomModel> rooms, RoomModel room)? deleteDevice,
  }) {
    return deleteDevice?.call(rooms, room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBuildings,
    TResult Function(int buildingId)? loadRooms,
    TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        toLoaded,
    TResult Function(List<RoomModel> rooms, int buildingId, String number)?
        createRoom,
    TResult Function(
            List<RoomModel> rooms, int roomId, int buildingId, String number)?
        updateRoom,
    TResult Function(List<RoomModel> rooms, int roomId)? deleteRoom,
    TResult Function(List<RoomModel> rooms, RoomModel room)? createDevice,
    TResult Function(List<RoomModel> rooms, RoomModel room)? deleteDevice,
    required TResult orElse(),
  }) {
    if (deleteDevice != null) {
      return deleteDevice(rooms, room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomEventLoadBuildings value) loadBuildings,
    required TResult Function(RoomEventLoadRooms value) loadRooms,
    required TResult Function(RoomEventToLoaded value) toLoaded,
    required TResult Function(RoomEventCreateRoom value) createRoom,
    required TResult Function(RoomEventUpdateRoom value) updateRoom,
    required TResult Function(RoomEventDeleteRoom value) deleteRoom,
    required TResult Function(RoomEventCreateDevice value) createDevice,
    required TResult Function(RoomEventDeleteDevice value) deleteDevice,
  }) {
    return deleteDevice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomEventLoadBuildings value)? loadBuildings,
    TResult? Function(RoomEventLoadRooms value)? loadRooms,
    TResult? Function(RoomEventToLoaded value)? toLoaded,
    TResult? Function(RoomEventCreateRoom value)? createRoom,
    TResult? Function(RoomEventUpdateRoom value)? updateRoom,
    TResult? Function(RoomEventDeleteRoom value)? deleteRoom,
    TResult? Function(RoomEventCreateDevice value)? createDevice,
    TResult? Function(RoomEventDeleteDevice value)? deleteDevice,
  }) {
    return deleteDevice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomEventLoadBuildings value)? loadBuildings,
    TResult Function(RoomEventLoadRooms value)? loadRooms,
    TResult Function(RoomEventToLoaded value)? toLoaded,
    TResult Function(RoomEventCreateRoom value)? createRoom,
    TResult Function(RoomEventUpdateRoom value)? updateRoom,
    TResult Function(RoomEventDeleteRoom value)? deleteRoom,
    TResult Function(RoomEventCreateDevice value)? createDevice,
    TResult Function(RoomEventDeleteDevice value)? deleteDevice,
    required TResult orElse(),
  }) {
    if (deleteDevice != null) {
      return deleteDevice(this);
    }
    return orElse();
  }
}

abstract class RoomEventDeleteDevice implements RoomEvent {
  const factory RoomEventDeleteDevice(
      {required final List<RoomModel> rooms,
      required final RoomModel room}) = _$RoomEventDeleteDeviceImpl;

  List<RoomModel> get rooms;
  RoomModel get room;

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomEventDeleteDeviceImplCopyWith<_$RoomEventDeleteDeviceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoomState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingBuildings,
    required TResult Function(List<BuildingModel> buildings) loadedBuildings,
    required TResult Function() loadingRooms,
    required TResult Function(List<RoomModel> rooms) loadedRooms,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingBuildings,
    TResult? Function(List<BuildingModel> buildings)? loadedBuildings,
    TResult? Function()? loadingRooms,
    TResult? Function(List<RoomModel> rooms)? loadedRooms,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingBuildings,
    TResult Function(List<BuildingModel> buildings)? loadedBuildings,
    TResult Function()? loadingRooms,
    TResult Function(List<RoomModel> rooms)? loadedRooms,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomStateLoadingBuildings value) loadingBuildings,
    required TResult Function(RoomStateLoadedBuildings value) loadedBuildings,
    required TResult Function(RoomStateLoadingRooms value) loadingRooms,
    required TResult Function(RoomStateLoadedRooms value) loadedRooms,
    required TResult Function(RoomStateError value) error,
    required TResult Function(RoomStateEndedSession value) endedSession,
    required TResult Function(RoomStateToLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomStateLoadingBuildings value)? loadingBuildings,
    TResult? Function(RoomStateLoadedBuildings value)? loadedBuildings,
    TResult? Function(RoomStateLoadingRooms value)? loadingRooms,
    TResult? Function(RoomStateLoadedRooms value)? loadedRooms,
    TResult? Function(RoomStateError value)? error,
    TResult? Function(RoomStateEndedSession value)? endedSession,
    TResult? Function(RoomStateToLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomStateLoadingBuildings value)? loadingBuildings,
    TResult Function(RoomStateLoadedBuildings value)? loadedBuildings,
    TResult Function(RoomStateLoadingRooms value)? loadingRooms,
    TResult Function(RoomStateLoadedRooms value)? loadedRooms,
    TResult Function(RoomStateError value)? error,
    TResult Function(RoomStateEndedSession value)? endedSession,
    TResult Function(RoomStateToLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomStateCopyWith<$Res> {
  factory $RoomStateCopyWith(RoomState value, $Res Function(RoomState) then) =
      _$RoomStateCopyWithImpl<$Res, RoomState>;
}

/// @nodoc
class _$RoomStateCopyWithImpl<$Res, $Val extends RoomState>
    implements $RoomStateCopyWith<$Res> {
  _$RoomStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RoomStateLoadingBuildingsImplCopyWith<$Res> {
  factory _$$RoomStateLoadingBuildingsImplCopyWith(
          _$RoomStateLoadingBuildingsImpl value,
          $Res Function(_$RoomStateLoadingBuildingsImpl) then) =
      __$$RoomStateLoadingBuildingsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoomStateLoadingBuildingsImplCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$RoomStateLoadingBuildingsImpl>
    implements _$$RoomStateLoadingBuildingsImplCopyWith<$Res> {
  __$$RoomStateLoadingBuildingsImplCopyWithImpl(
      _$RoomStateLoadingBuildingsImpl _value,
      $Res Function(_$RoomStateLoadingBuildingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RoomStateLoadingBuildingsImpl implements RoomStateLoadingBuildings {
  const _$RoomStateLoadingBuildingsImpl();

  @override
  String toString() {
    return 'RoomState.loadingBuildings()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomStateLoadingBuildingsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingBuildings,
    required TResult Function(List<BuildingModel> buildings) loadedBuildings,
    required TResult Function() loadingRooms,
    required TResult Function(List<RoomModel> rooms) loadedRooms,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)
        loaded,
  }) {
    return loadingBuildings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingBuildings,
    TResult? Function(List<BuildingModel> buildings)? loadedBuildings,
    TResult? Function()? loadingRooms,
    TResult? Function(List<RoomModel> rooms)? loadedRooms,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        loaded,
  }) {
    return loadingBuildings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingBuildings,
    TResult Function(List<BuildingModel> buildings)? loadedBuildings,
    TResult Function()? loadingRooms,
    TResult Function(List<RoomModel> rooms)? loadedRooms,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        loaded,
    required TResult orElse(),
  }) {
    if (loadingBuildings != null) {
      return loadingBuildings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomStateLoadingBuildings value) loadingBuildings,
    required TResult Function(RoomStateLoadedBuildings value) loadedBuildings,
    required TResult Function(RoomStateLoadingRooms value) loadingRooms,
    required TResult Function(RoomStateLoadedRooms value) loadedRooms,
    required TResult Function(RoomStateError value) error,
    required TResult Function(RoomStateEndedSession value) endedSession,
    required TResult Function(RoomStateToLoaded value) loaded,
  }) {
    return loadingBuildings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomStateLoadingBuildings value)? loadingBuildings,
    TResult? Function(RoomStateLoadedBuildings value)? loadedBuildings,
    TResult? Function(RoomStateLoadingRooms value)? loadingRooms,
    TResult? Function(RoomStateLoadedRooms value)? loadedRooms,
    TResult? Function(RoomStateError value)? error,
    TResult? Function(RoomStateEndedSession value)? endedSession,
    TResult? Function(RoomStateToLoaded value)? loaded,
  }) {
    return loadingBuildings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomStateLoadingBuildings value)? loadingBuildings,
    TResult Function(RoomStateLoadedBuildings value)? loadedBuildings,
    TResult Function(RoomStateLoadingRooms value)? loadingRooms,
    TResult Function(RoomStateLoadedRooms value)? loadedRooms,
    TResult Function(RoomStateError value)? error,
    TResult Function(RoomStateEndedSession value)? endedSession,
    TResult Function(RoomStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadingBuildings != null) {
      return loadingBuildings(this);
    }
    return orElse();
  }
}

abstract class RoomStateLoadingBuildings implements RoomState {
  const factory RoomStateLoadingBuildings() = _$RoomStateLoadingBuildingsImpl;
}

/// @nodoc
abstract class _$$RoomStateLoadedBuildingsImplCopyWith<$Res> {
  factory _$$RoomStateLoadedBuildingsImplCopyWith(
          _$RoomStateLoadedBuildingsImpl value,
          $Res Function(_$RoomStateLoadedBuildingsImpl) then) =
      __$$RoomStateLoadedBuildingsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BuildingModel> buildings});
}

/// @nodoc
class __$$RoomStateLoadedBuildingsImplCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$RoomStateLoadedBuildingsImpl>
    implements _$$RoomStateLoadedBuildingsImplCopyWith<$Res> {
  __$$RoomStateLoadedBuildingsImplCopyWithImpl(
      _$RoomStateLoadedBuildingsImpl _value,
      $Res Function(_$RoomStateLoadedBuildingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildings = null,
  }) {
    return _then(_$RoomStateLoadedBuildingsImpl(
      buildings: null == buildings
          ? _value._buildings
          : buildings // ignore: cast_nullable_to_non_nullable
              as List<BuildingModel>,
    ));
  }
}

/// @nodoc

class _$RoomStateLoadedBuildingsImpl implements RoomStateLoadedBuildings {
  const _$RoomStateLoadedBuildingsImpl(
      {required final List<BuildingModel> buildings})
      : _buildings = buildings;

  final List<BuildingModel> _buildings;
  @override
  List<BuildingModel> get buildings {
    if (_buildings is EqualUnmodifiableListView) return _buildings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_buildings);
  }

  @override
  String toString() {
    return 'RoomState.loadedBuildings(buildings: $buildings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomStateLoadedBuildingsImpl &&
            const DeepCollectionEquality()
                .equals(other._buildings, _buildings));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_buildings));

  /// Create a copy of RoomState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomStateLoadedBuildingsImplCopyWith<_$RoomStateLoadedBuildingsImpl>
      get copyWith => __$$RoomStateLoadedBuildingsImplCopyWithImpl<
          _$RoomStateLoadedBuildingsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingBuildings,
    required TResult Function(List<BuildingModel> buildings) loadedBuildings,
    required TResult Function() loadingRooms,
    required TResult Function(List<RoomModel> rooms) loadedRooms,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)
        loaded,
  }) {
    return loadedBuildings(buildings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingBuildings,
    TResult? Function(List<BuildingModel> buildings)? loadedBuildings,
    TResult? Function()? loadingRooms,
    TResult? Function(List<RoomModel> rooms)? loadedRooms,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        loaded,
  }) {
    return loadedBuildings?.call(buildings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingBuildings,
    TResult Function(List<BuildingModel> buildings)? loadedBuildings,
    TResult Function()? loadingRooms,
    TResult Function(List<RoomModel> rooms)? loadedRooms,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        loaded,
    required TResult orElse(),
  }) {
    if (loadedBuildings != null) {
      return loadedBuildings(buildings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomStateLoadingBuildings value) loadingBuildings,
    required TResult Function(RoomStateLoadedBuildings value) loadedBuildings,
    required TResult Function(RoomStateLoadingRooms value) loadingRooms,
    required TResult Function(RoomStateLoadedRooms value) loadedRooms,
    required TResult Function(RoomStateError value) error,
    required TResult Function(RoomStateEndedSession value) endedSession,
    required TResult Function(RoomStateToLoaded value) loaded,
  }) {
    return loadedBuildings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomStateLoadingBuildings value)? loadingBuildings,
    TResult? Function(RoomStateLoadedBuildings value)? loadedBuildings,
    TResult? Function(RoomStateLoadingRooms value)? loadingRooms,
    TResult? Function(RoomStateLoadedRooms value)? loadedRooms,
    TResult? Function(RoomStateError value)? error,
    TResult? Function(RoomStateEndedSession value)? endedSession,
    TResult? Function(RoomStateToLoaded value)? loaded,
  }) {
    return loadedBuildings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomStateLoadingBuildings value)? loadingBuildings,
    TResult Function(RoomStateLoadedBuildings value)? loadedBuildings,
    TResult Function(RoomStateLoadingRooms value)? loadingRooms,
    TResult Function(RoomStateLoadedRooms value)? loadedRooms,
    TResult Function(RoomStateError value)? error,
    TResult Function(RoomStateEndedSession value)? endedSession,
    TResult Function(RoomStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadedBuildings != null) {
      return loadedBuildings(this);
    }
    return orElse();
  }
}

abstract class RoomStateLoadedBuildings implements RoomState {
  const factory RoomStateLoadedBuildings(
          {required final List<BuildingModel> buildings}) =
      _$RoomStateLoadedBuildingsImpl;

  List<BuildingModel> get buildings;

  /// Create a copy of RoomState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomStateLoadedBuildingsImplCopyWith<_$RoomStateLoadedBuildingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RoomStateLoadingRoomsImplCopyWith<$Res> {
  factory _$$RoomStateLoadingRoomsImplCopyWith(
          _$RoomStateLoadingRoomsImpl value,
          $Res Function(_$RoomStateLoadingRoomsImpl) then) =
      __$$RoomStateLoadingRoomsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoomStateLoadingRoomsImplCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$RoomStateLoadingRoomsImpl>
    implements _$$RoomStateLoadingRoomsImplCopyWith<$Res> {
  __$$RoomStateLoadingRoomsImplCopyWithImpl(_$RoomStateLoadingRoomsImpl _value,
      $Res Function(_$RoomStateLoadingRoomsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RoomStateLoadingRoomsImpl implements RoomStateLoadingRooms {
  const _$RoomStateLoadingRoomsImpl();

  @override
  String toString() {
    return 'RoomState.loadingRooms()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomStateLoadingRoomsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingBuildings,
    required TResult Function(List<BuildingModel> buildings) loadedBuildings,
    required TResult Function() loadingRooms,
    required TResult Function(List<RoomModel> rooms) loadedRooms,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)
        loaded,
  }) {
    return loadingRooms();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingBuildings,
    TResult? Function(List<BuildingModel> buildings)? loadedBuildings,
    TResult? Function()? loadingRooms,
    TResult? Function(List<RoomModel> rooms)? loadedRooms,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        loaded,
  }) {
    return loadingRooms?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingBuildings,
    TResult Function(List<BuildingModel> buildings)? loadedBuildings,
    TResult Function()? loadingRooms,
    TResult Function(List<RoomModel> rooms)? loadedRooms,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
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
    required TResult Function(RoomStateLoadingBuildings value) loadingBuildings,
    required TResult Function(RoomStateLoadedBuildings value) loadedBuildings,
    required TResult Function(RoomStateLoadingRooms value) loadingRooms,
    required TResult Function(RoomStateLoadedRooms value) loadedRooms,
    required TResult Function(RoomStateError value) error,
    required TResult Function(RoomStateEndedSession value) endedSession,
    required TResult Function(RoomStateToLoaded value) loaded,
  }) {
    return loadingRooms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomStateLoadingBuildings value)? loadingBuildings,
    TResult? Function(RoomStateLoadedBuildings value)? loadedBuildings,
    TResult? Function(RoomStateLoadingRooms value)? loadingRooms,
    TResult? Function(RoomStateLoadedRooms value)? loadedRooms,
    TResult? Function(RoomStateError value)? error,
    TResult? Function(RoomStateEndedSession value)? endedSession,
    TResult? Function(RoomStateToLoaded value)? loaded,
  }) {
    return loadingRooms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomStateLoadingBuildings value)? loadingBuildings,
    TResult Function(RoomStateLoadedBuildings value)? loadedBuildings,
    TResult Function(RoomStateLoadingRooms value)? loadingRooms,
    TResult Function(RoomStateLoadedRooms value)? loadedRooms,
    TResult Function(RoomStateError value)? error,
    TResult Function(RoomStateEndedSession value)? endedSession,
    TResult Function(RoomStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadingRooms != null) {
      return loadingRooms(this);
    }
    return orElse();
  }
}

abstract class RoomStateLoadingRooms implements RoomState {
  const factory RoomStateLoadingRooms() = _$RoomStateLoadingRoomsImpl;
}

/// @nodoc
abstract class _$$RoomStateLoadedRoomsImplCopyWith<$Res> {
  factory _$$RoomStateLoadedRoomsImplCopyWith(_$RoomStateLoadedRoomsImpl value,
          $Res Function(_$RoomStateLoadedRoomsImpl) then) =
      __$$RoomStateLoadedRoomsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RoomModel> rooms});
}

/// @nodoc
class __$$RoomStateLoadedRoomsImplCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$RoomStateLoadedRoomsImpl>
    implements _$$RoomStateLoadedRoomsImplCopyWith<$Res> {
  __$$RoomStateLoadedRoomsImplCopyWithImpl(_$RoomStateLoadedRoomsImpl _value,
      $Res Function(_$RoomStateLoadedRoomsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_$RoomStateLoadedRoomsImpl(
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>,
    ));
  }
}

/// @nodoc

class _$RoomStateLoadedRoomsImpl implements RoomStateLoadedRooms {
  const _$RoomStateLoadedRoomsImpl({required final List<RoomModel> rooms})
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
    return 'RoomState.loadedRooms(rooms: $rooms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomStateLoadedRoomsImpl &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rooms));

  /// Create a copy of RoomState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomStateLoadedRoomsImplCopyWith<_$RoomStateLoadedRoomsImpl>
      get copyWith =>
          __$$RoomStateLoadedRoomsImplCopyWithImpl<_$RoomStateLoadedRoomsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingBuildings,
    required TResult Function(List<BuildingModel> buildings) loadedBuildings,
    required TResult Function() loadingRooms,
    required TResult Function(List<RoomModel> rooms) loadedRooms,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)
        loaded,
  }) {
    return loadedRooms(rooms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingBuildings,
    TResult? Function(List<BuildingModel> buildings)? loadedBuildings,
    TResult? Function()? loadingRooms,
    TResult? Function(List<RoomModel> rooms)? loadedRooms,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        loaded,
  }) {
    return loadedRooms?.call(rooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingBuildings,
    TResult Function(List<BuildingModel> buildings)? loadedBuildings,
    TResult Function()? loadingRooms,
    TResult Function(List<RoomModel> rooms)? loadedRooms,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
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
    required TResult Function(RoomStateLoadingBuildings value) loadingBuildings,
    required TResult Function(RoomStateLoadedBuildings value) loadedBuildings,
    required TResult Function(RoomStateLoadingRooms value) loadingRooms,
    required TResult Function(RoomStateLoadedRooms value) loadedRooms,
    required TResult Function(RoomStateError value) error,
    required TResult Function(RoomStateEndedSession value) endedSession,
    required TResult Function(RoomStateToLoaded value) loaded,
  }) {
    return loadedRooms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomStateLoadingBuildings value)? loadingBuildings,
    TResult? Function(RoomStateLoadedBuildings value)? loadedBuildings,
    TResult? Function(RoomStateLoadingRooms value)? loadingRooms,
    TResult? Function(RoomStateLoadedRooms value)? loadedRooms,
    TResult? Function(RoomStateError value)? error,
    TResult? Function(RoomStateEndedSession value)? endedSession,
    TResult? Function(RoomStateToLoaded value)? loaded,
  }) {
    return loadedRooms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomStateLoadingBuildings value)? loadingBuildings,
    TResult Function(RoomStateLoadedBuildings value)? loadedBuildings,
    TResult Function(RoomStateLoadingRooms value)? loadingRooms,
    TResult Function(RoomStateLoadedRooms value)? loadedRooms,
    TResult Function(RoomStateError value)? error,
    TResult Function(RoomStateEndedSession value)? endedSession,
    TResult Function(RoomStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadedRooms != null) {
      return loadedRooms(this);
    }
    return orElse();
  }
}

abstract class RoomStateLoadedRooms implements RoomState {
  const factory RoomStateLoadedRooms({required final List<RoomModel> rooms}) =
      _$RoomStateLoadedRoomsImpl;

  List<RoomModel> get rooms;

  /// Create a copy of RoomState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomStateLoadedRoomsImplCopyWith<_$RoomStateLoadedRoomsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RoomStateErrorImplCopyWith<$Res> {
  factory _$$RoomStateErrorImplCopyWith(_$RoomStateErrorImpl value,
          $Res Function(_$RoomStateErrorImpl) then) =
      __$$RoomStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$RoomStateErrorImplCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$RoomStateErrorImpl>
    implements _$$RoomStateErrorImplCopyWith<$Res> {
  __$$RoomStateErrorImplCopyWithImpl(
      _$RoomStateErrorImpl _value, $Res Function(_$RoomStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$RoomStateErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RoomStateErrorImpl implements RoomStateError {
  const _$RoomStateErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'RoomState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of RoomState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomStateErrorImplCopyWith<_$RoomStateErrorImpl> get copyWith =>
      __$$RoomStateErrorImplCopyWithImpl<_$RoomStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingBuildings,
    required TResult Function(List<BuildingModel> buildings) loadedBuildings,
    required TResult Function() loadingRooms,
    required TResult Function(List<RoomModel> rooms) loadedRooms,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)
        loaded,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingBuildings,
    TResult? Function(List<BuildingModel> buildings)? loadedBuildings,
    TResult? Function()? loadingRooms,
    TResult? Function(List<RoomModel> rooms)? loadedRooms,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        loaded,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingBuildings,
    TResult Function(List<BuildingModel> buildings)? loadedBuildings,
    TResult Function()? loadingRooms,
    TResult Function(List<RoomModel> rooms)? loadedRooms,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
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
    required TResult Function(RoomStateLoadingBuildings value) loadingBuildings,
    required TResult Function(RoomStateLoadedBuildings value) loadedBuildings,
    required TResult Function(RoomStateLoadingRooms value) loadingRooms,
    required TResult Function(RoomStateLoadedRooms value) loadedRooms,
    required TResult Function(RoomStateError value) error,
    required TResult Function(RoomStateEndedSession value) endedSession,
    required TResult Function(RoomStateToLoaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomStateLoadingBuildings value)? loadingBuildings,
    TResult? Function(RoomStateLoadedBuildings value)? loadedBuildings,
    TResult? Function(RoomStateLoadingRooms value)? loadingRooms,
    TResult? Function(RoomStateLoadedRooms value)? loadedRooms,
    TResult? Function(RoomStateError value)? error,
    TResult? Function(RoomStateEndedSession value)? endedSession,
    TResult? Function(RoomStateToLoaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomStateLoadingBuildings value)? loadingBuildings,
    TResult Function(RoomStateLoadedBuildings value)? loadedBuildings,
    TResult Function(RoomStateLoadingRooms value)? loadingRooms,
    TResult Function(RoomStateLoadedRooms value)? loadedRooms,
    TResult Function(RoomStateError value)? error,
    TResult Function(RoomStateEndedSession value)? endedSession,
    TResult Function(RoomStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RoomStateError implements RoomState {
  const factory RoomStateError({required final String error}) =
      _$RoomStateErrorImpl;

  String get error;

  /// Create a copy of RoomState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomStateErrorImplCopyWith<_$RoomStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RoomStateEndedSessionImplCopyWith<$Res> {
  factory _$$RoomStateEndedSessionImplCopyWith(
          _$RoomStateEndedSessionImpl value,
          $Res Function(_$RoomStateEndedSessionImpl) then) =
      __$$RoomStateEndedSessionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoomStateEndedSessionImplCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$RoomStateEndedSessionImpl>
    implements _$$RoomStateEndedSessionImplCopyWith<$Res> {
  __$$RoomStateEndedSessionImplCopyWithImpl(_$RoomStateEndedSessionImpl _value,
      $Res Function(_$RoomStateEndedSessionImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RoomStateEndedSessionImpl implements RoomStateEndedSession {
  const _$RoomStateEndedSessionImpl();

  @override
  String toString() {
    return 'RoomState.endedSession()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomStateEndedSessionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingBuildings,
    required TResult Function(List<BuildingModel> buildings) loadedBuildings,
    required TResult Function() loadingRooms,
    required TResult Function(List<RoomModel> rooms) loadedRooms,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)
        loaded,
  }) {
    return endedSession();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingBuildings,
    TResult? Function(List<BuildingModel> buildings)? loadedBuildings,
    TResult? Function()? loadingRooms,
    TResult? Function(List<RoomModel> rooms)? loadedRooms,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        loaded,
  }) {
    return endedSession?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingBuildings,
    TResult Function(List<BuildingModel> buildings)? loadedBuildings,
    TResult Function()? loadingRooms,
    TResult Function(List<RoomModel> rooms)? loadedRooms,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
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
    required TResult Function(RoomStateLoadingBuildings value) loadingBuildings,
    required TResult Function(RoomStateLoadedBuildings value) loadedBuildings,
    required TResult Function(RoomStateLoadingRooms value) loadingRooms,
    required TResult Function(RoomStateLoadedRooms value) loadedRooms,
    required TResult Function(RoomStateError value) error,
    required TResult Function(RoomStateEndedSession value) endedSession,
    required TResult Function(RoomStateToLoaded value) loaded,
  }) {
    return endedSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomStateLoadingBuildings value)? loadingBuildings,
    TResult? Function(RoomStateLoadedBuildings value)? loadedBuildings,
    TResult? Function(RoomStateLoadingRooms value)? loadingRooms,
    TResult? Function(RoomStateLoadedRooms value)? loadedRooms,
    TResult? Function(RoomStateError value)? error,
    TResult? Function(RoomStateEndedSession value)? endedSession,
    TResult? Function(RoomStateToLoaded value)? loaded,
  }) {
    return endedSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomStateLoadingBuildings value)? loadingBuildings,
    TResult Function(RoomStateLoadedBuildings value)? loadedBuildings,
    TResult Function(RoomStateLoadingRooms value)? loadingRooms,
    TResult Function(RoomStateLoadedRooms value)? loadedRooms,
    TResult Function(RoomStateError value)? error,
    TResult Function(RoomStateEndedSession value)? endedSession,
    TResult Function(RoomStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (endedSession != null) {
      return endedSession(this);
    }
    return orElse();
  }
}

abstract class RoomStateEndedSession implements RoomState {
  const factory RoomStateEndedSession() = _$RoomStateEndedSessionImpl;
}

/// @nodoc
abstract class _$$RoomStateToLoadedImplCopyWith<$Res> {
  factory _$$RoomStateToLoadedImplCopyWith(_$RoomStateToLoadedImpl value,
          $Res Function(_$RoomStateToLoadedImpl) then) =
      __$$RoomStateToLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<BuildingModel> buildings,
      BuildingModel? selectedBuilding,
      List<RoomModel> rooms});
}

/// @nodoc
class __$$RoomStateToLoadedImplCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$RoomStateToLoadedImpl>
    implements _$$RoomStateToLoadedImplCopyWith<$Res> {
  __$$RoomStateToLoadedImplCopyWithImpl(_$RoomStateToLoadedImpl _value,
      $Res Function(_$RoomStateToLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildings = null,
    Object? selectedBuilding = freezed,
    Object? rooms = null,
  }) {
    return _then(_$RoomStateToLoadedImpl(
      buildings: null == buildings
          ? _value._buildings
          : buildings // ignore: cast_nullable_to_non_nullable
              as List<BuildingModel>,
      selectedBuilding: freezed == selectedBuilding
          ? _value.selectedBuilding
          : selectedBuilding // ignore: cast_nullable_to_non_nullable
              as BuildingModel?,
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>,
    ));
  }
}

/// @nodoc

class _$RoomStateToLoadedImpl implements RoomStateToLoaded {
  const _$RoomStateToLoadedImpl(
      {required final List<BuildingModel> buildings,
      required this.selectedBuilding,
      required final List<RoomModel> rooms})
      : _buildings = buildings,
        _rooms = rooms;

  final List<BuildingModel> _buildings;
  @override
  List<BuildingModel> get buildings {
    if (_buildings is EqualUnmodifiableListView) return _buildings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_buildings);
  }

  @override
  final BuildingModel? selectedBuilding;
  final List<RoomModel> _rooms;
  @override
  List<RoomModel> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  String toString() {
    return 'RoomState.loaded(buildings: $buildings, selectedBuilding: $selectedBuilding, rooms: $rooms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomStateToLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._buildings, _buildings) &&
            (identical(other.selectedBuilding, selectedBuilding) ||
                other.selectedBuilding == selectedBuilding) &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_buildings),
      selectedBuilding,
      const DeepCollectionEquality().hash(_rooms));

  /// Create a copy of RoomState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomStateToLoadedImplCopyWith<_$RoomStateToLoadedImpl> get copyWith =>
      __$$RoomStateToLoadedImplCopyWithImpl<_$RoomStateToLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingBuildings,
    required TResult Function(List<BuildingModel> buildings) loadedBuildings,
    required TResult Function() loadingRooms,
    required TResult Function(List<RoomModel> rooms) loadedRooms,
    required TResult Function(String error) error,
    required TResult Function() endedSession,
    required TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)
        loaded,
  }) {
    return loaded(buildings, selectedBuilding, rooms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingBuildings,
    TResult? Function(List<BuildingModel> buildings)? loadedBuildings,
    TResult? Function()? loadingRooms,
    TResult? Function(List<RoomModel> rooms)? loadedRooms,
    TResult? Function(String error)? error,
    TResult? Function()? endedSession,
    TResult? Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        loaded,
  }) {
    return loaded?.call(buildings, selectedBuilding, rooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingBuildings,
    TResult Function(List<BuildingModel> buildings)? loadedBuildings,
    TResult Function()? loadingRooms,
    TResult Function(List<RoomModel> rooms)? loadedRooms,
    TResult Function(String error)? error,
    TResult Function()? endedSession,
    TResult Function(List<BuildingModel> buildings,
            BuildingModel? selectedBuilding, List<RoomModel> rooms)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(buildings, selectedBuilding, rooms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomStateLoadingBuildings value) loadingBuildings,
    required TResult Function(RoomStateLoadedBuildings value) loadedBuildings,
    required TResult Function(RoomStateLoadingRooms value) loadingRooms,
    required TResult Function(RoomStateLoadedRooms value) loadedRooms,
    required TResult Function(RoomStateError value) error,
    required TResult Function(RoomStateEndedSession value) endedSession,
    required TResult Function(RoomStateToLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomStateLoadingBuildings value)? loadingBuildings,
    TResult? Function(RoomStateLoadedBuildings value)? loadedBuildings,
    TResult? Function(RoomStateLoadingRooms value)? loadingRooms,
    TResult? Function(RoomStateLoadedRooms value)? loadedRooms,
    TResult? Function(RoomStateError value)? error,
    TResult? Function(RoomStateEndedSession value)? endedSession,
    TResult? Function(RoomStateToLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomStateLoadingBuildings value)? loadingBuildings,
    TResult Function(RoomStateLoadedBuildings value)? loadedBuildings,
    TResult Function(RoomStateLoadingRooms value)? loadingRooms,
    TResult Function(RoomStateLoadedRooms value)? loadedRooms,
    TResult Function(RoomStateError value)? error,
    TResult Function(RoomStateEndedSession value)? endedSession,
    TResult Function(RoomStateToLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class RoomStateToLoaded implements RoomState {
  const factory RoomStateToLoaded(
      {required final List<BuildingModel> buildings,
      required final BuildingModel? selectedBuilding,
      required final List<RoomModel> rooms}) = _$RoomStateToLoadedImpl;

  List<BuildingModel> get buildings;
  BuildingModel? get selectedBuilding;
  List<RoomModel> get rooms;

  /// Create a copy of RoomState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomStateToLoadedImplCopyWith<_$RoomStateToLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
