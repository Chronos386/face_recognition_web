import 'package:flutter/material.dart';
import '/res/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.main_label.tr()),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {},//=> context.push('/profile'),
          ),
        ],
      ),
      body: ListView(
        children: [
          _buildStatsRow(),
          _buildQuickActions(),
          _buildRecentActivity(),
        ],
      ),
    );
  }

  Widget _buildStatsRow() {
    return const Row(
      children: [
        /*DashboardCard(
          icon: Icons.people,
          title: 'Студенты',
          value: '2,345',
          trend: 12.5,
        ),
        DashboardCard(
          icon: Icons.fingerprint,
          title: 'Активные сессии',
          value: '48',
          trend: -3.2,
        ),*/
        // Остальные карточки...
      ],
    );
  }

  Widget _buildQuickActions() {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 4,
      children: [
        Container(color: Colors.orange, height: 30),
        Container(color: Colors.green, height: 30),
        Container(color: Colors.blue, height: 30),
        Container(color: Colors.red, height: 30),
        /*QuickActionButton(
          icon: Icons.person_add,
          label: 'Добавить студента',
          onTap: () => context.push('/students/add'),
        ),
        QuickActionButton(
          icon: Icons.event,
          label: 'Создать расписание',
          onTap: () => context.push('/schedule/create'),
        ),*/
        // Другие действия...
      ],
    );
  }

  final List<Activity> recentActivities = [
    Activity(
      time: DateTime.now().subtract(const Duration(minutes: 5)),
      event: 'Добавлен новый студент',
      user: 'admin@university.ru',
      icon: Icons.person_add,
    ),
    Activity(
      time: DateTime.now().subtract(const Duration(hours: 2)),
      event: 'Обновлено расписание',
      user: 'assistant@university.ru',
      icon: Icons.schedule,
    ),
    // ...
  ];

  Widget _buildRecentActivity() {
    return DataTable(
      columns: const [
        DataColumn(label: Text('Время')),
        DataColumn(label: Text('Событие')),
        DataColumn(label: Text('Пользователь')),
      ],
      rows: recentActivities.map((activity) => DataRow(
        cells: [
          DataCell(Text(DateFormat('HH:mm').format(activity.time))),
          DataCell(Row(
            children: [
              Icon(activity.icon, size: 20),
              const SizedBox(width: 8),
              Text(activity.event),
            ],
          )),
          DataCell(Text(activity.user)),
        ],
      )).toList(),
    );
  }
}

class Activity {
  final DateTime time;
  final String event;
  final String user;
  final IconData icon;

  Activity({
    required this.time,
    required this.event,
    required this.user,
    required this.icon,
  });
}