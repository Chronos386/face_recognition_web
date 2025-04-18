// presentation/bloc/building_bloc/building_bloc.dart
import '/utils/result.dart';
import '/utils/logging.dart';
import '/utils/clearer.dart';
import '/utils/error_codes.dart';
import 'package:get_it/get_it.dart';
import '../../models/building_model.dart';
import '/res/generated/locale_keys.g.dart';
import '/domain/models/building_domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/domain/interactors/app_interactor.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'building_bloc.freezed.dart';
part 'building_event.dart';
part 'building_state.dart';

class BuildingBloc extends Bloc<BuildingEvent, BuildingState> {
  final appInteractor = AppInteractor();
  final clearer = GetIt.instance<Clearer>();

  BuildingBloc() : super(const BuildingState.loaded(buildings: [])) {
    on<BuildingEventLoadBuildings>((event, emit) async {
      emit(const BuildingState.loading());
      await loadDataFromInteractor(
        funcName: "loadBuildings",
        loader: () => appInteractor.loadBuildings(),
        emitEndSession: () => emit(BuildingState.endedSession()),
        emitError: (error) => emit(BuildingState.error(error: error)),
        updateData: (newData) {
          if (newData is List<BuildingDomain>) {
            List<BuildingModel> list = [];
            for (var item in newData) {
              list.add(BuildingModel.fromDomain(item));
            }
            emit(BuildingState.loaded(buildings: list));
          }
        },
      );
    });

    on<BuildingEventCreateBuilding>((event, emit) async {
      emit(const BuildingState.loading());
      await loadDataFromInteractor(
        funcName: "createBuilding",
        loader: () {
          List<BuildingDomain> list = [];
          for (var item in event.buildings) {
            list.add(item.toDomain());
          }
          return appInteractor.createBuilding(
            list, event.name, event.address,
          );
        },
        emitEndSession: () => emit(BuildingState.endedSession()),
        emitError: (error) => emit(BuildingState.error(error: error)),
        updateData: (newData) {
          if (newData is List<BuildingDomain>) {
            List<BuildingModel> list = [];
            for (var item in newData) {
              list.add(BuildingModel.fromDomain(item));
            }
            emit(BuildingState.loaded(buildings: list));
          }
        },
      );
    });

    on<BuildingEventUpdateBuilding>((event, emit) async {
      emit(const BuildingState.loading());
      await loadDataFromInteractor(
        funcName: "updateBuilding",
        loader: () {
          List<BuildingDomain> list = [];
          for (var item in event.buildings) {
            list.add(item.toDomain());
          }
          return appInteractor.updateBuilding(list, event.id, event.name,
              event.address);
        },
        emitEndSession: () => emit(BuildingState.endedSession()),
        emitError: (error) => emit(BuildingState.error(error: error)),
        updateData: (newData) {
          if (newData is List<BuildingDomain>) {
            List<BuildingModel> list = [];
            for (var item in newData) {
              list.add(BuildingModel.fromDomain(item));
            }
            emit(BuildingState.loaded(buildings: list));
          }
        },
      );
    });

    on<BuildingEventDeleteBuilding>((event, emit) async {
      emit(const BuildingState.loading());
      await loadDataFromInteractor(
        funcName: "deleteBuilding",
        loader: () {
          List<BuildingDomain> list = [];
          for (var item in event.buildings) {
            list.add(item.toDomain());
          }
          return appInteractor.deleteBuilding(list, event.id);
        },
        emitEndSession: () => emit(BuildingState.endedSession()),
        emitError: (error) => emit(BuildingState.error(error: error)),
        updateData: (newData) {
          if (newData is List<BuildingDomain>) {
            List<BuildingModel> list = [];
            for (var item in newData) {
              list.add(BuildingModel.fromDomain(item));
            }
            emit(BuildingState.loaded(buildings: list));
          }
        },
      );
    });

    on<BuildingEventToLoaded>((event, emit) {
      emit(BuildingState.loaded(buildings: event.buildings));
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
        success: (newData) {
          updateData(newData);
        },
        error: (code) {
          final error = getErrorByCode(code);
          if (error == null) {
            clearer.clearApp();
            emitEndSession();
          } else {
            emitError(error);
          }
          ErrorLogger().logErrorWithName(
            "BuildingBloc Error ($funcName)",
            error ?? "close shift",
          );
        },
      );
    } catch (e) {
      ErrorLogger().logFlutterErrorWithName(
        "BuildingBloc Error ($funcName)", e,
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