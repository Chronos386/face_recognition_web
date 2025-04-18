// presentation/pages/data_management/subjects_page.dart
import 'package:flutter/material.dart';
import '../../models/subject_model.dart';
import '../../widgets/frw_text_field.dart';
import '/res/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/subject_bloc/subject_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

class SubjectsPage extends StatefulWidget {
  const SubjectsPage({super.key});

  @override
  State<SubjectsPage> createState() => _SubjectsPageState();
}

class _SubjectsPageState extends State<SubjectsPage> {
  List<SubjectModel> subjects = [];
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<SubjectBloc>().add(const SubjectEvent.loadSubjects());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.subjects.tr()),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.green),
            onPressed: _addNewSubject,
          ),
        ],
      ),
      body: BlocConsumer<SubjectBloc, SubjectState>(
        listener: (context, state) {
          if (state is SubjectStateError) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.error)),
              );
              context.read<SubjectBloc>().add(
                SubjectEvent.toLoaded(subjects),
              );
            });
          } else if (state is SubjectStateEndedSession) {
            Navigator.pushReplacementNamed(context, 'auth');
          }
        },
        builder: (context, state) {
          if (state is SubjectStateLoading) {
            return _buildLoadingState();
          }
          if (state is SubjectStateLoaded) {
            subjects.clear();
            subjects.addAll(state.subjects);
          }
          return subjects.isEmpty
              ? Center(child: Text(LocaleKeys.no_subjects.tr()))
              : ListView.builder(
            controller: _scrollController,
            itemCount: subjects.length,
            itemBuilder: (context, index) => _buildSubjectItem(subjects[index]),
          );
        },
      ),
    );
  }

  Widget _buildLoadingState() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildSubjectItem(SubjectModel subject) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: ListTile(
        title: Text(subject.name),
        subtitle: Text('ID: ${subject.id}'),
        trailing: IconButton(
          icon: const Icon(Icons.delete, color: Colors.red),
          onPressed: () => _showDeleteDialog(subject),
        ),
        onTap: () => _showEditDialog(subject),
      ),
    );
  }

  void _showEditDialog(SubjectModel subject) {
    final formKey = GlobalKey<FormState>();
    final nameController = TextEditingController(text: subject.name);
    final mainContext = context;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(LocaleKeys.edit_subject.tr()),
        content: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  initialValue: subject.id.toString(),
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
                mainContext.read<SubjectBloc>().add(
                  SubjectEvent.updateSubject(
                    subjects,
                    subject.id,
                    nameController.text,
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

  void _addNewSubject() {
    final formKey = GlobalKey<FormState>();
    final nameController = TextEditingController();
    final mainContext = context;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(LocaleKeys.create_subject.tr()),
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
                mainContext.read<SubjectBloc>().add(
                  SubjectEvent.createSubject(
                    subjects,
                    nameController.text,
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

  void _showDeleteDialog(SubjectModel subject) {
    final mainContext = context;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(LocaleKeys.delete_subject.tr()),
        content: Text(LocaleKeys.delete_subject_confirm.tr()),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(LocaleKeys.cancel.tr()),
          ),
          TextButton(
            onPressed: () {
              mainContext.read<SubjectBloc>().add(
                SubjectEvent.deleteSubject(subjects, subject.id),
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