import '../../models/room_model.dart';
import 'package:flutter/material.dart';
import '../../models/group_model.dart';
import '../../models/subject_model.dart';
import '../../models/teacher_model.dart';
import '../../models/building_model.dart';
import '../../models/schedule_model.dart';
import '/res/generated/locale_keys.g.dart';
import '../../models/institute_model.dart';
import '../../models/department_model.dart';
import '../../widgets/dropdown_selector.dart';
import '../../widgets/schedule_day_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/schedule_bloc/schedule_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  final _scrollController = ScrollController();
  DateTimeRange _selectedDateRange = DateTimeRange(
    start: DateTime.now().subtract(const Duration(days: 7)),
    end: DateTime.now().add(const Duration(days: 7)),
  );
  // Локальные данные
  List<InstituteModel> institutes = [];
  List<BuildingModel> buildings = [];
  List<SubjectModel> subjects = [];
  List<DepartmentModel> departments = [];
  List<TeacherModel> teachers = [];
  List<GroupModel> groups = [];
  List<RoomModel> rooms = [];
  List<ScheduleModel> schedule = [];
  // Выбранные значения
  InstituteModel? selectedInstitute;
  BuildingModel? selectedBuilding;
  SubjectModel? selectedSubject;
  DepartmentModel? selectedDepartment;
  TeacherModel? selectedTeacher;
  GroupModel? selectedGroup;
  RoomModel? selectedRoom;
  bool isGroupMode = true;

  @override
  void initState() {
    super.initState();
    context.read<ScheduleBloc>().add(const ScheduleEvent.loadInitial());
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.schedule.tr()),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.green),
            onPressed: _addNewSchedule,
          ),
        ],
      ),
      body: BlocConsumer<ScheduleBloc, ScheduleState>(
        listener: _handleStateChanges,
        builder: (context, state) {
          if (state is ScheduleStateStartLoading) {
            return Center(child: CircularProgressIndicator());
          }
          return Column(
            children: [
              _buildModeAndDateWidget(isMobile),
              _buildSelectors(state),
              Expanded(child: _buildScheduleList(state)),
            ],
          );
        },
      ),
    );
  }

  void _handleStateChanges(BuildContext context, ScheduleState state) {
    state.maybeWhen(
      startLoaded: (institutes, buildings, subjects) {
        this.institutes = institutes;
        this.buildings = buildings;
        this.subjects = subjects;
        _updateLoadedState();
      },
      loadedDepartments: (departments) {
        this.departments = departments;
        _updateLoadedState();
      },
      loadedTeachers: (teachers) {
        this.teachers = teachers;
        _updateLoadedState();
      },
      loadedGroups: (groups) {
        this.groups = groups;
        _updateLoadedState();
      },
      loadedRooms: (rooms) {
        this.rooms = rooms;
        _updateLoadedState();
      },
      loadedSchedule: (schedule) {
        this.schedule = schedule;
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
    context.read<ScheduleBloc>().add(ScheduleEvent.toLoaded(
      institutes: institutes,
      selectedInstitute: selectedInstitute,
      buildings: buildings,
      selectedBuilding: selectedBuilding,
      subjects: subjects,
      selectedSubject: selectedSubject,
      departments: departments,
      selectedDepartment: selectedDepartment,
      teachers: teachers,
      selectedTeacher: selectedTeacher,
      groups: groups,
      selectedGroup: selectedGroup,
      rooms: rooms,
      selectedRoom: selectedRoom,
      schedule: schedule,
    ));
  }

  Widget _buildModeAndDateWidget(bool isMobile) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: isMobile ? Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildModeWidget(),
          _buildDateWidget(),
        ],
      ) : Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildModeWidget(),
          SizedBox(width: 5, height: 0),
          _buildDateWidget(),
        ],
      ),
    );
  }

  Widget _buildModeWidget() {
    return Row(
      children: [
        Switch(
          value: isGroupMode,
          onChanged: (value) {
            setState(() {
              groups = [];
              schedule = [];
              teachers = [];
              departments = [];
              selectedGroup = null;
              selectedTeacher = null;
              selectedDepartment = null;
              isGroupMode = value;
            });
            if (selectedInstitute != null) {
              if (isGroupMode) {
                context.read<ScheduleBloc>().add(
                  ScheduleEvent.loadGroups(instituteId: selectedInstitute!.id),
                );
              } else {
                context.read<ScheduleBloc>().add(
                  ScheduleEvent.loadDepartments(
                    instituteId: selectedInstitute!.id,
                  ),
                );
              }
            }
          },
        ),
        Text(isGroupMode ? LocaleKeys.group.tr() :
        LocaleKeys.teacher.tr()),
      ],
    );
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

  Widget _buildSelectors(ScheduleState state) {
    return Column(
      children: [
        DropdownSelector<InstituteModel>(
          items: institutes,
          selectedItem: selectedInstitute,
          onChanged: (value) => _handleInstituteSelected(value),
        ),
        if (isGroupMode) DropdownSelector<GroupModel>(
          items: groups,
          selectedItem: selectedGroup,
          onChanged: (value) => _handleGroupSelected(value),
        ),
        if (!isGroupMode) ...[
          DropdownSelector<DepartmentModel>(
            items: departments,
            selectedItem: selectedDepartment,
            onChanged: (value) => _handleDepartmentSelected(value),
          ),
          DropdownSelector<TeacherModel>(
            items: teachers,
            selectedItem: selectedTeacher,
            onChanged: (value) => _handleTeacherSelected(value),
          ),
        ],
      ],
    );
  }

  void _handleInstituteSelected(InstituteModel? institute) {
    setState(() => selectedInstitute = institute);
    if (isGroupMode) {
      context.read<ScheduleBloc>().add(
        ScheduleEvent.loadGroups(instituteId: institute!.id),
      );
    } else {
      context.read<ScheduleBloc>().add(
        ScheduleEvent.loadDepartments(instituteId: institute!.id),
      );
    }
  }

  void _handleDepartmentSelected(DepartmentModel? department) {
    setState(() => selectedDepartment = department);
    context.read<ScheduleBloc>().add(
      ScheduleEvent.loadTeachers(departmentId: department!.id),
    );
  }

  void _handleTeacherSelected(TeacherModel? teacher) {
    setState(() => selectedTeacher = teacher);
    _loadSchedule();
  }

  void _handleGroupSelected(GroupModel? group) {
    setState(() => selectedGroup = group);
    _loadSchedule();
  }

  void _loadSchedule() {
    if (isGroupMode && selectedGroup != null) {
      context.read<ScheduleBloc>().add(ScheduleEvent.loadGroupSchedule(
        groupId: selectedGroup!.id,
        dateStart: _selectedDateRange.start,
        dateEnd: _selectedDateRange.end,
      ));
    } else if (!isGroupMode && selectedTeacher != null) {
      context.read<ScheduleBloc>().add(ScheduleEvent.loadTeacherSchedule(
        teacherId: selectedTeacher!.id,
        dateStart: _selectedDateRange.start,
        dateEnd: _selectedDateRange.end,
      ));
    }
  }

  Widget _buildScheduleList(ScheduleState state) {
    if (state is ScheduleStateLoadingSchedule) {
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
          onTap: _editSchedule,
          onDelete: _showDeleteDialog,
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

  void _addNewSchedule() {
    final mainContext = context;
    Future<void> loadDialogData() async {}
    final formKey = GlobalKey<FormState>();
    final scheduleBloc = mainContext.read<ScheduleBloc>();
    List<DepartmentModel> dialogDepartments = [];
    List<TeacherModel> dialogTeachers = [];
    List<GroupModel> dialogGroups = [];
    List<RoomModel> dialogRooms = [];
    // Выбранные значения
    InstituteModel? selectedDialogTeacherInstitute;
    InstituteModel? selectedDialogGroupInstitute;
    BuildingModel? selectedDialogBuilding;
    SubjectModel? selectedDialogSubject;
    DepartmentModel? selectedDialogDepartment;
    TeacherModel? selectedDialogTeacher;
    GroupModel? selectedDialogGroup;
    RoomModel? selectedDialogRoom;
    DateTime? selectedDate;
    TimeOfDay? selectedTimeStart;
    TimeOfDay? selectedTimeEnd;
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
                title: Text(LocaleKeys.add_schedule.tr()),
                content: Form(
                  key: formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          readOnly: true,
                          decoration: InputDecoration(
                            labelText: selectedDate != null
                                ? DateFormat('dd.MM.yyyy').format(selectedDate!)
                                : LocaleKeys.date.tr(),
                            suffixIcon: const Icon(Icons.calendar_today),
                          ),
                          onTap: () async {
                            final pickedDate = await showDatePicker(
                              context: dialogContext,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2100),
                            );
                            if (pickedDate != null) {
                              setState(() => selectedDate = pickedDate);
                            }
                          },
                          validator: (value) =>
                          selectedDate == null ? LocaleKeys.select_date.tr() : null,
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                readOnly: true,
                                decoration: InputDecoration(
                                  labelText: selectedTimeStart != null
                                      ? "${selectedTimeStart!.hour.toString().padLeft(2, '0')}:"
                                      "${selectedTimeStart!.minute.toString().padLeft(2, '0')}"
                                      : LocaleKeys.start_time.tr(),
                                  suffixIcon: const Icon(Icons.access_time),
                                ),
                                onTap: () async {
                                  final pickedTime = await showTimePicker(
                                    context: dialogContext,
                                    initialTime: TimeOfDay.now(),
                                  );
                                  if (pickedTime != null) {
                                    setState(() => selectedTimeStart = pickedTime);
                                  }
                                },
                                validator: (value) =>
                                selectedTimeStart == null ? LocaleKeys.select_start_time.tr() : null,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: TextFormField(
                                readOnly: true,
                                decoration: InputDecoration(
                                  labelText: selectedTimeEnd != null
                                      ? "${selectedTimeEnd!.hour.toString().padLeft(2, '0')}:"
                                      "${selectedTimeEnd!.minute.toString().padLeft(2, '0')}"
                                      : LocaleKeys.end_time.tr(),
                                  suffixIcon: const Icon(Icons.access_time),
                                ),
                                onTap: () async {
                                  final pickedTime = await showTimePicker(
                                    context: dialogContext,
                                    initialTime: TimeOfDay.now(),
                                  );
                                  if (pickedTime != null) {
                                    setState(() => selectedTimeEnd = pickedTime);
                                  }
                                },
                                validator: (value) {
                                  if (selectedTimeEnd == null) {
                                    return LocaleKeys.select_end_time.tr();
                                  }
                                  if (selectedTimeStart != null &&
                                      selectedTimeEnd!.hour * 60 + selectedTimeEnd!.minute <=
                                          selectedTimeStart!.hour * 60 +
                                              selectedTimeStart!.minute) {
                                    return LocaleKeys.time_end_error.tr();
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        DropdownSelector<SubjectModel>(
                          isEditCreate: true,
                          items: subjects,
                          selectedItem: selectedDialogSubject,
                          onChanged: (value) => setState(() =>
                          selectedDialogSubject = value),
                        ),
                        const SizedBox(height: 20),
                        DropdownSelector<BuildingModel>(
                          isEditCreate: true,
                          items: buildings,
                          selectedItem: selectedDialogBuilding,
                          onChanged: (newBuilding) async {
                            if (newBuilding == null) return;
                            final result = await scheduleBloc.appInteractor
                                .getRooms(newBuilding.id);
                            result.when(
                              success: (data) {
                                setState(() {
                                  selectedDialogBuilding = newBuilding;
                                  dialogRooms = data.map(RoomModel
                                      .fromDomain).toList();
                                  selectedDialogRoom = null;
                                });
                              },
                              error: (_) => Navigator.pop(mainContext),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        DropdownSelector<RoomModel>(
                          isEditCreate: true,
                          items: dialogRooms,
                          selectedItem: selectedDialogRoom,
                          onChanged: (value) => setState(() =>
                          selectedDialogRoom = value),
                        ),
                        const SizedBox(height: 20),
                        Text(LocaleKeys.teacher.tr()),
                        const SizedBox(height: 5),
                        DropdownSelector<InstituteModel>(
                          isEditCreate: true,
                          items: institutes,
                          selectedItem: selectedDialogTeacherInstitute,
                          onChanged: (newInstitute) async {
                            if (newInstitute == null) return;
                            final result = await scheduleBloc.appInteractor
                                .getDepartments(newInstitute.id);
                            result.when(
                              success: (data) {
                                setState(() {
                                  selectedDialogTeacherInstitute = newInstitute;
                                  dialogDepartments = data.map(DepartmentModel
                                      .fromDomain).toList();
                                  selectedDialogDepartment = null;
                                });
                              },
                              error: (_) => Navigator.pop(mainContext),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        DropdownSelector<DepartmentModel>(
                          isEditCreate: true,
                          items: dialogDepartments,
                          selectedItem: selectedDialogDepartment,
                          onChanged: (newDepartment) async {
                            if (newDepartment == null) return;
                            final result = await scheduleBloc.appInteractor
                                .getTeachers(newDepartment.id);
                            result.when(
                              success: (data) {
                                setState(() {
                                  selectedDialogDepartment = newDepartment;
                                  dialogTeachers = data.map(TeacherModel
                                      .fromDomain).toList();
                                  selectedDialogTeacher = null;
                                });
                              },
                              error: (_) => Navigator.pop(mainContext),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        DropdownSelector<TeacherModel>(
                          isEditCreate: true,
                          items: dialogTeachers,
                          selectedItem: selectedDialogTeacher,
                          onChanged: (value) => setState(() =>
                          selectedDialogTeacher = value),
                        ),
                        const SizedBox(height: 20),
                        Text(LocaleKeys.group.tr()),
                        const SizedBox(height: 5),
                        DropdownSelector<InstituteModel>(
                          isEditCreate: true,
                          items: institutes,
                          selectedItem: selectedDialogGroupInstitute,
                          onChanged: (newInstitute) async {
                            if (newInstitute == null) return;
                            final result = await scheduleBloc.appInteractor
                                .getGroups(newInstitute.id);
                            result.when(
                              success: (data) {
                                setState(() {
                                  selectedDialogGroupInstitute = newInstitute;
                                  dialogGroups = data.map(GroupModel
                                      .fromDomain).toList();
                                  selectedDialogGroup = null;
                                });
                              },
                              error: (_) => Navigator.pop(mainContext),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        DropdownSelector<GroupModel>(
                          isEditCreate: true,
                          items: dialogGroups,
                          selectedItem: selectedDialogGroup,
                          onChanged: (value) => setState(() =>
                          selectedDialogGroup = value),
                        ),
                      ],
                    ),
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(mainContext),
                    child: Text(LocaleKeys.cancel.tr()),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate() &&
                          (selectedDialogTeacher != null) &&
                          (selectedDialogSubject != null) &&
                          (selectedDialogGroup != null) &&
                          (selectedDialogRoom != null) &&
                          (selectedTimeStart != null) &&
                          (selectedTimeEnd != null) &&
                          (selectedDate != null)) {
                        final timeStart = DateTime(
                          selectedDate!.year,
                          selectedDate!.month,
                          selectedDate!.day,
                          selectedTimeStart!.hour,
                          selectedTimeStart!.minute,
                        );
                        final timeEnd = DateTime(
                          selectedDate!.year,
                          selectedDate!.month,
                          selectedDate!.day,
                          selectedTimeEnd!.hour,
                          selectedTimeEnd!.minute,
                        );
                        scheduleBloc.add(
                          ScheduleEvent.createSchedule(
                            schedule: schedule,
                            byGroup: isGroupMode,
                            scheduleStart: _selectedDateRange.start,
                            scheduleEnd: _selectedDateRange.end,
                            timeStart: timeStart,
                            timeEnd: timeEnd,
                            groupId: selectedDialogGroup!.id,
                            subjectId: selectedDialogSubject!.id,
                            teacherId:selectedDialogTeacher!.id,
                            roomId: selectedDialogRoom!.id,
                          ),
                        );
                        Navigator.pop(mainContext);
                      }
                    },
                    child: Text(LocaleKeys.save.tr()),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  void _editSchedule(ScheduleModel model) {
    final mainContext = context;
    final scheduleBloc = mainContext.read<ScheduleBloc>();
    final formKey = GlobalKey<FormState>();
    List<DepartmentModel> dialogDepartments = departments;
    List<TeacherModel> dialogTeachers = teachers;
    List<GroupModel> dialogGroups = groups;
    List<RoomModel> dialogRooms = [];
    // Выбранные значения
    InstituteModel? selectedDialogTeacherInstitute = !isGroupMode ?
    selectedInstitute : null;
    InstituteModel? selectedDialogGroupInstitute = isGroupMode ?
    selectedInstitute : null;
    BuildingModel? selectedDialogBuilding;
    SubjectModel? selectedDialogSubject = subjects.firstWhere((item)
    {return item.id == model.subjectId;});
    DepartmentModel? selectedDialogDepartment = selectedDepartment;
    TeacherModel? selectedDialogTeacher = selectedTeacher;
    GroupModel? selectedDialogGroup = selectedGroup;
    RoomModel? selectedDialogRoom;
    DateTime? selectedDate = model.timeStart;
    TimeOfDay? selectedTimeStart = TimeOfDay.fromDateTime(model.timeStart);
    TimeOfDay? selectedTimeEnd = TimeOfDay.fromDateTime(model.timeEnd);
    Future<void> loadDialogData() async {
      final result = await scheduleBloc.appInteractor
          .getRooms(model.buildingId);
      result.when(
        success: (data) {
          selectedDialogBuilding = buildings.firstWhere((item)
          {return item.id == model.buildingId;});
          dialogRooms = data.map(RoomModel.fromDomain).toList();
          selectedDialogRoom = dialogRooms.firstWhere((item)
          {return item.id == model.roomId;});
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
                title: Text(LocaleKeys.add_schedule.tr()),
                content: Form(
                  key: formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          readOnly: true,
                          decoration: InputDecoration(
                            labelText: selectedDate != null
                                ? DateFormat('dd.MM.yyyy').format(selectedDate!)
                                : LocaleKeys.date.tr(),
                            suffixIcon: const Icon(Icons.calendar_today),
                          ),
                          onTap: () async {
                            final pickedDate = await showDatePicker(
                              context: dialogContext,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2100),
                            );
                            if (pickedDate != null) {
                              setState(() => selectedDate = pickedDate);
                            }
                          },
                          validator: (value) =>
                          selectedDate == null ? LocaleKeys.select_date.tr() : null,
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                readOnly: true,
                                decoration: InputDecoration(
                                  labelText: selectedTimeStart != null
                                      ? "${selectedTimeStart!.hour.toString().padLeft(2, '0')}:"
                                      "${selectedTimeStart!.minute.toString().padLeft(2, '0')}"
                                      : LocaleKeys.start_time.tr(),
                                  suffixIcon: const Icon(Icons.access_time),
                                ),
                                onTap: () async {
                                  final pickedTime = await showTimePicker(
                                    context: dialogContext,
                                    initialTime: TimeOfDay.now(),
                                  );
                                  if (pickedTime != null) {
                                    setState(() => selectedTimeStart = pickedTime);
                                  }
                                },
                                validator: (value) =>
                                selectedTimeStart == null ? LocaleKeys.select_start_time.tr() : null,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: TextFormField(
                                readOnly: true,
                                decoration: InputDecoration(
                                  labelText: selectedTimeEnd != null
                                      ? "${selectedTimeEnd!.hour.toString().padLeft(2, '0')}:"
                                      "${selectedTimeEnd!.minute.toString().padLeft(2, '0')}"
                                      : LocaleKeys.end_time.tr(),
                                  suffixIcon: const Icon(Icons.access_time),
                                ),
                                onTap: () async {
                                  final pickedTime = await showTimePicker(
                                    context: dialogContext,
                                    initialTime: TimeOfDay.now(),
                                  );
                                  if (pickedTime != null) {
                                    setState(() => selectedTimeEnd = pickedTime);
                                  }
                                },
                                validator: (value) {
                                  if (selectedTimeEnd == null) {
                                    return LocaleKeys.select_end_time.tr();
                                  }
                                  if (selectedTimeStart != null &&
                                      selectedTimeEnd!.hour * 60 + selectedTimeEnd!.minute <=
                                          selectedTimeStart!.hour * 60 +
                                              selectedTimeStart!.minute) {
                                    return LocaleKeys.time_end_error.tr();
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        DropdownSelector<SubjectModel>(
                          isEditCreate: true,
                          items: subjects,
                          selectedItem: selectedDialogSubject,
                          onChanged: (value) => setState(() =>
                          selectedDialogSubject = value),
                        ),
                        const SizedBox(height: 20),
                        DropdownSelector<BuildingModel>(
                          isEditCreate: true,
                          items: buildings,
                          selectedItem: selectedDialogBuilding,
                          onChanged: (newBuilding) async {
                            if (newBuilding == null) return;
                            final result = await scheduleBloc.appInteractor
                                .getRooms(newBuilding.id);
                            result.when(
                              success: (data) {
                                setState(() {
                                  selectedDialogBuilding = newBuilding;
                                  dialogRooms = data.map(RoomModel
                                      .fromDomain).toList();
                                  selectedDialogRoom = null;
                                });
                              },
                              error: (_) => Navigator.pop(mainContext),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        DropdownSelector<RoomModel>(
                          isEditCreate: true,
                          items: dialogRooms,
                          selectedItem: selectedDialogRoom,
                          onChanged: (value) => setState(() =>
                          selectedDialogRoom = value),
                        ),
                        const SizedBox(height: 20),
                        Text(LocaleKeys.teacher.tr()),
                        const SizedBox(height: 5),
                        DropdownSelector<InstituteModel>(
                          isEditCreate: true,
                          items: institutes,
                          selectedItem: selectedDialogTeacherInstitute,
                          onChanged: (newInstitute) async {
                            if (newInstitute == null) return;
                            final result = await scheduleBloc.appInteractor
                                .getDepartments(newInstitute.id);
                            result.when(
                              success: (data) {
                                setState(() {
                                  selectedDialogTeacherInstitute = newInstitute;
                                  dialogDepartments = data.map(DepartmentModel
                                      .fromDomain).toList();
                                  selectedDialogDepartment = null;
                                });
                              },
                              error: (_) => Navigator.pop(mainContext),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        DropdownSelector<DepartmentModel>(
                          isEditCreate: true,
                          items: dialogDepartments,
                          selectedItem: selectedDialogDepartment,
                          onChanged: (newDepartment) async {
                            if (newDepartment == null) return;
                            final result = await scheduleBloc.appInteractor
                                .getTeachers(newDepartment.id);
                            result.when(
                              success: (data) {
                                setState(() {
                                  selectedDialogDepartment = newDepartment;
                                  dialogTeachers = data.map(TeacherModel
                                      .fromDomain).toList();
                                  selectedDialogTeacher = null;
                                });
                              },
                              error: (_) => Navigator.pop(mainContext),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        DropdownSelector<TeacherModel>(
                          isEditCreate: true,
                          items: dialogTeachers,
                          selectedItem: selectedDialogTeacher,
                          onChanged: (value) => setState(() =>
                          selectedDialogTeacher = value),
                        ),
                        const SizedBox(height: 20),
                        Text(LocaleKeys.group.tr()),
                        const SizedBox(height: 5),
                        DropdownSelector<InstituteModel>(
                          isEditCreate: true,
                          items: institutes,
                          selectedItem: selectedDialogGroupInstitute,
                          onChanged: (newInstitute) async {
                            if (newInstitute == null) return;
                            final result = await scheduleBloc.appInteractor
                                .getGroups(newInstitute.id);
                            result.when(
                              success: (data) {
                                setState(() {
                                  selectedDialogGroupInstitute = newInstitute;
                                  dialogGroups = data.map(GroupModel
                                      .fromDomain).toList();
                                  selectedDialogGroup = null;
                                });
                              },
                              error: (_) => Navigator.pop(mainContext),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        DropdownSelector<GroupModel>(
                          isEditCreate: true,
                          items: dialogGroups,
                          selectedItem: selectedDialogGroup,
                          onChanged: (value) => setState(() =>
                          selectedDialogGroup = value),
                        ),
                      ],
                    ),
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(mainContext),
                    child: Text(LocaleKeys.cancel.tr()),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate() &&
                          (selectedDialogTeacher != null) &&
                          (selectedDialogSubject != null) &&
                          (selectedDialogGroup != null) &&
                          (selectedDialogRoom != null) &&
                          (selectedTimeStart != null) &&
                          (selectedTimeEnd != null) &&
                          (selectedDate != null)) {
                        final timeStart = DateTime(
                          selectedDate!.year,
                          selectedDate!.month,
                          selectedDate!.day,
                          selectedTimeStart!.hour,
                          selectedTimeStart!.minute,
                        );
                        final timeEnd = DateTime(
                          selectedDate!.year,
                          selectedDate!.month,
                          selectedDate!.day,
                          selectedTimeEnd!.hour,
                          selectedTimeEnd!.minute,
                        );
                        scheduleBloc.add(
                          ScheduleEvent.updateSchedule(
                            scheduleId: model.id,
                            schedule: schedule,
                            byGroup: isGroupMode,
                            scheduleStart: _selectedDateRange.start,
                            scheduleEnd: _selectedDateRange.end,
                            timeStart: timeStart,
                            timeEnd: timeEnd,
                            groupId: selectedDialogGroup!.id,
                            subjectId: selectedDialogSubject!.id,
                            teacherId:selectedDialogTeacher!.id,
                            roomId: selectedDialogRoom!.id,
                          ),
                        );
                        Navigator.pop(mainContext);
                      }
                    },
                    child: Text(LocaleKeys.save.tr()),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  void _showDeleteDialog(ScheduleModel scheduleTapped) {
    final mainContext = context;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(LocaleKeys.delete_schedule.tr()),
        content: Text(LocaleKeys.delete_schedule_confirm.tr()),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(LocaleKeys.cancel.tr()),
          ),
          TextButton(
            onPressed: () {
              mainContext.read<ScheduleBloc>().add(
                ScheduleEvent.deleteSchedule(
                  schedule: schedule,
                  scheduleId: scheduleTapped.id,
                ),
              );
              Navigator.pop(context);
            },
            child: Text(
              LocaleKeys.delete.tr(),
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}