// // presentation/pages/data_management/institutes_page.dart
import 'package:flutter/material.dart';
import '../../models/institute_model.dart';
import '../../widgets/frw_text_field.dart';
import '/res/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/institute_bloc/institute_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

class InstitutesPage extends StatefulWidget {
  const InstitutesPage({super.key});

  @override
  State<InstitutesPage> createState() => _InstitutesPageState();
}

class _InstitutesPageState extends State<InstitutesPage> {
  final _scrollController = ScrollController();
  List<InstituteModel> institutes = [];

  @override
  void initState() {
    super.initState();
    context.read<InstituteBloc>().add(const InstituteEvent.loadInstitutes());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.institutes.tr()),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.green),
            onPressed: _addNewInstitute,
          ),
        ],
      ),
      body: BlocConsumer<InstituteBloc, InstituteState>(
        listener: (context, state) {
          if (state is InstituteStateError) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.error)),
              );
              context.read<InstituteBloc>().add(
                InstituteEvent.toLoaded(institutes),
              );
            });
          } else if (state is InstituteStateEndedSession) {
            Navigator.pushReplacementNamed(context, 'auth');
          }
        },
        builder: (context, state) {
          if (state is InstituteStateLoading) {
            return _buildLoadingState();
          } if (state is InstituteStateLoaded) {
            institutes.clear();
            institutes.addAll(state.institutes);
          }
          return institutes.isEmpty ?
          Center(child: Text(LocaleKeys.no_institutes.tr())) :
          ListView.builder(
            controller: _scrollController,
            itemCount: institutes.length,
            itemBuilder: (context, index) => _buildInstituteItem(institutes[index]),
          );
        },
      ),
    );
  }

  Widget _buildLoadingState() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildInstituteItem(InstituteModel institute) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: ListTile(
        title: Text(institute.name),
        subtitle: Text('ID: ${institute.id}'),
        trailing: IconButton(
          icon: const Icon(Icons.delete, color: Colors.red),
          onPressed: () => _showDeleteDialog(institute),
        ),
        onTap: () => _showEditDialog(institute),
      ),
    );
  }

  void _showEditDialog(InstituteModel institute) {
    BuildContext mainContext = context;
    final formKey = GlobalKey<FormState>();
    final nameController = TextEditingController(text: institute.name);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(LocaleKeys.edit_institute.tr()),
        content: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  initialValue: institute.id.toString(),
                  decoration: InputDecoration(
                    labelText: 'ID',
                    enabled: false,
                  ),
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
                mainContext.read<InstituteBloc>().add(
                  InstituteEvent.updateInstitute(
                    institute.id, nameController.text,
                  ),
                );
                Navigator.pop(context);
              }
            },
            child: Text(LocaleKeys.save.tr()),
          ),
        ],
      ),
    );
  }

  void _addNewInstitute() {
    BuildContext mainContext = context;
    final formKey = GlobalKey<FormState>();
    final nameController = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(LocaleKeys.create_institute.tr()),
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
                mainContext.read<InstituteBloc>().add(
                  InstituteEvent.createInstitute(nameController.text),
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

  void _showDeleteDialog(InstituteModel institute) {
    BuildContext mainContext = context;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(LocaleKeys.delete_institute.tr()),
        content: Text(LocaleKeys.delete_institute_confirm.tr()),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(LocaleKeys.cancel.tr()),
          ),
          TextButton(
            onPressed: () {
              mainContext.read<InstituteBloc>().add(
                InstituteEvent.deleteInstitute(institute.id),
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
}