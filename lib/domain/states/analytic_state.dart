// domain/states/analytic_state.dart
import '../models/group_domain.dart';
import '../models/institute_domain.dart';
import '../models/analytic/cluster_domain.dart';
import '../models/analytic/analytic_domain.dart';
import '../models/analytic/statistic_domain.dart';
import '../models/analytic/top_student_domain.dart';
import '../models/analytic/top_teachers_domain.dart';
import '../models/analytic/institutes_stat_domain.dart';
import '../models/analytic/top_group_absences_domain.dart';
import '../models/analytic/top_group_attendance_domain.dart';

class AnalyticState {
  List<InstituteDomain> institutes = [];

  DateTime? startDate_1;
  DateTime? endDate_1;
  List<StatisticDomain> universityStat = [];

  InstituteDomain? institute_2;
  List<GroupDomain> groups_2 = [];
  DateTime? startDate_2;
  DateTime? endDate_2;
  GroupDomain? group_2;
  List<StatisticDomain> groupStat = [];

  InstituteDomain? institute_3;
  List<GroupDomain> groups_3 = [];
  DateTime? startDate_3;
  DateTime? endDate_3;
  GroupDomain? group_3;
  List<ClusterDomain> groupClusters = [];

  DateTime? startDate_4;
  DateTime? endDate_4;
  List<InstitutesStatDomain> instituteStat = [];

  DateTime? startDate_5;
  DateTime? endDate_5;
  List<TopTeachersDomain> topTeachers = [];

  DateTime? startDate_6;
  DateTime? endDate_6;
  List<TopStudentDomain> topStudents = [];

  DateTime? startDate_7;
  DateTime? endDate_7;
  List<TopGroupAbsencesDomain> topGroupsAbsences = [];

  DateTime? startDate_8;
  DateTime? endDate_8;
  List<TopGroupAttendanceDomain> topGroupsAttendance = [];

  void addInstitutes(List<InstituteDomain> newInstitutes) {
    institutes.clear();
    institutes.addAll(newInstitutes);
  }

  void addInstitute(InstituteDomain newInstitute) {
    institutes.add(newInstitute);
  }

  void updateInstitute(InstituteDomain newInstitute) {
    for (var i = 0; i < institutes.length; i++) {
      if (institutes[i].id == newInstitute.id) {
        institutes[i].name = newInstitute.name;
      }
    }
  }

  void deleteInstitute(int id) {
    int index = 0;
    for (var i = 0; i < institutes.length; i++) {
      if (institutes[i].id == id) {
        index = i;
      }
    }
    institutes.removeAt(index);
  }

  void addForEx1(DateTime? startDate, DateTime? endDate,
      List<StatisticDomain> stat) {
    startDate_1 = startDate;
    endDate_1 = endDate;
    universityStat.clear();
    universityStat.addAll(stat);
  }

  void addForEx2(DateTime? startDate, DateTime? endDate, GroupDomain group,
      List<StatisticDomain> stat) {
    startDate_2 = startDate;
    endDate_2 = endDate;
    group_2 = group;
    groupStat.clear();
    groupStat.addAll(stat);
  }

  void addGroupsEx2(InstituteDomain institute, List<GroupDomain> groups) {
    institute_2 = institute;
    groupStat.clear();
    group_2 = null;
    groups_2.clear();
    groups_2.addAll(groups);
  }

  void addForEx3(DateTime? startDate, DateTime? endDate, GroupDomain group,
      List<ClusterDomain> stat) {
    startDate_3 = startDate;
    endDate_3 = endDate;
    group_3 = group;
    groupClusters.clear();
    groupClusters.addAll(stat);
  }

  void addGroupsEx3(InstituteDomain institute, List<GroupDomain> groups) {
    institute_3 = institute;
    groupClusters.clear();
    group_3 = null;
    groups_3.clear();
    groups_3.addAll(groups);
  }

  void addForEx4(DateTime? startDate, DateTime? endDate,
      List<InstitutesStatDomain> stat) {
    startDate_4 = startDate;
    endDate_4 = endDate;
    instituteStat.clear();
    instituteStat.addAll(stat);
  }

  void addForEx5(DateTime? startDate, DateTime? endDate,
      List<TopTeachersDomain> stat) {
    startDate_5 = startDate;
    endDate_5 = endDate;
    topTeachers.clear();
    topTeachers.addAll(stat);
  }

  void addForEx6(DateTime? startDate, DateTime? endDate,
      List<TopStudentDomain> stat) {
    startDate_6 = startDate;
    endDate_6 = endDate;
    topStudents.clear();
    topStudents.addAll(stat);
  }

  void addForEx7(DateTime? startDate, DateTime? endDate,
      List<TopGroupAbsencesDomain> stat) {
    startDate_7 = startDate;
    endDate_7 = endDate;
    topGroupsAbsences.clear();
    topGroupsAbsences.addAll(stat);
  }

  void addForEx8(DateTime? startDate, DateTime? endDate,
      List<TopGroupAttendanceDomain> stat) {
    startDate_8 = startDate;
    endDate_8 = endDate;
    topGroupsAttendance.clear();
    topGroupsAttendance.addAll(stat);
  }

  void clearState() {
    institutes.clear();

    universityStat.clear();
    institute_2 = null;
    groups_2.clear();
    groupStat.clear();
    group_2 = null;
    groupClusters.clear();
    institute_3 = null;
    groups_3.clear();
    group_3 = null;
    instituteStat.clear();
    topTeachers.clear();
    topStudents.clear();
    topGroupsAbsences.clear();
    topGroupsAttendance.clear();

    startDate_1 = null;
    endDate_1 = null;
    startDate_2 = null;
    endDate_2 = null;
    startDate_3 = null;
    endDate_3 = null;
    startDate_4 = null;
    endDate_4 = null;
    startDate_5 = null;
    endDate_5 = null;
    startDate_6 = null;
    endDate_6 = null;
    startDate_7 = null;
    endDate_7 = null;
    startDate_8 = null;
    endDate_8 = null;
  }

  AnalyticDomain returnData() {
    return AnalyticDomain(
      institutes: institutes,

      startDate_1: startDate_1,
      endDate_1: endDate_1,
      universityStat: universityStat.isEmpty ? null : universityStat,

      institute_2: institute_2,
      groups_2: groups_2,
      startDate_2: startDate_2,
      endDate_2: endDate_2,
      group_2: group_2,
      groupStat: groupStat.isEmpty ? null : groupStat,

      institute_3: institute_3,
      groups_3: groups_3,
      startDate_3: startDate_3,
      endDate_3: endDate_3,
      group_3: group_3,
      groupClusters: groupClusters.isEmpty ? null : groupClusters,

      startDate_4: startDate_4,
      endDate_4: endDate_4,
      instituteStat: instituteStat.isEmpty ? null : instituteStat,

      startDate_5: startDate_5,
      endDate_5: endDate_5,
      topTeachers: topTeachers.isEmpty ? null : topTeachers,

      startDate_6: startDate_6,
      endDate_6: endDate_6,
      topStudents: topStudents.isEmpty ? null : topStudents,

      startDate_7: startDate_7,
      endDate_7: endDate_7,
      topGroupsAbsences: topGroupsAbsences.isEmpty ? null : topGroupsAbsences,

      startDate_8: startDate_8,
      endDate_8: endDate_8,
      topGroupsAttendance: topGroupsAttendance.isEmpty ? null
          : topGroupsAttendance,
    );
  }
}