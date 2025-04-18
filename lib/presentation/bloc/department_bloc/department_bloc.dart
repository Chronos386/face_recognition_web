// presentation/bloc/department_bloc/department_bloc.dart
import '/utils/result.dart';
import '/utils/logging.dart';
import '/utils/clearer.dart';
import '/utils/error_codes.dart';
import 'package:get_it/get_it.dart';
import '../../models/institute_model.dart';
import '/res/generated/locale_keys.g.dart';
import '../../models/department_model.dart';
import '/domain/models/institute_domain.dart';
import '/domain/models/department_domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/domain/interactors/app_interactor.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'department_bloc.freezed.dart';
part 'department_event.dart';
part 'department_state.dart';

class DepartmentBloc extends Bloc<DepartmentEvent, DepartmentState> {
  final appInteractor = AppInteractor();
  final clearer = GetIt.instance<Clearer>();

  DepartmentBloc() : super(const DepartmentState.loadingInstitutes()) {
    on<DepartmentEventLoadInstitutes>((event, emit) async {
      emit(const DepartmentState.loadingInstitutes());
      await loadDataFromInteractor(
        funcName: "loadInstitutes",
        loader: () => appInteractor.loadAndReturnInstitutes(),
        emitEndSession: () => emit(DepartmentState.endedSession()),
        emitError: (error) => emit(DepartmentState.error(error: error)),
        updateData: (newData) {
          if (newData is List<InstituteDomain>) {
            final institutes = newData.map(InstituteModel.fromDomain).toList();
            emit(DepartmentState.loadedInstitutes(institutes: institutes));
          }
        },
      );
    });

    on<DepartmentEventLoadDepartments>((event, emit) async {
      emit(const DepartmentState.loadingDepartments());
      await loadDataFromInteractor(
        funcName: "loadDepartments",
        loader: () {
          return appInteractor.getDepartments(event.instituteId);
        },
        emitEndSession: () => emit(DepartmentState.endedSession()),
        emitError: (error) => emit(DepartmentState.error(error: error)),
        updateData: (newData) {
          if (newData is List<DepartmentDomain>) {
            final departments = newData.map(DepartmentModel.fromDomain).toList();
            emit(DepartmentState.loadedDepartments(departments: departments));
          }
        },
      );
    });

    on<DepartmentEventCreateDepartment>((event, emit) async {
      emit(const DepartmentState.loadingDepartments());
      await loadDataFromInteractor(
        funcName: "createDepartment",
        loader: () => appInteractor.createDepartment(
          event.departments.map((e) => e.toDomain()).toList(),
          event.instituteId,
          event.name,
        ),
        emitEndSession: () => emit(DepartmentState.endedSession()),
        emitError: (error) => emit(DepartmentState.error(error: error)),
        updateData: (newData) {
          if (newData is List<DepartmentDomain>) {
            emit(DepartmentState.loadedDepartments(
              departments: newData.map(DepartmentModel.fromDomain).toList(),
            ));
          }
        },
      );
    });

    on<DepartmentEventUpdateDepartment>((event, emit) async {
      emit(const DepartmentState.loadingDepartments());
      await loadDataFromInteractor(
        funcName: "updateDepartment",
        loader: () => appInteractor.updateDepartment(
          event.departments.map((e) => e.toDomain()).toList(),
          event.departmentId,
          event.instituteId,
          event.name,
        ),
        emitEndSession: () => emit(DepartmentState.endedSession()),
        emitError: (error) => emit(DepartmentState.error(error: error)),
        updateData: (newData) {
          if (newData is List<DepartmentDomain>) {
            emit(DepartmentState.loadedDepartments(
              departments: newData.map(DepartmentModel.fromDomain).toList(),
            ));
          }
        },
      );
    });

    on<DepartmentEventDeleteDepartment>((event, emit) async {
      emit(const DepartmentState.loadingDepartments());
      await loadDataFromInteractor(
        funcName: "deleteDepartment",
        loader: () => appInteractor.deleteDepartment(
          event.departments.map((e) => e.toDomain()).toList(),
          event.departmentId,
        ),
        emitEndSession: () => emit(DepartmentState.endedSession()),
        emitError: (error) => emit(DepartmentState.error(error: error)),
        updateData: (newData) {
          if (newData is List<DepartmentDomain>) {
            emit(DepartmentState.loadedDepartments(
              departments: newData.map(DepartmentModel.fromDomain).toList(),
            ));
          }
        },
      );
    });

    on<DepartmentEventToLoaded>((event, emit) {
      emit(DepartmentState.loaded(
        institutes: event.institutes,
        selectedInstitute: event.selectedInstitute,
        departments: event.departments,
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
            "DepartmentBloc Error ($funcName)",
            error ?? "close shift",
          );
        },
      );
    } catch (e) {
      ErrorLogger().logFlutterErrorWithName(
        "DepartmentBloc Error ($funcName)", e,
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