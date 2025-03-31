// data/models/user_dto/user_dto.dart
// ignore_for_file: non_constant_identifier_names
import '/domain/models/user_domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDTO with _$UserDTO {
  const factory UserDTO({
    required int id,
    required bool is_admin,
    required String login,
    required String name,
    required String hash,
    required int? group_id,
    required String? group_name,
    required int? department_id,
    required String? department_name,
    required int institute_id,
    required String institute_name,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) => _$UserDTOFromJson(json);
}

extension UserDtoToDomain on UserDTO {
  UserDomain toDomain() {
    return UserDomain(
      id: id,
      isAdmin: is_admin,
      login: login,
      name: name,
      hash: hash,
      studentInfo: (group_id == null) ? null :
      UserStudentDomain(
        groupId: group_id!,
        groupName: group_name!,
        instituteId: institute_id,
        instituteName: institute_name,
      ),
      teacherInfo: (department_id == null) ? null :
      UserTeacherDomain(
        departmentId: department_id!,
        departmentName: department_name!,
        instituteId: institute_id,
        instituteName: institute_name,
      ),
    );
  }
}