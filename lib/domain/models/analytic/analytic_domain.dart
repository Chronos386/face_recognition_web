// domain/models/analytic/analytic_domain.dart
import 'cluster_domain.dart';
import '../group_domain.dart';
import 'statistic_domain.dart';
import 'top_student_domain.dart';
import 'top_teachers_domain.dart';
import '../institute_domain.dart';
import 'institutes_stat_domain.dart';
import 'top_group_absences_domain.dart';
import 'top_group_attendance_domain.dart';

class AnalyticDomain {
  final List<InstituteDomain>? institutes;

  final DateTime? startDate_1;
  final DateTime? endDate_1;
  final List<StatisticDomain>? universityStat;

  final InstituteDomain? institute_2;
  final List<GroupDomain>? groups_2;
  final DateTime? startDate_2;
  final DateTime? endDate_2;
  final GroupDomain? group_2;
  final List<StatisticDomain>? groupStat;

  final InstituteDomain? institute_3;
  final List<GroupDomain>? groups_3;
  final DateTime? startDate_3;
  final DateTime? endDate_3;
  final GroupDomain? group_3;
  final List<ClusterDomain>? groupClusters;

  final DateTime? startDate_4;
  final DateTime? endDate_4;
  final List<InstitutesStatDomain>? instituteStat;

  final DateTime? startDate_5;
  final DateTime? endDate_5;
  final List<TopTeachersDomain>? topTeachers;

  final DateTime? startDate_6;
  final DateTime? endDate_6;
  final List<TopStudentDomain>? topStudents;

  final DateTime? startDate_7;
  final DateTime? endDate_7;
  final List<TopGroupAbsencesDomain>? topGroupsAbsences;

  final DateTime? startDate_8;
  final DateTime? endDate_8;
  final List<TopGroupAttendanceDomain>? topGroupsAttendance;

  AnalyticDomain({
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
}