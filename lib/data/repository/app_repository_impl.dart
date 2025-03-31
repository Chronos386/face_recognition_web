// data/repository/app_repository_impl.dart
import '/utils/result.dart';
import 'package:get_it/get_it.dart';
import '../storage/network_storage.dart';
import '/domain/models/group_domain.dart';
import '../models/group_dto/group_dto.dart';
import '/domain/models/institute_domain.dart';
import '/domain/repository/app_repository.dart';
import '../models/institute_dto/institute_dto.dart';

class AppRepositoryImpl implements AppRepository {
  final networkStorage = GetIt.instance<NetworkStorage>();

  @override
  Future<Result<List<InstituteDomain>>> getInstitutes(String hash) async {
    List<InstituteDomain> list = [];
    late Result<List<InstituteDomain>> resultStat;
    final result = await networkStorage.getInstitutes(hash);
    result.when(
      success: (stats) {
        for (var stat in stats) {
          list.add(stat.toDomain());
        }
        resultStat = Success(list);
      },
      error: (code) => resultStat = Error(code),
    );
    return resultStat;
  }

  @override
  Future<Result<List<GroupDomain>>> getGroupsByInstitute(String hash,
      int instituteId) async {
    List<GroupDomain> list = [];
    late Result<List<GroupDomain>> resultStat;
    final result = await networkStorage.getGroupsByInstitute(hash, instituteId);
    result.when(
      success: (stats) {
        for (var stat in stats) {
          list.add(stat.toDomain());
        }
        resultStat = Success(list);
      },
      error: (code) => resultStat = Error(code),
    );
    return resultStat;
  }
}