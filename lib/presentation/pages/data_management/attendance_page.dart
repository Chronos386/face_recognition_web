import '../../models/group_model.dart';
import 'package:flutter/material.dart';
import '../../models/schedule_model.dart';
import '../../models/institute_model.dart';
import '/res/generated/locale_keys.g.dart';
import '../../models/attendance_model.dart';
import '../../widgets/dropdown_selector.dart';
import '../../widgets/schedule_day_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/presentation/models/student_model.dart';
import '../../bloc/attendance_bloc/attendance_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  final _scrollController = ScrollController();
  DateTimeRange _selectedDateRange = DateTimeRange(
    start: DateTime.now().subtract(const Duration(days: 7)),
    end: DateTime.now().add(const Duration(days: 7)),
  );
  List<InstituteModel> institutes = [];
  List<GroupModel> groups = [];
  List<ScheduleModel> schedule = [];
  InstituteModel? selectedInstitute;
  GroupModel? selectedGroup;
  List<StudentModel> students = [];

  @override
  void initState() {
    super.initState();
    context.read<AttendanceBloc>().add(const AttendanceEvent.loadInstitutes());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.attendance.tr()),
      ),
      body: BlocConsumer<AttendanceBloc, AttendanceState>(
        listener: _handleStateChanges,
        builder: (context, state) {
          if (state is AttendanceStateLoadingInstitutes) {
            return Center(child: CircularProgressIndicator());
          }
          return Column(
            children: [
              _buildDateWidget(),
              _buildSelectors(state),
              Expanded(child: _buildScheduleList(state)),
            ],
          );
        },
      ),
    );
  }

  void _handleStateChanges(BuildContext context, AttendanceState state) {
    state.maybeWhen(
      loadedInstitutes: (institutes) {
        this.institutes = institutes;
        groups = [];
        schedule = [];
        students = [];
        selectedInstitute = null;
        _updateLoadedState();
      },
      loadedGroups: (groups) {
        this.groups = groups;
        schedule = [];
        students = [];
        selectedGroup = null;
        _updateLoadedState();
      },
      loadedSchedule: (schedule, students) {
        this.schedule = schedule;
        this.students = students;
        _updateLoadedState();
      },
      error: (error) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(error)),
        );
        _updateLoadedState();
      },
      endedSession: () => Navigator.pushReplacementNamed(context, 'auth'),
      orElse: () {},
    );
  }

  void _updateLoadedState() {
    context.read<AttendanceBloc>().add(AttendanceEvent.toLoaded(
      institutes: institutes,
      selectedInstitute: selectedInstitute,
      groups: groups,
      selectedGroup: selectedGroup,
      schedule: schedule,
    ));
  }

  Widget _buildDateWidget() {
    return TextButton(
      onPressed: _selectDateRange,
      child: Text(
        '${DateFormat('dd.MM.yyyy').format(_selectedDateRange.start)
        } - ${DateFormat('dd.MM.yyyy').format(_selectedDateRange.end)}',
      ),
    );
  }

  Future<void> _selectDateRange() async {
    final newRange = await showDateRangePicker(
      context: context,
      initialDateRange: _selectedDateRange,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (newRange != null) {
      setState(() => _selectedDateRange = newRange);
      _loadSchedule();
    }
  }

  Widget _buildSelectors(AttendanceState state) {
    return Column(
      children: [
        DropdownSelector<InstituteModel>(
          items: institutes,
          selectedItem: selectedInstitute,
          onChanged: (value) {
            if (value != null) {
              setState(() => selectedInstitute = value);
              context.read<AttendanceBloc>().add(
                AttendanceEvent.loadGroups(instituteId: value.id),
              );
            }
          },
        ),
        DropdownSelector<GroupModel>(
          items: groups,
          selectedItem: selectedGroup,
          onChanged: (value) {
            setState(() => selectedGroup = value);
            _loadSchedule();
          },
        ),
      ],
    );
  }

  void _loadSchedule() {
    if (selectedGroup != null) {
      context.read<AttendanceBloc>().add(AttendanceEvent.loadSchedule(
        groupId: selectedGroup!.id,
        dateStart: _selectedDateRange.start,
        dateEnd: _selectedDateRange.end,
      ));
    }
  }

  Widget _buildScheduleList(AttendanceState state) {
    if (state is AttendanceStateLoadingSchedule) {
      return const Center(child: CircularProgressIndicator());
    }
    if (schedule.isEmpty) {
      return Center(child: Text(LocaleKeys.no_schedule.tr()));
    }
    final groupedSchedule = _groupScheduleByDate(schedule);
    return ListView.builder(
      controller: _scrollController,
      itemCount: groupedSchedule.length,
      itemBuilder: (context, index) {
        final date = groupedSchedule.keys.elementAt(index);
        final lessons = groupedSchedule[date]!;
        return ScheduleDayCard(
          date: date,
          lessons: lessons,
          schedule: schedule,
          onTap: _showAttendanceDialog,
          onDelete: null,
        );
      },
    );
  }

  Map<DateTime, List<ScheduleModel>> _groupScheduleByDate(
      List<ScheduleModel> schedule) {
    final map = <DateTime, List<ScheduleModel>>{};
    for (final lesson in schedule) {
      final date = DateTime(
        lesson.timeStart.year,
        lesson.timeStart.month,
        lesson.timeStart.day,
      );
      map.putIfAbsent(date, () => []).add(lesson);
    }
    return map;
  }

  void _showAttendanceDialog(ScheduleModel model) {
    final mainContext = context;
    final attendanceBloc = mainContext.read<AttendanceBloc>();
    List<AttendanceModel?> dialogAttendance = [];
    List<Widget> widgets = [];
    Future<void> loadDialogData() async {
      final result = await attendanceBloc.appInteractor.getAttendance(model.id);
      result.when(
        success: (data) {
          for (var student in students) {
            bool res = data.any((item) {return item.studentId == student.id;});
            if (res) {
              dialogAttendance.add(AttendanceModel.fromDomain(
                data.firstWhere((item) {return item.studentId == student.id;}),
              ));
            } else {
              dialogAttendance.add(null);
            }
            widgets.add(
              buildStudentItem(student, dialogAttendance.last, (bool isAtt) async {
                final result = await attendanceBloc.appInteractor
                    .setAttendance(data, model.id, student.id, isAtt);
                result.when(
                  success: (_) => Navigator.pop(mainContext),
                  error: (_) => Navigator.pop(mainContext),
                );
              }),
            );
          }
        },
        error: (_) => Navigator.pop(mainContext),
      );
    }
    showDialog(
      context: mainContext,
      builder: (context) => StatefulBuilder(
        builder: (dialogContext, setState) {
          return FutureBuilder(
            future: loadDialogData(),
            builder: (_, snapshot) {
              if (snapshot.connectionState != ConnectionState.done) {
                return const Center(child: CircularProgressIndicator());
              }
              return AlertDialog(
                title: Text(model.subject),
                content: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: widgets,
                  ),
                ),
              );
            },
          );
        }
      ),
    );
  }

  Widget buildStudentItem(StudentModel model, AttendanceModel? attendance,
      Function(bool) onTap) {
    final bool isPresent = attendance?.status ?? false;
    final bool isAbsent = (attendance != null) ? !attendance.status : false;
    return ListTile(
      title: Text(model.name, style: const TextStyle(fontSize: 18)),
      subtitle: Text('ID: ${model.id} | ${LocaleKeys.group_d.tr()} ${model.group}'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(
              Icons.cancel,
              color: isAbsent ? Colors.red : Colors.grey,
            ),
            onPressed: () {
              print('отсутствовал');
              onTap(false);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.check_circle,
              color: isPresent ? Colors.green : Colors.grey,
            ),
            onPressed: () {
              print('присутствовал');
              onTap(true);
            },
          ),
        ],
      ),
    );
  }
}