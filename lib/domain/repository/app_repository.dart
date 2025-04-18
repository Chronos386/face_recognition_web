// domain/repository/app_repository.dart
import '/utils/result.dart';
import '../models/group_domain.dart';
import '../models/institute_domain.dart';

abstract class AppRepository {
  Future<Result<List<InstituteDomain>>> getInstitutes(String hash);
  Future<Result<List<GroupDomain>>> getGroups(String hash,
      int instituteId);
}