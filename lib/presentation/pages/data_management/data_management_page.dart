// presentation/pages/data_management/data_management_page.dart
import 'package:flutter/material.dart';
import '/res/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DataManagementPage extends StatefulWidget {
  const DataManagementPage({super.key});

  @override
  State<DataManagementPage> createState() => _DataManagementPageState();
}

class _DataManagementPageState extends State<DataManagementPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.data.tr()),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Text(
                        LocaleKeys.choose_data_type.tr(),
                        style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 0, height: 10),
            MediaQuery.of(context).size.width < 600 ?
            _buildQuickActionsMobile(context) : _buildQuickActionsGrid(),
          ],
        )
      ),
    );
  }

  Widget _buildQuickActionsMobile(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: _getCards(double.infinity, null).length,
      separatorBuilder: (context, index) => SizedBox(height: 5),
      itemBuilder: (context, index) => _getCards(double.infinity, null)[index],
    );
  }

  Widget _buildQuickActionsGrid() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final cardWidth = (screenWidth - 16 * 2) / 3;
        const cardHeight = 140.0;
        return Wrap(
          spacing: 16,
          runSpacing: 16,
          children: _getCards(cardWidth, cardHeight),
        );
      },
    );
  }

  List<Widget> _getCards(double cardWidth, double? cardHeight) {
    return [
      _buildDataCard(
        width: cardWidth,
        height: cardHeight,
        context: context,
        icon: FontAwesomeIcons.userCheck,
        title: LocaleKeys.attendance.tr(),
        onTap: () => Navigator.pushNamed(context, 'mainPage/attendance'),
      ),
      _buildDataCard(
        width: cardWidth,
        height: cardHeight,
        context: context,
        icon: FontAwesomeIcons.users,
        title: LocaleKeys.students.tr(),
        onTap: () => Navigator.pushNamed(context, 'mainPage/students'),
      ),
      _buildDataCard(
        width: cardWidth,
        height: cardHeight,
        context: context,
        icon: FontAwesomeIcons.userGroup,
        title: LocaleKeys.groups.tr(),
        onTap: () => Navigator.pushNamed(context, 'mainPage/groups'),
      ),
      _buildDataCard(
        width: cardWidth,
        height: cardHeight,
        context: context,
        icon: FontAwesomeIcons.chalkboardUser,
        title: LocaleKeys.teachers.tr(),
        onTap: () => Navigator.pushNamed(context, 'mainPage/teachers'),
      ),
      _buildDataCard(
        width: cardWidth,
        height: cardHeight,
        context: context,
        icon: FontAwesomeIcons.calendarDays,
        title: LocaleKeys.schedule.tr(),
        onTap: () => Navigator.pushNamed(context, 'mainPage/schedule'),
      ),
      _buildDataCard(
        width: cardWidth,
        height: cardHeight,
        context: context,
        icon: FontAwesomeIcons.buildingColumns,
        title: LocaleKeys.institutes.tr(),
        onTap: () => Navigator.pushNamed(context, 'mainPage/institutes'),
      ),
      _buildDataCard(
        width: cardWidth,
        height: cardHeight,
        context: context,
        icon: FontAwesomeIcons.buildingUser,
        title: LocaleKeys.departments.tr(),
        onTap: () => Navigator.pushNamed(context, 'mainPage/departments'),
      ),
      _buildDataCard(
        width: cardWidth,
        height: cardHeight,
        context: context,
        icon: FontAwesomeIcons.bookOpen,
        title: LocaleKeys.subjects.tr(),
        onTap: () => Navigator.pushNamed(context, 'mainPage/subjects'),
      ),
      _buildDataCard(
        width: cardWidth,
        height: cardHeight,
        context: context,
        icon: FontAwesomeIcons.building,
        title: LocaleKeys.buildings.tr(),
        onTap: () => Navigator.pushNamed(context, 'mainPage/buildings'),
      ),
      _buildDataCard(
        width: cardWidth,
        height: cardHeight,
        context: context,
        icon: FontAwesomeIcons.doorClosed,
        title: LocaleKeys.rooms.tr(),
        onTap: () => Navigator.pushNamed(context, 'mainPage/rooms'),
      ),
    ];
  }

  Widget _buildDataCard({required BuildContext context, required IconData icon,
    required String title, required VoidCallback onTap, required double width,
    required double? height}) {
    return SizedBox(
      width: width,
      height: height,
      child: Card(
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: 40, color: Theme.of(context).primaryColor),
                const SizedBox(height: 10),
                Text(title, textAlign: TextAlign.center),
              ],
            ),
          ),
        ),
      ),
    );
  }
}