// presentation/bloc/institute_bloc/institute_event.dart
part of 'institute_bloc.dart';

@freezed
class InstituteEvent with _$InstituteEvent {
  const factory InstituteEvent.loadInstitutes() = InstituteEventLoadInstitutes;
  const factory InstituteEvent.toLoaded(List<InstituteModel> institutes) =
  InstituteEventToLoaded;
  const factory InstituteEvent.createInstitute(String name) =
  InstituteEventCreateInstitute;
  const factory InstituteEvent.updateInstitute(int id, String name) =
  InstituteEventUpdateInstitute;
  const factory InstituteEvent.deleteInstitute(int id) =
  InstituteEventDeleteInstitute;
}