// presentation/bloc/analytics_bloc/analytics_bloc.dart
import '/utils/result.dart';
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
      try {
        if (data.groups_2?.isEmpty ?? true) {
          hasError = await loadDataFromInteractor(
            loader: () => analyticInteractor.loadGroupsEx2(data.institutes![0]),
            emitEndSession: () => emit(AnalyticsState.endedSession()),
            emitError: (error) => emit(AnalyticsState.error(error: error)),
            updateData: (newData) => data = newData,
          );
        }
        if (hasError) return;
        if (data.groups_3?.isEmpty ?? true) {
          hasError = await loadDataFromInteractor(
            loader: () => analyticInteractor.loadGroupsEx3(data.institutes![0]),
            emitEndSession: () => emit(AnalyticsState.endedSession()),
            emitError: (error) => emit(AnalyticsState.error(error: error)),
            updateData: (newData) {
              data = newData;
            },
          );
        }
        if (hasError) return;
        emit(AnalyticsState.loaded(data: AnalyticData.fromDomain(data)));
      } catch (e) {
        emit(AnalyticsState.error(error: e.toString()));
      }
    });

    on<AnalyticsEventLoadGroupsEx2>((event, emit) async {
      emit(const AnalyticsState.loadGroupsEx2());
      bool hasError = false;
      try {
        late AnalyticDomain data;
        hasError = await loadDataFromInteractor(
          loader: () => analyticInteractor.loadGroupsEx2(
            event.institute.toDomain(),
          ),
          emitEndSession: () => emit(AnalyticsState.endedSession()),
          emitError: (error) => emit(AnalyticsState.error(error: error)),
          updateData: (newData) => data = newData,
        );
        if (hasError) return;
        emit(AnalyticsState.loaded(data: AnalyticData.fromDomain(data)));
      } catch (e) {
        emit(AnalyticsState.error(error: e.toString()));
      }
    });

    on<AnalyticsEventLoadGroupsEx3>((event, emit) async {
      emit(const AnalyticsState.loadGroupsEx3());
      bool hasError = false;
      try {
        late AnalyticDomain data;
        hasError = await loadDataFromInteractor(
          loader: () => analyticInteractor.loadGroupsEx3(
            event.institute.toDomain(),
          ),
          emitEndSession: () => emit(AnalyticsState.endedSession()),
          emitError: (error) => emit(AnalyticsState.error(error: error)),
          updateData: (newData) => data = newData,
        );
        if (hasError) return;
        emit(AnalyticsState.loaded(data: AnalyticData.fromDomain(data)));
      } catch (e) {
        emit(AnalyticsState.error(error: e.toString()));
      }
    });

    on<AnalyticsEventGetUniversityAttendance>((event, emit) async {
      emit(const AnalyticsState.loadEx1());
      bool hasError = false;
      try {
        late AnalyticDomain data;
        hasError = await loadDataFromInteractor(
          loader: () => analyticInteractor.getUniversityAttendance(
            event.dateStart, event.dateEnd,
          ),
          emitEndSession: () => emit(AnalyticsState.endedSession()),
          emitError: (error) => emit(AnalyticsState.error(error: error)),
          updateData: (newData) => data = newData,
        );
        if (hasError) return;
        emit(AnalyticsState.loaded(data: AnalyticData.fromDomain(data)));
      } catch (e) {
        emit(AnalyticsState.error(error: e.toString()));
      }
    });

    on<AnalyticsEventGetGroupAttendance>((event, emit) async {
      emit(const AnalyticsState.loadEx2());
      bool hasError = false;
      try {
        late AnalyticDomain data;
        hasError = await loadDataFromInteractor(
          loader: () => analyticInteractor.getGroupAttendance(
            event.group.toDomain(), event.dateStart, event.dateEnd,
          ),
          emitEndSession: () => emit(AnalyticsState.endedSession()),
          emitError: (error) => emit(AnalyticsState.error(error: error)),
          updateData: (newData) => data = newData,
        );
        if (hasError) return;
        emit(AnalyticsState.loaded(data: AnalyticData.fromDomain(data)));
      } catch (e) {
        emit(AnalyticsState.error(error: e.toString()));
      }
    });

    on<AnalyticsEventGetGroupClusters>((event, emit) async {
      emit(const AnalyticsState.loadEx3());
      bool hasError = false;
      try {
        late AnalyticDomain data;
        hasError = await loadDataFromInteractor(
          loader: () => analyticInteractor.getGroupClusters(
            event.group.toDomain(), event.dateStart, event.dateEnd,
          ),
          emitEndSession: () => emit(AnalyticsState.endedSession()),
          emitError: (error) => emit(AnalyticsState.error(error: error)),
          updateData: (newData) => data = newData,
        );
        if (hasError) return;
        emit(AnalyticsState.loaded(data: AnalyticData.fromDomain(data)));
      } catch (e) {
        emit(AnalyticsState.error(error: e.toString()));
      }
    });

    on<AnalyticsEventGetInstitutesAnalysis>((event, emit) async {
      emit(const AnalyticsState.loadEx4());
      bool hasError = false;
      try {
        late AnalyticDomain data;
        hasError = await loadDataFromInteractor(
          loader: () => analyticInteractor.getInstitutesAnalysis(
            event.dateStart, event.dateEnd,
          ),
          emitEndSession: () => emit(AnalyticsState.endedSession()),
          emitError: (error) => emit(AnalyticsState.error(error: error)),
          updateData: (newData) => data = newData,
        );
        if (hasError) return;
        emit(AnalyticsState.loaded(data: AnalyticData.fromDomain(data)));
      } catch (e) {
        emit(AnalyticsState.error(error: e.toString()));
      }
    });

    on<AnalyticsEventGetTopTeachers>((event, emit) async {
      emit(const AnalyticsState.loadEx5());
      bool hasError = false;
      try {
        late AnalyticDomain data;
        hasError = await loadDataFromInteractor(
          loader: () => analyticInteractor.getTopTeachers(
            event.dateStart, event.dateEnd,
          ),
          emitEndSession: () => emit(AnalyticsState.endedSession()),
          emitError: (error) => emit(AnalyticsState.error(error: error)),
          updateData: (newData) => data = newData,
        );
        if (hasError) return;
        emit(AnalyticsState.loaded(data: AnalyticData.fromDomain(data)));
      } catch (e) {
        emit(AnalyticsState.error(error: e.toString()));
      }
    });

    on<AnalyticsEventGetTopStudentsAbsences>((event, emit) async {
      emit(const AnalyticsState.loadEx6());
      bool hasError = false;
      try {
        late AnalyticDomain data;
        hasError = await loadDataFromInteractor(
          loader: () => analyticInteractor.getTopStudentsAbsences(
            event.dateStart, event.dateEnd,
          ),
          emitEndSession: () => emit(AnalyticsState.endedSession()),
          emitError: (error) => emit(AnalyticsState.error(error: error)),
          updateData: (newData) => data = newData,
        );
        if (hasError) return;
        emit(AnalyticsState.loaded(data: AnalyticData.fromDomain(data)));
      } catch (e) {
        emit(AnalyticsState.error(error: e.toString()));
      }
    });

    on<AnalyticsEventGetTopGroupAbsences>((event, emit) async {
      emit(const AnalyticsState.loadEx7());
      bool hasError = false;
      try {
        late AnalyticDomain data;
        hasError = await loadDataFromInteractor(
          loader: () => analyticInteractor.getTopGroupAbsences(
            event.dateStart, event.dateEnd,
          ),
          emitEndSession: () => emit(AnalyticsState.endedSession()),
          emitError: (error) => emit(AnalyticsState.error(error: error)),
          updateData: (newData) => data = newData,
        );
        if (hasError) return;
        emit(AnalyticsState.loaded(data: AnalyticData.fromDomain(data)));
      } catch (e) {
        emit(AnalyticsState.error(error: e.toString()));
      }
    });

    on<AnalyticsEventGetTopGroupAttendance>((event, emit) async {
      emit(const AnalyticsState.loadEx8());
      bool hasError = false;
      try {
        late AnalyticDomain data;
        hasError = await loadDataFromInteractor(
          loader: () => analyticInteractor.getTopGroupAttendance(
            event.dateStart, event.dateEnd,
          ),
          emitEndSession: () => emit(AnalyticsState.endedSession()),
          emitError: (error) => emit(AnalyticsState.error(error: error)),
          updateData: (newData) => data = newData,
        );
        if (hasError) return;
        emit(AnalyticsState.loaded(data: AnalyticData.fromDomain(data)));
      } catch (e) {
        emit(AnalyticsState.error(error: e.toString()));
      }
    });

    on<AnalyticsEventToLoaded>((event, emit) {
      AnalyticDomain data = analyticInteractor.getAnalytic();
      emit(AnalyticsState.loaded(data: AnalyticData.fromDomain(data)));
    });
  }

  Future<bool> loadDataFromInteractor({
    required Future<Result<AnalyticDomain>> Function() loader,
    required void Function() emitEndSession,
    required void Function(String) emitError,
    required void Function(AnalyticDomain) updateData,
  }) async {
    final result = await loader();
    bool hasError = false;
    result.when(
      success: (newData) {
        updateData(newData);
      },
      error: (code) {
        hasError = true;
        final error = getErrorByCode(code);
        if (error == null) {
          clearer.clearApp();
          emitEndSession();
        } else {
          emitError(error);
        }
      },
    );
    return hasError;
  }

  String? getErrorByCode(int code) {
    switch (code) {
      case ErrorCodes.NO_INTERNET:
        return LocaleKeys.check_internet_connection.tr();
      case ErrorCodes.SESSION_IS_CLOSED:
        return null;
      case ErrorCodes.NOT_FOUND:
        return LocaleKeys.user_not_found.tr();
      default:
        return LocaleKeys.error_load_data.tr();
    }
  }
}