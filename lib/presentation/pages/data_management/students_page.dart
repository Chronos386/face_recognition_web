import 'package:flutter/material.dart';
import '../../models/group_model.dart';
import '../../models/student_model.dart';
import '../../models/institute_model.dart';
import '../../widgets/frw_text_field.dart';
import '/res/generated/locale_keys.g.dart';
import 'package:file_picker/file_picker.dart';
import '../../widgets/dropdown_selector.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/attendance_bloc/attendance_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

class StudentsPage extends StatefulWidget {
  const StudentsPage({super.key});

  @override
  State<StudentsPage> createState() => _StudentsPageState();
}

class _StudentsPageState extends State<StudentsPage> {
  final _scrollController = ScrollController();
  List<InstituteModel> institutes = [];
  InstituteModel? selectedInstitute;
  List<GroupModel> groups = [];
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
        title: Text(LocaleKeys.students.tr()),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.green),
            onPressed: _addNewTeacher,
          ),
        ],
      ),
      body: BlocConsumer<AttendanceBloc, AttendanceState>(
        listener: _handleStateChanges,
        builder: (context, state) {
          if (state is AttendanceStateLoadingInstitutes) {
            return Center(child: CircularProgressIndicator());
          }
          return Column(
            children: [
              _buildSelectors(state),
              Expanded(child: _buildStudentsList(state)),
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
        students = [];
        selectedInstitute = null;
        _updateLoadedState();
      },
      loadedGroups: (groups) {
        this.groups = groups;
        students = [];
        selectedGroup = null;
        _updateLoadedState();
      },
      loadedSchedule: (_, students) {
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
      schedule: [],
    ));
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
        dateStart: DateTime.now(),
        dateEnd: DateTime.now(),
      ));
    }
  }

  Widget _buildStudentsList(AttendanceState state) {
    if (state is AttendanceStateLoadingSchedule) {
      return const Center(child: CircularProgressIndicator());
    }
    if (students.isEmpty) {
      return Center(child: Text(LocaleKeys.no_students.tr()));
    }
    return ListView.builder(
      controller: _scrollController,
      itemCount: students.length,
      itemBuilder: (context, index) {
        return buildStudentItem(students[index]);
      },
    );
  }

  Widget buildStudentItem(StudentModel model) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: ListTile(
        title: Text(model.name, style: const TextStyle(fontSize: 18)),
        subtitle: Text('ID: ${model.id} | ${LocaleKeys.group_d.tr()} ${model.group}'),
        trailing: IconButton(
          icon: const Icon(Icons.delete, color: Colors.red),
          onPressed: () => _showDeleteDialog(model),
        ),
        onTap: () {_showEditDialog(model);},
      ),
    );
  }

  void _showDeleteDialog(StudentModel model) {
    BuildContext mainContext = context;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(LocaleKeys.delete_students.tr()),
        content: Text(LocaleKeys.delete_students_confirm.tr()),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(LocaleKeys.cancel.tr()),
          ),
          TextButton(
            onPressed: () {
              mainContext.read<AttendanceBloc>().add(
                AttendanceEvent.deleteStudent(
                  students: students,
                  studentId: model.id,
                ),
              );
              Navigator.pop(context);
            },
            child: Text(
              LocaleKeys.delete.tr(), style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }

  Future<PlatformFile?> _pickFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );
    if (result != null && result.files.isNotEmpty) {
      return result.files.first;
    }
    return null;
  }

  void _showEditDialog(StudentModel student) {
    final mainContext = context;
    Future<void> loadDialogData() async {}
    final formKey = GlobalKey<FormState>();
    List<GroupModel> dialogGroups = groups;
    GroupModel? selectedDialogGroup = selectedGroup;
    final studentsBloc = mainContext.read<AttendanceBloc>();
    InstituteModel? selectedDialogInstitute = selectedInstitute;
    final nameController = TextEditingController(text: student.name);
    List<PlatformFile> files = [];
    bool isPhotosSending = false;
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
                title: Text(LocaleKeys.edit_students.tr()),
                content: Form(
                  key: formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        DropdownSelector<InstituteModel>(
                          isEditCreate: true,
                          items: institutes,
                          selectedItem: selectedDialogInstitute,
                          onChanged: (newInstitute) async {
                            if (newInstitute == null) return;
                            final result = await studentsBloc.appInteractor
                                .getGroups(newInstitute.id);
                            result.when(
                              success: (data) {
                                setState(() {
                                  selectedDialogInstitute = newInstitute;
                                  dialogGroups = data.map(GroupModel
                                      .fromDomain).toList();
                                  selectedDialogGroup = null;
                                });
                              },
                              error: (_) => Navigator.pop(mainContext),
                            );
                          },
                        ),
                        const SizedBox(height: 16),
                        DropdownSelector<GroupModel>(
                          isEditCreate: true,
                          items: dialogGroups,
                          selectedItem: selectedDialogGroup,
                          onChanged: (value) => setState(() =>
                          selectedDialogGroup = value),
                        ),
                        const SizedBox(height: 16),
                        FrwTextField(
                          controller: nameController,
                          labelKey: LocaleKeys.name_person,
                          validator: (value) => value!.isEmpty ?
                          LocaleKeys.value_required.tr() : null,
                        ),
                        const SizedBox(height: 16),
                        InkWell(
                          onTap: () async {
                            final pickedFile = await _pickFile();
                            if (pickedFile != null) {
                              setState(() {
                                files.add(pickedFile);
                              });
                            }
                          },
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              "Нажмите, чтобы выбрать фото",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        if (files.isNotEmpty)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: files.map((file) {
                              final fileName = file.name;
                              return Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 4),
                                child: Row(
                                  children: [
                                    const Icon(Icons.image, color: Colors.grey),
                                    const SizedBox(width: 8),
                                    Expanded(child: Text(fileName)),
                                    IconButton(
                                      icon: const Icon(Icons.close,
                                          color: Colors.red),
                                      onPressed: () {
                                        setState(() {
                                          files.remove(file);
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              );
                            }).toList(),
                          ),
                        const SizedBox(height: 16),
                        !isPhotosSending ? ElevatedButton(
                          onPressed: files.isNotEmpty ? () async {
                            setState((){isPhotosSending = true;});
                            var result = await studentsBloc.appInteractor
                                .addEmbeddings(student.id, files);
                            result.when(
                              success: (ans) {
                                if (ans.isNotEmpty) {
                                  ScaffoldMessenger.of(mainContext).showSnackBar(
                                    SnackBar(content: Text(
                                      "${LocaleKeys.photo_errors.tr()} ($ans)",
                                    )),
                                  );
                                } else {
                                  ScaffoldMessenger.of(mainContext).showSnackBar(
                                    SnackBar(content: Text(
                                      LocaleKeys.photo_success.tr(),
                                    )),
                                  );
                                }
                              },
                              error: (code) {
                                String? error = studentsBloc.getErrorByCode(code);
                                if (error == null) {
                                  Navigator.pushReplacementNamed(context, 'auth');
                                } else {
                                  ScaffoldMessenger.of(mainContext).showSnackBar(
                                    SnackBar(content: Text(error)),
                                  );
                                }
                              },
                            );
                            Navigator.pop(mainContext);
                          } : null,
                          child: Text(LocaleKeys.download.tr()),
                        ) : CircularProgressIndicator(),
                      ],
                    ),
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => !isPhotosSending ?
                    Navigator.pop(mainContext) : null,
                    child: Text(LocaleKeys.cancel.tr()),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate() &&
                          (selectedDialogGroup != null) && !isPhotosSending) {
                        studentsBloc.add(
                          AttendanceEvent.updateStudent(
                            students: students,
                            studentId: student.id,
                            groupId: selectedDialogGroup!.id,
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
    if (selectedGroup == null) {
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
        title: Text(LocaleKeys.create_students.tr()),
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
                mainContext.read<AttendanceBloc>().add(
                  AttendanceEvent.addStudent(
                    students: students,
                    groupId: selectedGroup!.id,
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
}