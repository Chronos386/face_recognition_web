// presentation/bloc/main_bloc/main_event.dart
part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.loadData() = MainEventLoadData;
}