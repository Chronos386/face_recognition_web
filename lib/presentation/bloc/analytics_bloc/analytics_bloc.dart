// presentation/bloc/analytics_bloc/analytics_bloc.dart
import '/utils/result.dart';
import '/utils/logging.dart';
import '/utils/clearer.dart';
import '/utils/error_codes.dart';
import 'package:get_it/get_it.dart';
import '../../models/group_model.dart';
import '/res/generated/locale_keys.g.dart';
import '../../models/institute_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/analytic/analytic_data.dart';
import '/domain/interactors/analytic_interactor.dart';
import '/domain/models/analytic/analytic_domain.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytics_bloc.freezed.dart';
part 'analytics_event.dart';
part 'analytics_state.dart';

class AnalyticsBloc extends Bloc<AnalyticsEvent, AnalyticsState> {
  final clearer = GetIt.instance<Clearer>();
  final analyticInteractor = AnalyticInteractor();

  AnalyticsBloc() : super(const AnalyticsState.loading()) {
    on<AnalyticsEventGetData>((event, emit) async {
      emit(const AnalyticsState.loading());
      bool hasError = false;
      AnalyticDomain data = analyticInteractor.getAnalytic();
      if (data.groups_2?.isEmpty ?? true) {
        await loadDataFromInteractor(
          funcName: "loadGroupsEx2",
          loader: () => analyticInteractor.loadGroupsEx2(data.institutes![0]),
          emitEndSession: () {
            emit(AnalyticsState.endedSession());
            hasError = true;
          },
          emitError: (error) {
            emit(AnalyticsState.error(error: error));
            hasError = true;
          },
          updateData: (newData) {
            data = newData;
            hasError = false;
          },
        );
      }
      if (hasError) return;
      if (data.groups_3?.isEmpty ?? true) {
        await loadDataFromInteractor(
          funcName: "loadGroupsEx3",
          loader: () => analyticInteractor.loadGroupsEx3(data.institutes![0]),
          emitEndSession: () {
            emit(AnalyticsState.endedSession());
            hasError = true;
          },
          emitError: (error) {
            emit(AnalyticsState.error(error: error));
            hasError = true;
          },
          updateData: (newData) {
            data = newData;
            hasError = false;
          },
        );
      }
      if (hasError) return;
      emit(AnalyticsState.loaded(data: AnalyticData.fromDomain(data)));
    });

    on<AnalyticsEventLoadGroupsEx2>((event, emit) async {
      emit(const AnalyticsState.loadGroupsEx2());
      await loadDataFromInteractor(
        funcName: "loadGroupsEx2",
        loader: () => analyticInteractor.loadGroupsEx2(
          event.institute.toDomain(),
        ),
        emitEndSession: () => emit(AnalyticsState.endedSession()),
        emitError: (error) => emit(AnalyticsState.error(error: error)),
        updateData: (newData) {
          if (newData is AnalyticDomain) {
            emit(AnalyticsState.loaded(data: AnalyticData.fromDomain(newData)));
          }
        },
      );
    });

    on<AnalyticsEventLoadGroupsEx3>((event, emit) async {
      emit(const AnalyticsState.loadGroupsEx3());
      await loadDataFromInteractor(
        funcName: "loadGroupsEx3",
        loader: () => analyticInteractor.loadGroupsEx3(
          event.institute.toDomain(),
        ),
        emitEndSession: () => emit(AnalyticsState.endedSession()),
        emitError: (error) => emit(AnalyticsState.error(error: error)),
        updateData: (newData) {
          if (newData is AnalyticDomain) {
            emit(AnalyticsState.loaded(data: AnalyticData.fromDomain(newData)));
          }
        },
      );
    });

    on<AnalyticsEventGetUniversityAttendance>((event, emit) async {
      emit(const AnalyticsState.loadEx1());
      await loadDataFromInteractor(
        funcName: "getUniversityAttendance",
        loader: () => analyticInteractor.getUniversityAttendance(
          event.dateStart, event.dateEnd,
        ),
        emitEndSession: () => emit(AnalyticsState.endedSession()),
        emitError: (error) => emit(AnalyticsState.error(error: error)),
        updateData: (newData) {
          if (newData is AnalyticDomain) {
            emit(AnalyticsState.loaded(data: AnalyticData.fromDomain(newData)));
          }
        },
      );
    });

    on<AnalyticsEventGetGroupAttendance>((event, emit) async {
      emit(const AnalyticsState.loadEx2());
      await loadDataFromInteractor(
        funcName: "getGroupAttendance",
        loader: () => analyticInteractor.getGroupAttendance(
          event.group.toDomain(), event.dateStart, event.dateEnd,
        ),
        emitEndSession: () => emit(AnalyticsState.endedSession()),
        emitError: (error) => emit(AnalyticsState.error(error: error)),
        updateData: (newData) {
          if (newData is AnalyticDomain) {
            emit(AnalyticsState.loaded(data: AnalyticData.fromDomain(newData)));
          }
        },
      );
    });

    on<AnalyticsEventGetGroupClusters>((event, emit) async {
      emit(const AnalyticsState.loadEx3());
      await loadDataFromInteractor(
        funcName: "getGroupClusters",
        loader: () => analyticInteractor.getGroupClusters(
          event.group.toDomain(), event.dateStart, event.dateEnd,
        ),
        emitEndSession: () => emit(AnalyticsState.endedSession()),
        emitError: (error) => emit(AnalyticsState.error(error: error)),
        updateData: (newData) {
          if (newData is AnalyticDomain) {
            emit(AnalyticsState.loaded(data: AnalyticData.fromDomain(newData)));
          }
        },
      );
    });

    on<AnalyticsEventGetInstitutesAnalysis>((event, emit) async {
      emit(const AnalyticsState.loadEx4());
      await loadDataFromInteractor(
        funcName: "getInstitutesAnalysis",
        loader: () => analyticInteractor.getInstitutesAnalysis(
          event.dateStart, event.dateEnd,
        ),
        emitEndSession: () => emit(AnalyticsState.endedSession()),
        emitError: (error) => emit(AnalyticsState.error(error: error)),
        updateData: (newData) {
          if (newData is AnalyticDomain) {
            emit(AnalyticsState.loaded(data: AnalyticData.fromDomain(newData)));
          }
        },
      );
    });

    on<AnalyticsEventGetTopTeachers>((event, emit) async {
      emit(const AnalyticsState.loadEx5());
      await loadDataFromInteractor(
        funcName: "getTopTeachers",
        loader: () => analyticInteractor.getTopTeachers(
          event.dateStart, event.dateEnd,
        ),
        emitEndSession: () => emit(AnalyticsState.endedSession()),
        emitError: (error) => emit(AnalyticsState.error(error: error)),
        updateData: (newData) {
          if (newData is AnalyticDomain) {
            emit(AnalyticsState.loaded(data: AnalyticData.fromDomain(newData)));
          }
        },
      );
    });

    on<AnalyticsEventGetTopStudentsAbsences>((event, emit) async {
      emit(const AnalyticsState.loadEx6());
      await loadDataFromInteractor(
        funcName: "getTopStudentsAbsences",
        loader: () => analyticInteractor.getTopStudentsAbsences(
          event.dateStart, event.dateEnd,
        ),
        emitEndSession: () => emit(AnalyticsState.endedSession()),
        emitError: (error) => emit(AnalyticsState.error(error: error)),
        updateData: (newData) {
          if (newData is AnalyticDomain) {
            emit(AnalyticsState.loaded(data: AnalyticData.fromDomain(newData)));
          }
        },
      );
    });

    on<AnalyticsEventGetTopGroupAbsences>((event, emit) async {
      emit(const AnalyticsState.loadEx7());
      await loadDataFromInteractor(
        funcName: "getTopGroupAbsences",
        loader: () => analyticInteractor.getTopGroupAbsences(
          event.dateStart, event.dateEnd,
        ),
        emitEndSession: () => emit(AnalyticsState.endedSession()),
        emitError: (error) => emit(AnalyticsState.error(error: error)),
        updateData: (newData) {
          if (newData is AnalyticDomain) {
            emit(AnalyticsState.loaded(data: AnalyticData.fromDomain(newData)));
          }
        },
      );
    });

    on<AnalyticsEventGetTopGroupAttendance>((event, emit) async {
      emit(const AnalyticsState.loadEx8());
      await loadDataFromInteractor(
        funcName: "getTopGroupAttendance",
        loader: () => analyticInteractor.getTopGroupAttendance(
          event.dateStart, event.dateEnd,
        ),
        emitEndSession: () => emit(AnalyticsState.endedSession()),
        emitError: (error) => emit(AnalyticsState.error(error: error)),
        updateData: (newData) {
          if (newData is AnalyticDomain) {
            emit(AnalyticsState.loaded(data: AnalyticData.fromDomain(newData)));
          }
        },
      );
    });

    on<AnalyticsEventToLoaded>((event, emit) {
      AnalyticDomain data = analyticInteractor.getAnalytic();
      emit(AnalyticsState.loaded(data: AnalyticData.fromDomain(data)));
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
            "AnalyticsBloc Error ($funcName)",
            error ?? "close shift",
          );
        },
      );
    } catch (e) {
      ErrorLogger().logFlutterErrorWithName(
        "AnalyticsBloc Error ($funcName)", e,
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
      case ErrorCodes.NOT_FOUND:
        return LocaleKeys.error_load_data.tr();
      default:
        return LocaleKeys.error_load_data.tr();
    }
  }
}