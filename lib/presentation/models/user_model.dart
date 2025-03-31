// presentation/models/user_model.dart
import '../../domain/models/user_domain.dart';

class UserModel {
  final int id;
  final bool isAdmin;
  final String login;
  final String name;
  final UserStudent? studentInfo;
  final UserTeacher? teacherInfo;

  UserModel({
    required this.id,
    required this.isAdmin,
    required this.login,
    required this.name,
    this.studentInfo,
    this.teacherInfo,
  });

  factory UserModel.fromDomain(UserDomain domain) {
    return UserModel(
      id: domain.id,
      isAdmin: domain.isAdmin,
      login: domain.login,
      name: domain.name,
      studentInfo: (domain.studentInfo != null)
          ? UserStudent.fromDomain(domain.studentInfo!) : null,
      teacherInfo: (domain.teacherInfo != null)
          ? UserTeacher.fromDomain(domain.teacherInfo!) : null,
    );
  }
}

class UserStudent {
  final int groupId;
  final String groupName;
  final int instituteId;
  final String instituteName;

  UserStudent({
    required this.groupId,
    required this.groupName,
    required this.instituteId,
    required this.instituteName,
  });
  
  factory UserStudent.fromDomain(UserStudentDomain domain) {
    return UserStudent(
      groupId: domain.groupId,
      groupName: domain.groupName,
      instituteId: domain.instituteId,
      instituteName: domain.instituteName,
    );
  }
}

class UserTeacher {
  final int departmentId;
  final String departmentName;
  final int instituteId;
  final String instituteName;

  UserTeacher({
    required this.departmentId,
    required this.departmentName,
    required this.instituteId,
    required this.instituteName,
  });

  factory UserTeacher.fromDomain(UserTeacherDomain domain) {
    return UserTeacher(
      departmentId: domain.departmentId,
      departmentName: domain.departmentName,
      instituteId: domain.instituteId,
      instituteName: domain.instituteName,
    );
  }
}