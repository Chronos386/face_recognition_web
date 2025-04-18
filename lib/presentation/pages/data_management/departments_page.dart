// presentation/pages/data_management/departments_page.dart
import 'package:flutter/material.dart';
import '../../models/institute_model.dart';
import '../../widgets/dropdown_selector.dart';
import '../../widgets/frw_text_field.dart';
import '/res/generated/locale_keys.g.dart';
import '../../models/department_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/department_bloc/department_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

class DepartmentsPage extends StatefulWidget {
  const DepartmentsPage({super.key});

  @override
  State<DepartmentsPage> createState() => _DepartmentsPageState();
}

class _DepartmentsPageState extends State<DepartmentsPage> {
  final _scrollController = ScrollController();
  List<DepartmentModel> departments = [];
  List<InstituteModel> institutes = [];
  InstituteModel? selectedInstitute;

  @override
  void initState() {
    super.initState();
    context.read<DepartmentBloc>().add(const DepartmentEvent.loadInstitutes());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.departments.tr()),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.green),
            onPressed: selectedInstitute != null ? _addNewDepartment : null,
          ),
        ],
      ),
      body: BlocConsumer<DepartmentBloc, DepartmentState>(
        listener: (context, state) {
          if (state is DepartmentStateError) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.error)),
              );
              context.read<DepartmentBloc>().add(DepartmentEvent.toLoaded(
                institutes: institutes,
                selectedInstitute: selectedInstitute,
                departments: departments,
              ));
            });
          } else if (state is DepartmentStateEndedSession) {
            Navigator.pushReplacementNamed(context, 'auth');
          }
        },
        builder: (context, state) {
          if (state is DepartmentStateLoadingInstitutes) {
            return _buildLoadingState();
          }
          if (state is DepartmentStateLoadedInstitutes) {
            institutes = state.institutes;
            if (institutes.isNotEmpty && selectedInstitute == null) {
              selectedInstitute = institutes.first;
              context.read<DepartmentBloc>().add(DepartmentEvent.loadDepartments(
                instituteId: selectedInstitute!.id,
              ));
            }
          }
          return Column(
            children: [
              _buildInstituteSelector(),
              Expanded(
                child: _buildDepartmentsList(state),
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
          setState(() => selectedInstitute = newValue);
          context.read<DepartmentBloc>().add(DepartmentEvent.loadDepartments(
            instituteId: newValue.id,
          ));
        }
      },
    );
  }

  Widget _buildDepartmentsList(DepartmentState state) {
    if (institutes.isEmpty) {
      return Center(child: Text(LocaleKeys.no_institutes.tr()));
    }

    if (state is DepartmentStateLoadingDepartments) {
      return _buildLoadingState();
    }

    if (state is DepartmentStateLoadedDepartments) {
      departments = state.departments;
    }

    return departments.isEmpty
        ? Center(child: Text(LocaleKeys.no_departments.tr()))
        : ListView.builder(
      controller: _scrollController,
      itemCount: departments.length,
      itemBuilder: (context, index) => _buildDepartmentItem(departments[index]),
    );
  }

  Widget _buildLoadingState() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildDepartmentItem(DepartmentModel department) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: ListTile(
        title: Text(department.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ID: ${department.id}'),
            Text('${LocaleKeys.institute_id.tr()}: ${department.instituteId}'),
          ],
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete, color: Colors.red),
          onPressed: () => _showDeleteDialog(department),
        ),
        onTap: () => _showEditDialog(department),
      ),
    );
  }

  void _showEditDialog(DepartmentModel department) {
    final formKey = GlobalKey<FormState>();
    final nameController = TextEditingController(text: department.name);
    final mainContext = context;
    InstituteModel? selectedInstitute = institutes.firstWhere((elem) =>
    (elem.id==department.instituteId));
    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            title: Text(LocaleKeys.edit_department.tr()),
            content: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      initialValue: department.id.toString(),
                      decoration: InputDecoration(
                        labelText: 'ID',
                        enabled: false,
                      ),
                    ),
                    const SizedBox(height: 10),
                    DropdownSelector<InstituteModel>(
                      isEditCreate: true,
                      items: institutes,
                      selectedItem: selectedInstitute,
                      onChanged: (value) => setState(() =>
                      selectedInstitute = value),
                    ),
                    const SizedBox(height: 10),
                    FrwTextField(
                      controller: nameController,
                      labelKey: LocaleKeys.name,
                      validator: (value) =>
                      value!.isEmpty ? LocaleKeys.value_required.tr() : null,
                    ),
                  ],
                ),
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
                    mainContext.read<DepartmentBloc>().add(
                      DepartmentEvent.updateDepartment(
                        departments: departments,
                        departmentId: department.id,
                        instituteId: selectedInstitute!.id,
                        name: nameController.text,
                      ),
                    );
                    Navigator.pop(context);
                  }
                },
                child: Text(LocaleKeys.save.tr()),
              ),
            ],
          );
        },
      ),
    );
  }

  void _addNewDepartment() {
    final formKey = GlobalKey<FormState>();
    final nameController = TextEditingController();
    final mainContext = context;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(LocaleKeys.create_department.tr()),
        content: Form(
          key: formKey,
          child: FrwTextField(
            controller: nameController,
            labelKey: LocaleKeys.name,
            validator: (value) =>
            value!.isEmpty ? LocaleKeys.value_required.tr() : null,
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
                mainContext.read<DepartmentBloc>().add(
                  DepartmentEvent.createDepartment(
                    departments: departments,
                    instituteId: selectedInstitute!.id,
                    name: nameController.text,
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

  void _showDeleteDialog(DepartmentModel department) {
    final mainContext = context;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(LocaleKeys.delete_department.tr()),
        content: Text(LocaleKeys.delete_department_confirm.tr()),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(LocaleKeys.cancel.tr()),
          ),
          TextButton(
            onPressed: () {
              mainContext.read<DepartmentBloc>().add(
                DepartmentEvent.deleteDepartment(
                  departments: departments,
                  departmentId: department.id,
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