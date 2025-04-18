import 'package:flutter/material.dart';
import '../../models/group_model.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../models/institute_model.dart';
import '/res/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/analytic/analytic_data.dart';
import '../../models/analytic/cluster_model.dart';
import '../../models/analytic/statistic_model.dart';
import '../../bloc/analytics_bloc/analytics_bloc.dart';
import '../../models/analytic/institutes_stat_model.dart';
import 'package:easy_localization/easy_localization.dart';

class AnalyticsPage extends StatefulWidget {
  const AnalyticsPage({super.key});

  @override
  State<AnalyticsPage> createState() => _AnalyticsPageState();
}

class _AnalyticsPageState extends State<AnalyticsPage> {
  late AnalyticData data;
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<AnalyticsBloc>().add(const AnalyticsEventGetData());
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 1000;
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.analytics.tr()),
      ),
      body: BlocConsumer<AnalyticsBloc, AnalyticsState>(
        listener: (context, state) {
          if (state is AnalyticsStateError) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.error)),
              );
              context.read<AnalyticsBloc>().add(const AnalyticsEventToLoaded());
            });
          } else if (state is AnalyticsStateEndedSession) {
            Navigator.pushReplacementNamed(context, 'auth');
          }
        },
        builder: (context, state) {
          if (state is AnalyticsStateLoading) {
            return _buildLoadingState();
          } if (state is AnalyticsStateLoaded) {
            data = state.data;
          }
          return _buildLoadedState(isMobile, state);
        },
      ),
    );
  }

  Widget _buildLoadingState() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildLoadedState(bool isMobile, AnalyticsState state) {
    return SingleChildScrollView(
      controller: _scrollController,
      padding: const EdgeInsets.all(16),
      child: isMobile ? _buildMobileLayout(data, state) :
      _buildQuickActionsGrid(data, state),
    );
  }

  Widget _buildMobileLayout(AnalyticData data, AnalyticsState state) {
    return Column(
      children: [
        _buildUniversityAttendance(data, state is AnalyticsStateLoadEx1),
        const SizedBox(height: 24),
        _buildGroupAttendance(data, state is AnalyticsStateLoadEx2),
        const SizedBox(height: 24),
        _buildGroupClusters(data, state is AnalyticsStateLoadEx3),
        const SizedBox(height: 24),
        _buildInstitutesAnalysis(data, state is AnalyticsStateLoadEx4),
        const SizedBox(height: 24),
        _buildTopTeachers(data, true, state is AnalyticsStateLoadEx5),
        const SizedBox(height: 24),
        _buildTopStudents(data, true, state is AnalyticsStateLoadEx6),
        const SizedBox(height: 24),
        _buildTopGroupsAbs(data, true, state is AnalyticsStateLoadEx7),
        const SizedBox(height: 24),
        _buildTopGroupsAtd(data, true, state is AnalyticsStateLoadEx8),
      ],
    );
  }

  Widget _buildQuickActionsGrid(AnalyticData data, AnalyticsState state) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final cardWidth = (screenWidth - 24 * 2) / 2;
        const cardHeight = 500.0;
        return Wrap(
          spacing: 24,
          runSpacing: 24,
          children: [
            SizedBox(
              width: cardWidth,
              height: cardHeight,
              child: _buildUniversityAttendance(data, state is AnalyticsStateLoadEx1),
            ),
            SizedBox(
              width: cardWidth,
              height: cardHeight,
              child: _buildGroupAttendance(data, state is AnalyticsStateLoadEx2),
            ),
            SizedBox(
              width: cardWidth,
              height: cardHeight,
              child: _buildGroupClusters(data, state is AnalyticsStateLoadEx3),
            ),
            SizedBox(
              width: cardWidth,
              height: cardHeight,
              child: _buildInstitutesAnalysis(data, state is AnalyticsStateLoadEx4),
            ),
            SizedBox(
              width: cardWidth,
              height: cardHeight,
              child: _buildTopTeachers(data, false, state is AnalyticsStateLoadEx5),
            ),
            SizedBox(
              width: cardWidth,
              height: cardHeight,
              child: _buildTopStudents(data, false, state is AnalyticsStateLoadEx6),
            ),
            SizedBox(
              width: cardWidth,
              height: cardHeight,
              child: _buildTopGroupsAbs(data, false, state is AnalyticsStateLoadEx7),
            ),
            SizedBox(
              width: cardWidth,
              height: cardHeight,
              child: _buildTopGroupsAtd(data, false, state is AnalyticsStateLoadEx8),
            ),
          ],
        );
      },
    );
  }

  Widget _buildUniversityAttendance(AnalyticData data, bool isLoaded) {
    return _buildChartSection(
      isLoading: isLoaded,
      title: LocaleKeys.university_attendance.tr(),
      dates: [data.startDate_1, data.endDate_1],
      onDatePicked: (start, end) => context.read<AnalyticsBloc>().add(
        AnalyticsEventGetUniversityAttendance(start, end),
      ),
      chart: data.universityStat?.isNotEmpty ?? false
          ? _buildLineChart(data.universityStat!)
          : Text(LocaleKeys.no_data.tr()),
    );
  }

  Widget _buildGroupAttendance(AnalyticData data, bool isLoaded) {
    return Column(
      children: [
        _buildGroupSelector(
          institute: data.institute_2,
          groups: data.groups_2,
          selectedGroup: data.group_2,
          onInstituteChanged: (inst) => context.read<AnalyticsBloc>().add(
              AnalyticsEventLoadGroupsEx2(inst)),
          onGroupChanged: (group) => context.read<AnalyticsBloc>().add(
            AnalyticsEventGetGroupAttendance(
              group,
              data.startDate_2 ?? DateTime.now(),
              data.endDate_2 ?? DateTime.now(),
            ),
          ),
        ),
        _buildChartSection(
          isLoading: isLoaded,
          title: LocaleKeys.group_attendance.tr(),
          dates: [data.startDate_2, data.endDate_2],
          onDatePicked: (start, end) {
            if (data.group_2 != null) {
              context.read<AnalyticsBloc>().add(
                AnalyticsEventGetGroupAttendance(data.group_2!, start, end),
              );
            }
          },
          chart: data.groupStat?.isNotEmpty ?? false
              ? _buildLineChart(data.groupStat!)
              : Text(LocaleKeys.choose_data.tr()),
        ),
      ],
    );
  }

  Widget _buildGroupClusters(AnalyticData data, bool isLoaded) {
    return Column(
      children: [
        _buildGroupSelector(
          institute: data.institute_3,
          groups: data.groups_3,
          selectedGroup: data.group_3,
          onInstituteChanged: (inst) => context.read<AnalyticsBloc>().add(
              AnalyticsEventLoadGroupsEx3(inst)),
          onGroupChanged: (group) => context.read<AnalyticsBloc>().add(
            AnalyticsEventGetGroupClusters(
              group,
              data.startDate_3 ?? DateTime.now(),
              data.endDate_3 ?? DateTime.now(),
            ),
          ),
        ),
        _buildChartSection(
          isLoading: isLoaded,
          title: LocaleKeys.group_data.tr(),
          dates: [data.startDate_3, data.endDate_3],
          onDatePicked: (start, end) {
            if (data.group_3 != null) {
              context.read<AnalyticsBloc>().add(
                AnalyticsEventGetGroupClusters(data.group_3!, start, end),
              );
            }
          },
          chart: data.groupClusters?.isNotEmpty ?? false
              ? _buildClusters(data.groupClusters!)
              : Text(LocaleKeys.choose_data.tr()),
        ),
      ],
    );
  }

  Widget _buildInstitutesAnalysis(AnalyticData data, bool isLoaded) {
    return _buildChartSection(
      isLoading: isLoaded,
      title: LocaleKeys.institute_attendance.tr(),
      dates: [data.startDate_4, data.endDate_4],
      onDatePicked: (start, end) => context.read<AnalyticsBloc>().add(
        AnalyticsEventGetInstitutesAnalysis(start, end),
      ),
      chart: data.instituteStat?.isNotEmpty ?? false
          ? _buildBarChart(data.instituteStat!)
          : Text(LocaleKeys.no_data.tr()),
    );
  }

  Widget _buildTopTeachers(AnalyticData data, bool isMobile, bool isLoading) {
    return isMobile ? _buildTopListSectionMobile(
      icon: Icons.person,
      title: LocaleKeys.top_teachers.tr(),
      isLoading: isLoading,
      dates: [data.startDate_5, data.endDate_5],
      onDatePicked: (start, end) => context.read<AnalyticsBloc>().add(
        AnalyticsEventGetTopTeachers(start, end),
      ),
      items: data.topTeachers?.map((t) =>
          _TopListItem(
            title: t.name,
            subtitle: t.totalClasses.toString(),
            value: '${t.attendancePercent.toStringAsFixed(1)}%',
          ),
      ).toList(),
    ) : _buildTopListSection(
      icon: Icons.person,
      title: LocaleKeys.top_teachers.tr(),
      isLoading: isLoading,
      dates: [data.startDate_5, data.endDate_5],
      onDatePicked: (start, end) => context.read<AnalyticsBloc>().add(
        AnalyticsEventGetTopTeachers(start, end),
      ),
      items: data.topTeachers?.map((t) =>
          _TopListItem(
            title: t.name,
            subtitle: t.totalClasses.toString(),
            value: '${t.attendancePercent.toStringAsFixed(1)}%',
          ),
      ).toList(),
    );
  }

  Widget _buildTopStudents(AnalyticData data, bool isMobile, bool isLoading) {
    return isMobile ? _buildTopListSectionMobile(
      icon: Icons.person,
      title: LocaleKeys.top_students.tr(),
      isLoading: isLoading,
      dates: [data.startDate_6, data.endDate_6],
      onDatePicked: (start, end) => context.read<AnalyticsBloc>().add(
        AnalyticsEvent.getTopStudentsAbsences(start, end),
      ),
      items: data.topStudents?.map((t) =>
          _TopListItem(
            title: t.name,
            subtitle: t.group,
            value: t.absencesCount.toString(),
          ),
      ).toList(),
    ) : _buildTopListSection(
      icon: Icons.person,
      title: LocaleKeys.top_students.tr(),
      isLoading: isLoading,
      dates: [data.startDate_6, data.endDate_6],
      onDatePicked: (start, end) => context.read<AnalyticsBloc>().add(
        AnalyticsEvent.getTopStudentsAbsences(start, end),
      ),
      items: data.topStudents?.map((t) =>
          _TopListItem(
            title: t.name,
            subtitle: t.group,
            value:t.absencesCount.toString(),
          ),
      ).toList(),
    );
  }

  Widget _buildTopGroupsAbs(AnalyticData data, bool isMobile, bool isLoading) {
    return isMobile ? _buildTopListSectionMobile(
      icon: Icons.group,
      title: LocaleKeys.top_groups_abs.tr(),
      isLoading: isLoading,
      dates: [data.startDate_7, data.endDate_7],
      onDatePicked: (start, end) => context.read<AnalyticsBloc>().add(
        AnalyticsEvent.getTopGroupAbsences(start, end),
      ),
      items: data.topGroupsAbsences?.map((t) =>
          _TopListItem(
            title: t.name,
            value: t.absencesCount.toString(),
          ),
      ).toList(),
    ) : _buildTopListSection(
      icon: Icons.group,
      title: LocaleKeys.top_groups_abs.tr(),
      isLoading: isLoading,
      dates: [data.startDate_7, data.endDate_7],
      onDatePicked: (start, end) => context.read<AnalyticsBloc>().add(
        AnalyticsEvent.getTopGroupAbsences(start, end),
      ),
      items: data.topGroupsAbsences?.map((t) =>
          _TopListItem(
            title: t.name,
            value: t.absencesCount.toString(),
          ),
      ).toList(),
    );
  }

  Widget _buildTopGroupsAtd(AnalyticData data, bool isMobile, bool isLoading) {
    return isMobile ? _buildTopListSectionMobile(
      icon: Icons.group,
      title: LocaleKeys.top_groups_at.tr(),
      isLoading: isLoading,
      dates: [data.startDate_8, data.endDate_8],
      onDatePicked: (start, end) => context.read<AnalyticsBloc>().add(
        AnalyticsEvent.getTopGroupAttendance(start, end),
      ),
      items: data.topGroupsAttendance?.map((t) =>
          _TopListItem(
            title: t.name,
            subtitle: t.totalAttendance.toString(),
            value: "${t.attendancePercent}%",
          ),
      ).toList(),
    ) : _buildTopListSection(
      icon: Icons.group,
      title: LocaleKeys.top_groups_at.tr(),
      isLoading: isLoading,
      dates: [data.startDate_8, data.endDate_8],
      onDatePicked: (start, end) => context.read<AnalyticsBloc>().add(
        AnalyticsEvent.getTopGroupAttendance(start, end),
      ),
      items: data.topGroupsAttendance?.map((t) =>
          _TopListItem(
            title: t.name,
            subtitle: t.totalAttendance.toString(),
            value: "${t.attendancePercent}%",
          ),
      ).toList(),
    );
  }

  Widget _buildChartSection({
    required String title,
    required bool isLoading,
    required List<DateTime?> dates,
    required Function(DateTime, DateTime) onDatePicked,
    required Widget chart,
  }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.titleLarge,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  _buildDateRangePicker(dates, onDatePicked),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 300,
                child: isLoading ?
                Center(child: CircularProgressIndicator(),) :
                (chart is LineChart || chart is BarChart) ?
                chart : SingleChildScrollView(child: chart),
              ),
            ],
        ),
      ),
    );
  }

  Widget _buildGroupSelector({
    required InstituteModel? institute,
    required List<GroupModel>? groups,
    required GroupModel? selectedGroup,
    required Function(InstituteModel) onInstituteChanged,
    required Function(GroupModel) onGroupChanged,
  }) {
    return LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 600;
          return BlocBuilder<AnalyticsBloc, AnalyticsState>(
            builder: (context, state) {
              final isLoading = state is AnalyticsStateLoadGroupsEx2 ||
                  state is AnalyticsStateLoadGroupsEx3;
              final List<InstituteModel> currentInstitutes =
              (state is AnalyticsStateLoaded) ? state.data.institutes ?? [] : [];

              return isMobile
                  ? Column(
                children: [
                  _buildInstituteDropdown(currentInstitutes, onInstituteChanged, institute),
                  const SizedBox(height: 8),
                  _buildGroupDropdown(groups, isLoading, onGroupChanged, selectedGroup),
                ],
              )
                  : Row(
                children: [
                  Expanded(child: _buildInstituteDropdown(
                      currentInstitutes, onInstituteChanged, institute)),
                  const SizedBox(width: 8),
                  Expanded(child: _buildGroupDropdown(
                      groups, isLoading, onGroupChanged, selectedGroup)),
                ],
              );
            },
          );
        }
    );
  }

  Widget _buildInstituteDropdown(
      List<InstituteModel> institutes,
      Function(InstituteModel) onChanged,
      InstituteModel? institute
      ) {
    return DropdownButtonFormField<InstituteModel>(
      value: institute,
      isExpanded: true,
      items: institutes.map((inst) => DropdownMenuItem(
        value: inst,
        child: Text(
          inst.name,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: const TextStyle(fontSize: 14),
        ),
      )).toList(),
      onChanged: (inst) => onChanged(inst!),
      decoration: InputDecoration(
        labelText: LocaleKeys.institute.tr(),
        border: OutlineInputBorder(),
        isDense: true,
      ),
    );
  }

  Widget _buildGroupDropdown(
      List<GroupModel>? groups,
      bool isLoading,
      Function(GroupModel) onChanged,
      GroupModel? selectedGroup
      ) {
    return DropdownButtonFormField<GroupModel>(
      value: selectedGroup,
      isExpanded: true,
      items: (groups ?? []).map((group) => DropdownMenuItem(
        value: group,
        child: Text(
          group.name,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: const TextStyle(fontSize: 14),
        ),
      )).toList(),
      onChanged: isLoading ? null : (group) => onChanged(group!),
      decoration: InputDecoration(
        labelText: LocaleKeys.group.tr(),
        border: OutlineInputBorder(),
        isDense: true,
      ),
      disabledHint: isLoading
          ? Text(LocaleKeys.loading.tr(), style: TextStyle(fontSize: 14))
          : null,
    );
  }

  Widget _buildDateRangePicker(List<DateTime?> dates,
      Function(DateTime, DateTime) onPicked) {
    final start = dates[0] ?? DateTime.now();
    final end = dates[1] ?? DateTime.now();
    final format = DateFormat('dd.MM.yy');

    return TextButton(
      onPressed: () async {
        final picked = await showDateRangePicker(
          context: context,
          firstDate: DateTime(2000),
          lastDate: DateTime.now(),
          initialDateRange: DateTimeRange(start: start, end: end),
          initialEntryMode: DatePickerEntryMode.calendarOnly,
        );
        if (picked != null) {
          onPicked(picked.start, picked.end);
        }
      },
      child: Text('${format.format(start)} - ${format.format(end)}'),
    );
  }

  Widget _buildLineChart(List<StatisticModel> stats) {
    return LineChart(
      LineChartData(
        lineTouchData: LineTouchData(
          touchTooltipData: LineTouchTooltipData(
            getTooltipItems: (spots) => spots.map((spot) =>
                LineTooltipItem(
                  '${spot.y.toStringAsFixed(1)}%\n(${stats[spot.x.toInt()].attendance})',
                  const TextStyle(color: Colors.black),
                ),
            ).toList(),
          ),
        ),
        gridData: const FlGridData(show: false),
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                final date = stats[value.toInt()].date;
                return Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    DateFormat('dd.MM').format(date),
                    style: const TextStyle(fontSize: 10),
                  ),
                );
              },
              reservedSize: 40,
            ),
          ),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: stats.asMap().entries.map((e) =>
                FlSpot(e.key.toDouble(), e.value.attendancePercent),
            ).toList(),
            isCurved: true,
            color: Colors.blue,
            dotData: const FlDotData(show: false),
          ),
        ],
      ),
    );
  }

  Widget _buildBarChart(List<InstitutesStatModel> stats) {
    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.spaceAround,
        barTouchData: BarTouchData(enabled: true),
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                final name = stats[value.toInt()].name;
                return Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Transform.rotate(
                    angle: -0 * (3.1416 / 180),
                    child: Text(
                      _wrapText(name, 10),
                      style: const TextStyle(
                        fontSize: 10,
                        overflow: TextOverflow.visible,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                );
              },
              reservedSize: 60,
            ),
          ),
        ),
        barGroups: stats.asMap().entries.map((e) =>
            BarChartGroupData(
              x: e.key,
              barRods: [
                BarChartRodData(
                  toY: e.value.attendancePercent,
                  color: Colors.blue,
                  width: 20,
                ),
              ],
            ),
        ).toList(),
      ),
    );
  }

  String _wrapText(String text, int maxLength) {
    if (text.length <= maxLength) return text;
    final buffer = StringBuffer();
    var currentLineLength = 0;

    for (final word in text.split(' ')) {
      if (currentLineLength + word.length > maxLength) {
        buffer.write('\n');
        currentLineLength = 0;
      }
      buffer.write('$word ');
      currentLineLength += word.length + 1;
    }
    return buffer.toString().trim();
  }

  Widget _buildClusters(List<ClusterModel> clusters) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: clusters.length,
              separatorBuilder: (context, index) => const Divider(height: 24),
              itemBuilder: (context, index) => _buildClusterItem(clusters[index]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildClusterItem(ClusterModel cluster) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          cluster.name,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.blue,
          ),
        ),
        const SizedBox(height: 8),
        ...cluster.students.map((student) => ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(student.name),
          trailing: Text(
            '${student.attendancePercent.toStringAsFixed(1)}%',
            style: TextStyle(
              color: student.attendancePercent >= 80
                  ? Colors.green
                  : student.attendancePercent >= 50
                  ? Colors.orange
                  : Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        )),
      ],
    );
  }

  Widget _buildTopListSectionMobile({
    required String title,
    required bool isLoading,
    required IconData icon,
    required List<DateTime?> dates,
    required Function(DateTime, DateTime) onDatePicked,
    required List<_TopListItem>? items,
  }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                _buildDateRangePicker(dates, onDatePicked),
              ],
            ),
            const SizedBox(height: 16),
            isLoading ? Center(child: CircularProgressIndicator()) :
            ConstrainedBox(
              constraints: const BoxConstraints(
                minHeight: 100,
                maxHeight: 400,
              ),
              child: ListView.separated(
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: items?.length ?? 0,
                separatorBuilder: (context, index) => const Divider(height: 1),
                itemBuilder: (context, index) => _buildTopListItem(
                  items![index], icon,
                ),
              ),
            ),
            if ((items?.isEmpty ?? true) && !isLoading)
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text(LocaleKeys.no_data.tr()),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopListSection({
    required String title,
    required bool isLoading,
    required IconData icon,
    required List<DateTime?> dates,
    required Function(DateTime, DateTime) onDatePicked,
    required List<_TopListItem>? items,
  }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                _buildDateRangePicker(dates, onDatePicked),
              ],
            ),
            const SizedBox(height: 16),
            isLoading ? Expanded(child: Center(child: CircularProgressIndicator())) :
            Expanded(
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  minHeight: 100,
                  maxHeight: 400,
                ),
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemCount: items?.length ?? 0,
                  separatorBuilder: (context, index) => const Divider(height: 1),
                  itemBuilder: (context, index) => _buildTopListItem(
                    items![index], icon,
                  ),
                ),
              ),
            ),
            if ((items?.isEmpty ?? true) && !isLoading)
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Center(child: Text(LocaleKeys.no_data.tr())),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopListItem(_TopListItem item, IconData icon) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
      leading: Icon(icon, color: Colors.blue),
      title: Text(
        item.title,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: (item.subtitle != null) ? Text(item.subtitle!) : null,
      trailing: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.blue.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(item.value),
      ),
    );
  }
}

class _TopListItem {
  final String title;
  final String? subtitle;
  final String value;

  _TopListItem({
    required this.title,
    this.subtitle,
    required this.value,
  });
}