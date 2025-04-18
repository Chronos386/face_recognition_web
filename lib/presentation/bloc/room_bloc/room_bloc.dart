// presentation/bloc/room_bloc/room_bloc.dart
import '/utils/result.dart';
import '/utils/logging.dart';
import '/utils/clearer.dart';
import '/utils/error_codes.dart';
import 'package:get_it/get_it.dart';
import '../../models/room_model.dart';
import '/domain/models/room_domain.dart';
import '../../models/building_model.dart';
import '/res/generated/locale_keys.g.dart';
import '/domain/models/building_domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/domain/interactors/app_interactor.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_bloc.freezed.dart';
part 'room_event.dart';
part 'room_state.dart';

class RoomBloc extends Bloc<RoomEvent, RoomState> {
  final appInteractor = AppInteractor();
  final clearer = GetIt.instance<Clearer>();

  RoomBloc() : super(const RoomState.loadingBuildings()) {
    on<RoomEventLoadBuildings>((event, emit) async {
      emit(const RoomState.loadingBuildings());
      await loadDataFromInteractor(
        funcName: "loadBuildings",
        loader: () => appInteractor.loadBuildings(),
        emitEndSession: () => emit(RoomState.endedSession()),
        emitError: (error) => emit(RoomState.error(error: error)),
        updateData: (newData) {
          if (newData is List<BuildingDomain>) {
            final buildings = newData.map(BuildingModel.fromDomain).toList();
            emit(RoomState.loadedBuildings(buildings: buildings));
          }
        },
      );
    });

    on<RoomEventLoadRooms>((event, emit) async {
      emit(const RoomState.loadingRooms());
      await loadDataFromInteractor(
        funcName: "loadRooms",
        loader: () => appInteractor.getRooms(event.buildingId),
        emitEndSession: () => emit(RoomState.endedSession()),
        emitError: (error) => emit(RoomState.error(error: error)),
        updateData: (newData) {
          if (newData is List<RoomDomain>) {
            final rooms = newData.map(RoomModel.fromDomain).toList();
            emit(RoomState.loadedRooms(rooms: rooms));
          }
        },
      );
    });

    on<RoomEventCreateRoom>((event, emit) async {
      emit(const RoomState.loadingRooms());
      await loadDataFromInteractor(
        funcName: "createRoom",
        loader: () => appInteractor.createRoom(
          event.rooms.map((e) => e.toDomain()).toList(),
          event.buildingId,
          event.number,
        ),
        emitEndSession: () => emit(RoomState.endedSession()),
        emitError: (error) => emit(RoomState.error(error: error)),
        updateData: (newData) {
          if (newData is List<RoomDomain>) {
            emit(RoomState.loadedRooms(
              rooms: newData.map(RoomModel.fromDomain).toList(),
            ));
          }
        },
      );
    });

    on<RoomEventUpdateRoom>((event, emit) async {
      emit(const RoomState.loadingRooms());
      await loadDataFromInteractor(
        funcName: "updateRoom",
        loader: () => appInteractor.updateRoom(
          event.rooms.map((e) => e.toDomain()).toList(),
          event.roomId,
          event.buildingId,
          event.number,
        ),
        emitEndSession: () => emit(RoomState.endedSession()),
        emitError: (error) => emit(RoomState.error(error: error)),
        updateData: (newData) {
          if (newData is List<RoomDomain>) {
            emit(RoomState.loadedRooms(
              rooms: newData.map(RoomModel.fromDomain).toList(),
            ));
          }
        },
      );
    });

    on<RoomEventDeleteRoom>((event, emit) async {
      emit(const RoomState.loadingRooms());
      await loadDataFromInteractor(
        funcName: "deleteRoom",
        loader: () => appInteractor.deleteRoom(
          event.rooms.map((e) => e.toDomain()).toList(),
          event.roomId,
        ),
        emitEndSession: () => emit(RoomState.endedSession()),
        emitError: (error) => emit(RoomState.error(error: error)),
        updateData: (newData) {
          if (newData is List<RoomDomain>) {
            emit(RoomState.loadedRooms(
              rooms: newData.map(RoomModel.fromDomain).toList(),
            ));
          }
        },
      );
    });

    on<RoomEventCreateDevice>((event, emit) async {
      emit(const RoomState.loadingRooms());
      await loadDataFromInteractor(
        funcName: "createDevice",
        loader: () => appInteractor.createDevice(
          event.rooms.map((e) => e.toDomain()).toList(),
          event.room.toDomain(),
        ),
        emitEndSession: () => emit(RoomState.endedSession()),
        emitError: (error) => emit(RoomState.error(error: error)),
        updateData: (newData) {
          if (newData is List<RoomDomain>) {
            emit(RoomState.loadedRooms(
              rooms: newData.map(RoomModel.fromDomain).toList(),
            ));
          }
        },
      );
    });

    on<RoomEventDeleteDevice>((event, emit) async {
      emit(const RoomState.loadingRooms());
      await loadDataFromInteractor(
        funcName: "deleteDevice",
        loader: () => appInteractor.deleteDevice(
          event.rooms.map((e) => e.toDomain()).toList(),
          event.room.toDomain(),
        ),
        emitEndSession: () => emit(RoomState.endedSession()),
        emitError: (error) => emit(RoomState.error(error: error)),
        updateData: (newData) {
          if (newData is List<RoomDomain>) {
            emit(RoomState.loadedRooms(
              rooms: newData.map(RoomModel.fromDomain).toList(),
            ));
          }
        },
      );
    });

    on<RoomEventToLoaded>((event, emit) {
      emit(RoomState.loaded(
        buildings: event.buildings,
        selectedBuilding: event.selectedBuilding,
        rooms: event.rooms,
      ));
    });
  }

  Future<void> loadDataFromInteractor({
    required String funcName,
    required Future<Result<dynamic>> Function() loader,
    required void Function() emitEndSession,
    required void Function(String) emitError,
    required void Function(dynamic) updateData,
  }) async {
    try {
      final result = await loader();
      result.when(
        success: (newData) => updateData(newData),
        error: (code) {
          final error = getErrorByCode(code);
          if (error == null) {
            clearer.clearApp();
            emitEndSession();
          } else {
            emitError(error);
          }
          ErrorLogger().logErrorWithName(
            "RoomBloc Error ($funcName)",
            error ?? "close shift",
          );
        },
      );
    } catch (e) {
      ErrorLogger().logFlutterErrorWithName(
        "RoomBloc Error ($funcName)", e,
      );
      emitError(e.toString());
    }
  }

  String? getErrorByCode(int code) {
    switch (code) {
      case ErrorCodes.NO_INTERNET:
        return LocaleKeys.check_internet_connection.tr();
      case ErrorCodes.SESSION_IS_CLOSED:
        return null;
      default:
        return LocaleKeys.error_load_data.tr();
    }
  }
}