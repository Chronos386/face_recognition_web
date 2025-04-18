// presentation/bloc/group_bloc/group_bloc.dart
import '/utils/result.dart';
import '/utils/logging.dart';
import '/utils/clearer.dart';
import '/utils/error_codes.dart';
import 'package:get_it/get_it.dart';
import '../../models/group_model.dart';
import '/domain/models/group_domain.dart';
import '../../models/institute_model.dart';
import '/res/generated/locale_keys.g.dart';
import '/domain/models/institute_domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/domain/interactors/app_interactor.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_bloc.freezed.dart';
part 'group_event.dart';
part 'group_state.dart';

class GroupBloc extends Bloc<GroupEvent, GroupState> {
  final appInteractor = AppInteractor();
  final clearer = GetIt.instance<Clearer>();

  GroupBloc() : super(const GroupState.loadingInstitutes()) {
    on<GroupEventLoadInstitutes>((event, emit) async {
      emit(const GroupState.loadingInstitutes());
      await loadDataFromInteractor(
        funcName: "loadInstitutes",
        loader: () => appInteractor.loadAndReturnInstitutes(),
        emitEndSession: () => emit(GroupState.endedSession()),
        emitError: (error) => emit(GroupState.error(error: error)),
        updateData: (newData) {
          if (newData is List<InstituteDomain>) {
            final institutes = newData.map(InstituteModel.fromDomain).toList();
            emit(GroupState.loadedInstitutes(institutes: institutes));
          }
        },
      );
    });

    on<GroupEventLoadGroups>((event, emit) async {
      emit(const GroupState.loadingGroups());
      await loadDataFromInteractor(
        funcName: "loadGroups",
        loader: () => appInteractor.getGroups(event.instituteId),
        emitEndSession: () => emit(GroupState.endedSession()),
        emitError: (error) => emit(GroupState.error(error: error)),
        updateData: (newData) {
          if (newData is List<GroupDomain>) {
            final groups = newData.map(GroupModel.fromDomain).toList();
            emit(GroupState.loadedGroups(groups: groups));
          }
        },
      );
    });

    on<GroupEventCreateGroup>((event, emit) async {
      emit(const GroupState.loadingGroups());
      await loadDataFromInteractor(
        funcName: "createGroup",
        loader: () => appInteractor.createGroup(
          event.groups.map((e) => e.toDomain()).toList(),
          event.instituteId,
          event.name,
        ),
        emitEndSession: () => emit(GroupState.endedSession()),
        emitError: (error) => emit(GroupState.error(error: error)),
        updateData: (newData) {
          if (newData is List<GroupDomain>) {
            emit(GroupState.loadedGroups(
              groups: newData.map(GroupModel.fromDomain).toList(),
            ));
          }
        },
      );
    });

    on<GroupEventUpdateGroup>((event, emit) async {
      emit(const GroupState.loadingGroups());
      await loadDataFromInteractor(
        funcName: "updateGroup",
        loader: () => appInteractor.updateGroup(
          event.groups.map((e) => e.toDomain()).toList(),
          event.groupId,
          event.instituteId,
          event.name,
        ),
        emitEndSession: () => emit(GroupState.endedSession()),
        emitError: (error) => emit(GroupState.error(error: error)),
        updateData: (newData) {
          if (newData is List<GroupDomain>) {
            emit(GroupState.loadedGroups(
              groups: newData.map(GroupModel.fromDomain).toList(),
            ));
          }
        },
      );
    });

    on<GroupEventDeleteGroup>((event, emit) async {
      emit(const GroupState.loadingGroups());
      await loadDataFromInteractor(
        funcName: "deleteGroup",
        loader: () => appInteractor.deleteGroup(
          event.groups.map((e) => e.toDomain()).toList(),
          event.groupId,
        ),
        emitEndSession: () => emit(GroupState.endedSession()),
        emitError: (error) => emit(GroupState.error(error: error)),
        updateData: (newData) {
          if (newData is List<GroupDomain>) {
            emit(GroupState.loadedGroups(
              groups: newData.map(GroupModel.fromDomain).toList(),
            ));
          }
        },
      );
    });

    on<GroupEventToLoaded>((event, emit) {
      emit(GroupState.loaded(
        institutes: event.institutes,
        selectedInstitute: event.selectedInstitute,
        groups: event.groups,
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
            "GroupBloc Error ($funcName)",
            error ?? "close shift",
          );
        },
      );
    } catch (e) {
      ErrorLogger().logFlutterErrorWithName(
        "GroupBloc Error ($funcName)", e,
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