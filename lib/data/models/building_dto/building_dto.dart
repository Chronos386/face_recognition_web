// data/models/building_dto/building_dto.dart
// ignore_for_file: non_constant_identifier_names
import '/domain/models/building_domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'building_dto.freezed.dart';
part 'building_dto.g.dart';

@freezed
class BuildingDTO with _$BuildingDTO {
  const factory BuildingDTO({
    required int id,
    required String name,
    required String address,
  }) = _BuildingDTO;

  factory BuildingDTO.fromJson(Map<String, dynamic> json) => _$BuildingDTOFromJson(json);
}

extension BuildingDtoToDomain on BuildingDTO {
  BuildingDomain toDomain() {
    return BuildingDomain(
      id: id,
      name: name,
      address: address,
    );
  }
}