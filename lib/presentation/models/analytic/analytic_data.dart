// presentation/models/analytic/analytic_data.dart
import 'cluster_model.dart';
import '../group_model.dart';
import 'statistic_model.dart';
import 'top_student_model.dart';
import 'top_teachers_model.dart';
import '../institute_model.dart';
import 'institutes_stat_model.dart';
import 'top_group_absences_model.dart';
import 'top_group_attendance_model.dart';
import '/domain/models/analytic/analytic_domain.dart';

class AnalyticData {
  final List<InstituteModel>? institutes;

  final DateTime? startDate_1;
  final DateTime? endDate_1;
  final List<StatisticModel>? universityStat;

  final InstituteModel? institute_2;
  final List<GroupModel>? groups_2;
  final DateTime? startDate_2;
  final DateTime? endDate_2;
  final GroupModel? group_2;
  final List<StatisticModel>? groupStat;

  final InstituteModel? institute_3;
  final List<GroupModel>? groups_3;
  final DateTime? startDate_3;
  final DateTime? endDate_3;
  final GroupModel? group_3;
  final List<ClusterModel>? groupClusters;

  final DateTime? startDate_4;
  final DateTime? endDate_4;
  final List<InstitutesStatModel>? instituteStat;

  final DateTime? startDate_5;
  final DateTime? endDate_5;
  final List<TopTeachersModel>? topTeachers;

  final DateTime? startDate_6;
  final DateTime? endDate_6;
  final List<TopStudentModel>? topStudents;

  final DateTime? startDate_7;
  final DateTime? endDate_7;
  final List<TopGroupAbsencesModel>? topGroupsAbsences;

  final DateTime? startDate_8;
  final DateTime? endDate_8;
  final List<TopGroupAttendanceModel>? topGroupsAttendance;

  AnalyticData({
    required this.institutes,
    required this.startDate_1,
    required this.endDate_1,
    required this.universityStat,
    required this.institute_2,
    required this.groups_2,
    required this.startDate_2,
    required this.endDate_2,
    required this.group_2,
    required this.groupStat,
    required this.institute_3,
    required this.groups_3,
    required this.startDate_3,
    required this.endDate_3,
    required this.group_3,
    required this.groupClusters,
    required this.startDate_4,
    required this.endDate_4,
    required this.instituteStat,
    required this.startDate_5,
    required this.endDate_5,
    required this.topTeachers,
    required this.startDate_6,
    required this.endDate_6,
    required this.topStudents,
    required this.startDate_7,
    required this.endDate_7,
    required this.topGroupsAbsences,
    required this.startDate_8,
    required this.endDate_8,
    required this.topGroupsAttendance,
  });

  factory AnalyticData.fromDomain(AnalyticDomain domain) {
    return AnalyticData(
      institutes: domain.institutes?.map((e) =>
          InstituteModel.fromDomain(e)).toList(),

      startDate_1: domain.startDate_1,
      endDate_1: domain.endDate_1,
      universityStat: domain.universityStat?.map((e) =>
          StatisticModel.fromDomain(e)).toList(),

      institute_2: (domain.institute_2 == null) ? null :
      InstituteModel.fromDomain(domain.institute_2!),
      groups_2: domain.groups_2?.map((e) =>
          GroupModel.fromDomain(e)).toList(),
      startDate_2: domain.startDate_2,
      endDate_2: domain.endDate_2,
      group_2: (domain.group_2 == null) ? null :
      GroupModel.fromDomain(domain.group_2!),
      groupStat: domain.groupStat?.map((e) =>
          StatisticModel.fromDomain(e)).toList(),

      institute_3: (domain.institute_3 == null) ? null :
      InstituteModel.fromDomain(domain.institute_3!),
      groups_3: domain.groups_3?.map((e) =>
          GroupModel.fromDomain(e)).toList(),
      startDate_3: domain.startDate_3,
      endDate_3: domain.endDate_3,
      group_3: (domain.group_3 == null) ? null :
      GroupModel.fromDomain(domain.group_3!),
      groupClusters: domain.groupClusters?.map((e) =>
          ClusterModel.fromDomain(e)).toList(),

      startDate_4: domain.startDate_4,
      endDate_4: domain.endDate_4,
      instituteStat: domain.instituteStat?.map((e) =>
          InstitutesStatModel.fromDomain(e)).toList(),

      startDate_5: domain.startDate_5,
      endDate_5: domain.endDate_5,
      topTeachers: domain.topTeachers?.map((e) =>
          TopTeachersModel.fromDomain(e)).toList(),

      startDate_6: domain.startDate_6,
      endDate_6: domain.endDate_6,
      topStudents: domain.topStudents?.map((e) =>
          TopStudentModel.fromDomain(e)).toList(),

      startDate_7: domain.startDate_7,
      endDate_7: domain.endDate_7,
      topGroupsAbsences: domain.topGroupsAbsences?.map((e) =>
          TopGroupAbsencesModel.fromDomain(e)).toList(),

      startDate_8: domain.startDate_8,
      endDate_8: domain.endDate_8,
      topGroupsAttendance: domain.topGroupsAttendance?.map((e) =>
          TopGroupAttendanceModel.fromDomain(e)).toList(),
    );
  }
}