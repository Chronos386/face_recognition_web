// presentation/pages/data_management/buildings_page.dart
import 'package:flutter/material.dart';
import '../../models/building_model.dart';
import '../../widgets/frw_text_field.dart';
import '/res/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/building_bloc/building_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

class BuildingsPage extends StatefulWidget {
  const BuildingsPage({super.key});

  @override
  State<BuildingsPage> createState() => _BuildingsPageState();
}

class _BuildingsPageState extends State<BuildingsPage> {
  List<BuildingModel> buildings = [];
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<BuildingBloc>().add(const BuildingEvent.loadBuildings());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.buildings.tr()),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.green),
            onPressed: _addNewBuilding,
          ),
        ],
      ),
      body: BlocConsumer<BuildingBloc, BuildingState>(
        listener: (context, state) {
          if (state is BuildingStateError) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.error)),
              );
              context.read<BuildingBloc>().add(
                BuildingEvent.toLoaded(buildings),
              );
            });
          } else if (state is BuildingStateEndedSession) {
            Navigator.pushReplacementNamed(context, 'auth');
          }
        },
        builder: (context, state) {
          if (state is BuildingStateLoading) {
            return _buildLoadingState();
          }
          if (state is BuildingStateLoaded) {
            buildings.clear();
            buildings.addAll(state.buildings);
          }
          return buildings.isEmpty
              ? Center(child: Text(LocaleKeys.no_buildings.tr()))
              : ListView.builder(
            controller: _scrollController,
            itemCount: buildings.length,
            itemBuilder: (context, index) => _buildBuildingItem(buildings[index]),
          );
        },
      ),
    );
  }

  Widget _buildLoadingState() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildBuildingItem(BuildingModel building) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: ListTile(
        title: Text(building.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ID: ${building.id}'),
            Text('${LocaleKeys.address.tr()}: ${building.address}'),
          ],
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete, color: Colors.red),
          onPressed: () => _showDeleteDialog(building),
        ),
        onTap: () => _showEditDialog(building),
      ),
    );
  }

  void _showEditDialog(BuildingModel building) {
    final formKey = GlobalKey<FormState>();
    final nameController = TextEditingController(text: building.name);
    final addressController = TextEditingController(text: building.address);
    final mainContext = context;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(LocaleKeys.edit_building.tr()),
        content: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  initialValue: building.id.toString(),
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
                const SizedBox(height: 10),
                FrwTextField(
                  controller: addressController,
                  labelKey: LocaleKeys.address,
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
                mainContext.read<BuildingBloc>().add(
                  BuildingEvent.updateBuilding(
                    buildings,
                    building.id,
                    nameController.text,
                    addressController.text,
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

  void _addNewBuilding() {
    final formKey = GlobalKey<FormState>();
    final nameController = TextEditingController();
    final addressController = TextEditingController();
    final mainContext = context;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(LocaleKeys.create_building.tr()),
        content: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FrwTextField(
                  controller: nameController,
                  labelKey: LocaleKeys.name,
                  validator: (value) =>
                  value!.isEmpty ? LocaleKeys.value_required.tr() : null,
                ),
                const SizedBox(height: 10),
                FrwTextField(
                  controller: addressController,
                  labelKey: LocaleKeys.address,
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
                mainContext.read<BuildingBloc>().add(
                  BuildingEvent.createBuilding(
                    buildings,
                    nameController.text,
                    addressController.text,
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

  void _showDeleteDialog(BuildingModel building) {
    final mainContext = context;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(LocaleKeys.delete_building.tr()),
        content: Text(LocaleKeys.delete_building_confirm.tr()),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(LocaleKeys.cancel.tr()),
          ),
          TextButton(
            onPressed: () {
              mainContext.read<BuildingBloc>().add(
                BuildingEvent.deleteBuilding(buildings, building.id),
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