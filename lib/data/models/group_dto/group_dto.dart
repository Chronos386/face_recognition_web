// data/models/institute_dto/group_dto.dart
// ignore_for_file: non_constant_identifier_names
import '/domain/models/group_domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'group_dto.freezed.dart';
part 'group_dto.g.dart';

@freezed
class GroupDTO with _$GroupDTO {
  const factory GroupDTO({
    required int id,
    required String name,
    required int institute_id,
  }) = _GroupDTO;

  factory GroupDTO.fromJson(Map<String, dynamic> json) => _$GroupDTOFromJson(json);
}

extension GroupDtoToDomain on GroupDTO {
  GroupDomain toDomain() {
    return GroupDomain(
      id: id,
      name: name,
      instituteId: institute_id,
    );
  }
}