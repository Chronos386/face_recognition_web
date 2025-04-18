import 'package:flutter/material.dart';
import '../../models/teacher_model.dart';
import '../../models/department_model.dart';
import '../../models/institute_model.dart';
import '../../widgets/dropdown_selector.dart';
import '../../widgets/frw_text_field.dart';
import '/res/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/teacher_bloc/teacher_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

class TeachersPage extends StatefulWidget {
  const TeachersPage({super.key});

  @override
  State<TeachersPage> createState() => _TeachersPageState();
}

class _TeachersPageState extends State<TeachersPage> {
  final _scrollController = ScrollController();
  List<TeacherModel> teachers = [];
  List<InstituteModel> institutes = [];
  List<DepartmentModel> departments = [];
  InstituteModel? selectedInstitute;
  DepartmentModel? selectedDepartment;

  @override
  void initState() {
    super.initState();
    context.read<TeacherBloc>().add(const TeacherEvent.loadInstitutes());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.teachers.tr()),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.green),
            onPressed: _addNewTeacher,
          ),
        ],
      ),
      body: BlocConsumer<TeacherBloc, TeacherState>(
        listener: (context, state) {
          if (state is TeacherStateError) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.error)),
              );
              context.read<TeacherBloc>().add(TeacherEvent.toLoaded(
                institutes: institutes,
                selectedInstitute: selectedInstitute,
                departments: departments,
                selectedDepartment: selectedDepartment,
                teachers: teachers,
              ));
            });
          } else if (state is TeacherStateEndedSession) {
            Navigator.pushReplacementNamed(context, 'auth');
          }
        },
        builder: (context, state) {
          if (state is TeacherStateLoadingInstitutes) {
            return _buildLoadingState();
          }
          if (state is TeacherStateLoadedInstitutes) {
            institutes = state.institutes;
            if (institutes.isNotEmpty && selectedInstitute == null) {
              selectedInstitute = institutes.first;
              context.read<TeacherBloc>().add(TeacherEvent.loadDepartments(
                instituteId: selectedInstitute!.id,
              ));
            }
          }
          if (state is TeacherStateLoadedDepartments) {
            departments = state.departments;
            if (departments.isNotEmpty && selectedDepartment == null) {
              selectedDepartment = departments.first;
              context.read<TeacherBloc>().add(TeacherEvent.loadTeachers(
                departmentId: selectedDepartment!.id,
              ));
            }
          }
          return Column(
            children: [
              _buildInstituteSelector(),
              _buildDepartmentSelector(),
              Expanded(
                child: _buildTeachersList(state),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildInstituteSelector() {
    return DropdownSelector<InstituteModel>(
      items: institutes,
      selectedItem: selectedInstitute,
      onChanged: (newValue) {
        if (newValue != null) {
          setState(() {
            selectedInstitute = newValue;
            selectedDepartment = null;
            teachers = [];
          });
          context.read<TeacherBloc>()
            ..add(TeacherEvent.loadDepartments(instituteId: newValue.id))
            ..add(TeacherEventToLoaded(
              institutes: institutes,
              selectedInstitute: newValue,
              departments: departments,
              selectedDepartment: null,
              teachers: teachers,
            ));
        }
      },
    );
  }

  Widget _buildDepartmentSelector() {
    return DropdownSelector<DepartmentModel>(
      items: departments,
      selectedItem: selectedDepartment,
      onChanged: (newValue) {
        if (newValue != null) {
          setState(() => selectedDepartment = newValue);
          context.read<TeacherBloc>()
            ..add(TeacherEvent.loadTeachers(departmentId: newValue.id))
            ..add(TeacherEventToLoaded(
              institutes: institutes,
              selectedInstitute: selectedInstitute,
              departments: departments,
              selectedDepartment: newValue,
              teachers: teachers,
            ));
        }
      },
    );
  }

  Widget _buildTeachersList(TeacherState state) {
    if (institutes.isEmpty) return Center(child: Text(LocaleKeys.no_institutes.tr()));
    if (departments.isEmpty) return Center(child: Text(LocaleKeys.no_departments.tr()));
    if (state is TeacherStateLoadingTeachers) return _buildLoadingState();
    if (state is TeacherStateLoadedTeachers) teachers = state.teachers;

    return teachers.isEmpty
        ? Center(child: Text(LocaleKeys.no_teachers.tr()))
        : ListView.builder(
      controller: _scrollController,
      itemCount: teachers.length,
      itemBuilder: (context, index) => _buildTeacherItem(teachers[index]),
    );
  }

  Widget _buildLoadingState() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildTeacherItem(TeacherModel teacher) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: ListTile(
        title: Text(teacher.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ID: ${teacher.id}'),
            Text('${LocaleKeys.department.tr()}: ${teacher.department}'),
          ],
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete, color: Colors.red),
          onPressed: () => _showDeleteDialog(teacher),
        ),
        onTap: () => _showEditDialog(teacher),
      ),
    );
  }

  void _showEditDialog(TeacherModel teacher) {
    final mainContext = context;
    final formKey = GlobalKey<FormState>();
    final teacherBloc = mainContext.read<TeacherBloc>();
    final nameController = TextEditingController(text: teacher.name);
    Future<void> loadDialogData() async {}
    List<InstituteModel> dialogInstitutes = institutes;
    List<DepartmentModel> dialogDepartments = departments;
    DepartmentModel? selectedDialogDepartment = selectedDepartment;
    InstituteModel? selectedDialogInstitute = selectedInstitute;
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
                title: Text(LocaleKeys.edit_teacher.tr()),
                content: Form(
                  key: formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        DropdownSelector<InstituteModel>(
                          isEditCreate: true,
                          items: dialogInstitutes,
                          selectedItem: selectedDialogInstitute,
                          onChanged: (newInstitute) async {
                            if (newInstitute == null) return;
                            final result = await teacherBloc.appInteractor
                                .getDepartments(newInstitute.id);
                            result.when(
                              success: (data) {
                                setState(() {
                                  selectedDialogInstitute = newInstitute;
                                  dialogDepartments = data.map(DepartmentModel
                                      .fromDomain).toList();
                                  selectedDialogDepartment = null;
                                });
                              },
                              error: (_) => Navigator.pop(mainContext),
                            );
                          },
                        ),
                        const SizedBox(height: 16),
                        DropdownSelector<DepartmentModel>(
                          isEditCreate: true,
                          items: dialogDepartments,
                          selectedItem: selectedDialogDepartment,
                          onChanged: (value) => setState(() =>
                          selectedDialogDepartment = value),
                        ),
                        const SizedBox(height: 16),
                        FrwTextField(
                          controller: nameController,
                          labelKey: LocaleKeys.name_person,
                          validator: (value) => value!.isEmpty ?
                          LocaleKeys.value_required.tr() : null,
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
                          (selectedDialogDepartment != null)) {
                        teacherBloc.add(
                          TeacherEvent.updateTeacher(
                            teachers: teachers,
                            teacherId: teacher.id,
                            departmentId: selectedDialogDepartment!.id,
                            name: nameController.text,
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

  void _addNewTeacher() {
    if (selectedDepartment == null) {
      return;
    }
    final mainContext = context;
    final formKey = GlobalKey<FormState>();
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(LocaleKeys.create_teacher.tr()),
        content: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FrwTextField(
                controller: nameController,
                labelKey: LocaleKeys.name_person,
                validator: (value) =>
                value!.isEmpty ? LocaleKeys.value_required.tr() : null,
              ),
              const SizedBox(height: 10),
              FrwTextField(
                controller: emailController,
                labelKey: LocaleKeys.email,
                validator: (value) =>
                value!.isEmpty ? LocaleKeys.value_required.tr() : null,
              ),
              const SizedBox(height: 10),
              FrwTextField(
                controller: passwordController,
                labelKey: LocaleKeys.password,
                obscureText: true,
                validator: (value) =>
                value!.isEmpty ? LocaleKeys.value_required.tr() : null,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(LocaleKeys.cancel.tr()),
          ),
          ElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                mainContext.read<TeacherBloc>().add(
                  TeacherEvent.createTeacher(
                    teachers: teachers,
                    departmentId: selectedDepartment!.id,
                    name: nameController.text,
                    email: emailController.text,
                    password: passwordController.text,
                  ),
                );
                Navigator.pop(context);
              }
            },
            child: Text(LocaleKeys.create.tr()),
          ),
        ],
      ),
    );
  }

  void _showDeleteDialog(TeacherModel teacher) {
    final mainContext = context;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(LocaleKeys.delete_teacher.tr()),
        content: Text(LocaleKeys.delete_teacher_confirm.tr()),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(LocaleKeys.cancel.tr()),
          ),
          TextButton(
            onPressed: () {
              mainContext.read<TeacherBloc>().add(
                TeacherEvent.deleteTeacher(
                  teachers: teachers,
                  teacherId: teacher.id,
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