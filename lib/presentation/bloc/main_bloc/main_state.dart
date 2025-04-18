// presentation/bloc/main_bloc/main_state.dart
part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState.loaded() = MainStateLoaded;
  const factory MainState.loading() = MainStateLoading;
  const factory MainState.error({required String error}) = MainStateError;
  const factory MainState.endedSession() = MainStateEndedSession;
}