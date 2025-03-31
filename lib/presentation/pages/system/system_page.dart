import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SystemScreen extends StatelessWidget {
  const SystemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildDevicesTable(),
        _buildServerStatus(),
        _buildLogsPanel(),
      ],
    );
  }

  Widget _buildDevicesTable() {
    return PaginatedDataTable(
      header: const Text('Устройства распознавания'),
      columns: const [
        DataColumn(label: Text('ID')),
        DataColumn(label: Text('Локация')),
        DataColumn(label: Text('Статус')),
        DataColumn(label: Text('Последняя активность')),
      ],
      source: _DevicesData(),
    );
  }

  Widget _buildServerStatus() {
    return const Card(
      child: ListTile(
        leading: Icon(Icons.cloud),
        title: Text('Статус сервера'),
        subtitle: Text('Время работы: 12д 4ч 35мин'),
        trailing: Chip(
          label: Text('Online'),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }

  Widget _buildLogsPanel() {
    return ExpansionTile(
      title: const Text('Системные логи'),
      children: [
        Container(
          height: 200,
          child: ListView(
            children: [],//logs.map((log) => Text(log)).toList(),
          ),
        ),
      ],
    );
  }
}

class _DevicesData extends DataTableSource {
  final List<Device> _devices = [
    Device(
        id: 'CAM-001',
        location: 'Корпус A, аудитория 305',
        status: DeviceStatus.online,
        lastActivity: DateTime.now().subtract(Duration(minutes: 10))),
    Device(
        id: 'CAM-002',
        location: 'Корпус B, входная группа',
        status: DeviceStatus.offline,
        lastActivity: DateTime.now().subtract(Duration(days: 2))),
  ];

  @override
  DataRow? getRow(int index) {
    final device = _devices[index];
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(Text(device.id)),
        DataCell(Text(device.location)),
        DataCell(
          Chip(
            label: Text(device.status.name),
            backgroundColor: _getStatusColor(device.status),
          ),
        ),
        DataCell(Text(DateFormat('dd.MM.yyyy HH:mm').format(device.lastActivity))),
      ],
    );
  }

  Color _getStatusColor(DeviceStatus status) {
    switch (status) {
      case DeviceStatus.online:
        return Colors.green.shade100;
      case DeviceStatus.offline:
        return Colors.red.shade100;
      case DeviceStatus.maintenance:
        return Colors.amber.shade100;
    }
  }

  @override
  int get rowCount => _devices.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}

// Модель устройства
enum DeviceStatus { online, offline, maintenance }

class Device {
  final String id;
  final String location;
  final DeviceStatus status;
  final DateTime lastActivity;

  Device({
    required this.id,
    required this.location,
    required this.status,
    required this.lastActivity,
  });
}