import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DataManagementPage extends StatelessWidget {
  const DataManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 600;
    return GridView.count(
      padding: const EdgeInsets.all(16),
      crossAxisCount: isMobile ? 2 : 4,
      children: [
        _buildDataCard(
          icon: FontAwesomeIcons.users,
          title: 'Студенты',
          onTap: () => context.push('/students'),
        ),
        _buildDataCard(
          icon: FontAwesomeIcons.chalkboardUser,
          title: 'Преподаватели',
          onTap: () => context.push('/teachers'),
        ),
        // Добавьте аналогичные карточки для других сущностей
      ],
    );
  }

  Widget _buildDataCard({required IconData icon, required String title, VoidCallback? onTap}) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40),
            const SizedBox(height: 10),
            Text(title),
          ],
        ),
      ),
    );
  }
}