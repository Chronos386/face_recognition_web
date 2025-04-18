// presentation/pages/data_management/groups_page.dart
import 'package:flutter/material.dart';
import '../../models/group_model.dart';
import '../../models/institute_model.dart';
import '../../widgets/dropdown_selector.dart';
import '../../widgets/frw_text_field.dart';
import '/res/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/group_bloc/group_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

class GroupsPage extends StatefulWidget {
  const GroupsPage({super.key});

  @override
  State<GroupsPage> createState() => _GroupsPageState();
}

class _GroupsPageState extends State<GroupsPage> {
  final _scrollController = ScrollController();
  List<GroupModel> groups = [];
  List<InstituteModel> institutes = [];
  InstituteModel? selectedInstitute;

  @override
  void initState() {
    super.initState();
    context.read<GroupBloc>().add(const GroupEvent.loadInstitutes());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.groups.tr()),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.green),
            onPressed: selectedInstitute != null ? _addNewGroup : null,
          ),
        ],
      ),
      body: BlocConsumer<GroupBloc, GroupState>(
        listener: (context, state) {
          if (state is GroupStateError) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.error)),
              );
              context.read<GroupBloc>().add(GroupEvent.toLoaded(
                institutes: institutes,
                selectedInstitute: selectedInstitute,
                groups: groups,
              ));
            });
          } else if (state is GroupStateEndedSession) {
            Navigator.pushReplacementNamed(context, 'auth');
          }
        },
        builder: (context, state) {
          if (state is GroupStateLoadingInstitutes) {
            return _buildLoadingState();
          }

          if (state is GroupStateLoadedInstitutes) {
            institutes = state.institutes;
            if (institutes.isNotEmpty && selectedInstitute == null) {
              selectedInstitute = institutes.first;
              context.read<GroupBloc>().add(GroupEvent.loadGroups(
                instituteId: selectedInstitute!.id,
              ));
            }
          }

          return Column(
            children: [
              _buildInstituteSelector(),
              Expanded(
                child: _buildGroupsList(state),
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
          context.read<GroupBloc>().add(GroupEvent.loadGroups(
            instituteId: newValue.id,
          ));
        }
      },
    );
  }

  Widget _buildGroupsList(GroupState state) {
    if (institutes.isEmpty) {
      return Center(child: Text(LocaleKeys.no_institutes.tr()));
    }

    if (state is GroupStateLoadingGroups) {
      return _buildLoadingState();
    }

    if (state is GroupStateLoadedGroups) {
      groups = state.groups;
    }

    return groups.isEmpty
        ? Center(child: Text(LocaleKeys.no_groups.tr()))
        : ListView.builder(
      controller: _scrollController,
      itemCount: groups.length,
      itemBuilder: (context, index) => _buildGroupItem(groups[index]),
    );
  }

  Widget _buildLoadingState() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildGroupItem(GroupModel group) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: ListTile(
        title: Text(group.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ID: ${group.id}'),
            Text('${LocaleKeys.institute_id.tr()}: ${group.instituteId}'),
          ],
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete, color: Colors.red),
          onPressed: () => _showDeleteDialog(group),
        ),
        onTap: () => _showEditDialog(group),
      ),
    );
  }

  void _showEditDialog(GroupModel group) {
    final formKey = GlobalKey<FormState>();
    final nameController = TextEditingController(text: group.name);
    final mainContext = context;
    InstituteModel? selectedInstitute = institutes.firstWhere((elem) =>
    (elem.id==group.instituteId));

    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            title: Text(LocaleKeys.edit_group.tr()),
            content: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      initialValue: group.id.toString(),
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
                    mainContext.read<GroupBloc>().add(
                      GroupEvent.updateGroup(
                        groups: groups,
                        groupId: group.id,
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

  void _addNewGroup() {
    final formKey = GlobalKey<FormState>();
    final nameController = TextEditingController();
    final mainContext = context;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(LocaleKeys.create_group.tr()),
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
                mainContext.read<GroupBloc>().add(
                  GroupEvent.createGroup(
                    groups: groups,
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

  void _showDeleteDialog(GroupModel group) {
    final mainContext = context;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(LocaleKeys.delete_group.tr()),
        content: Text(LocaleKeys.delete_group_confirm.tr()),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(LocaleKeys.cancel.tr()),
          ),
          TextButton(
            onPressed: () {
              mainContext.read<GroupBloc>().add(
                GroupEvent.deleteGroup(
                  groups: groups,
                  groupId: group.id,
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