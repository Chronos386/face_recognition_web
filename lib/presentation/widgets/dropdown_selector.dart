import '../models/room_model.dart';
import '../models/group_model.dart';
import '../models/subject_model.dart';
import '../models/teacher_model.dart';
import 'package:flutter/material.dart';
import '../models/building_model.dart';
import '../models/institute_model.dart';
import '../models/department_model.dart';
import '/res/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class DropdownSelector<T> extends StatelessWidget {
  final List<T> items;
  final T? selectedItem;
  final bool isEditCreate;
  final Function(T?) onChanged;

  const DropdownSelector({
    super.key,
    required this.items,
    this.isEditCreate=false,
    required this.selectedItem,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final validSelectedItem = items.contains(selectedItem) ?
    selectedItem : null;
    return !isEditCreate ? Padding(
      padding: const EdgeInsets.all(8.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            width: constraints.maxWidth * 0.95,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: DropdownButton<T>(
              isExpanded: true,
              value: validSelectedItem,
              hint: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(_getItemHint(), overflow: TextOverflow.ellipsis),
              ),
              items: items.map((item) => DropdownMenuItem(
                value: item,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(_getItemText(item)),
                ),
              )).toList(),
              onChanged: onChanged,
              underline: const SizedBox(),
            ),
          );
        },
      ),
    ) : DropdownButtonFormField<T>(
      value: validSelectedItem,
      decoration: InputDecoration(
        labelText: _getItemHint(),
      ),
      items: items.map((item) {
        return DropdownMenuItem<T>(
          value: item,
          child: Text(_getItemText(item)),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }

  String _getItemHint() {
    if (items is List<InstituteModel>) return LocaleKeys.select_institute.tr();
    if (items is List<DepartmentModel>) return LocaleKeys.select_department.tr();
    if (items is List<TeacherModel>) return LocaleKeys.select_teacher.tr();
    if (items is List<GroupModel>) return LocaleKeys.select_group.tr();
    if (items is List<BuildingModel>) return LocaleKeys.select_building.tr();
    if (items is List<RoomModel>) return LocaleKeys.select_room.tr();
    if (items is List<SubjectModel>) return LocaleKeys.select_subject.tr();
    return "";
  }

  String _getItemText(dynamic item) {
    if (item is InstituteModel) return item.name;
    if (item is DepartmentModel) return item.name;
    if (item is TeacherModel) return item.name;
    if (item is GroupModel) return item.name;
    if (item is BuildingModel) return item.name;
    if (item is RoomModel) return '${item.number} (${item.buildingId})';
    if (item is SubjectModel) return item.name;
    return item.toString();
  }
}