// domain/models/user_domain.dart

import 'has_id.dart';

class UserDomain implements HasId {
  @override
  final int id;
  final bool isAdmin;
  final String login;
  final String name;
  final String hash;
  final UserStudentDomain? studentInfo;
  final UserTeacherDomain? teacherInfo;

  UserDomain({
    required this.id,
    required this.isAdmin,
    required this.login,
    required this.name,
    required this.hash,
    this.studentInfo,
    this.teacherInfo,
  });
}

class UserStudentDomain {
  final int groupId;
  final String groupName;
  final int instituteId;
  final String instituteName;

  UserStudentDomain({
    required this.groupId,
    required this.groupName,
    required this.instituteId,
    required this.instituteName,
  });
}

class UserTeacherDomain {
  final int departmentId;
  final String departmentName;
  final int instituteId;
  final String instituteName;

  UserTeacherDomain({
    required this.departmentId,
    required this.departmentName,
    required this.instituteId,
    required this.instituteName,
  });
}