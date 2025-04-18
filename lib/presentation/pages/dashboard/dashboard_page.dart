// presentation/pages/dashboard/dashboard_page.dart
import '../../models/user_model.dart';
import 'package:flutter/material.dart';
import '/res/generated/locale_keys.g.dart';
import '../../widgets/big_load_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/dashboard_bloc/dashboard_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  UserModel userData = UserModel(
    id: -1,
    isAdmin: false,
    login: "No data",
    name: "No data",
    studentInfo: UserStudent(
      groupId: -1,
      groupName: "No data",
      instituteId: -1,
      instituteName: "No data",
    ),
  );
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<DashboardBloc>().add(const DashboardEvent.getUserData());
  }

  @override
  Widget build(BuildContext context) {
    BuildContext mainContext = context;
    final isMobile = MediaQuery.of(context).size.width < 600;
    final state = context.watch<DashboardBloc>().state;
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.main_label.tr()),
        actions: [
          (state is DashboardStateLoadLogout) ? CircularProgressIndicator() :
          IconButton(
            icon: const Icon(
              Icons.exit_to_app,
              color: Colors.red,
            ),
            onPressed: () {
              _logout(context);
            },
          ),
        ],
      ),
      body: BlocConsumer<DashboardBloc, DashboardState>(
        listener: (BuildContext context, DashboardState state) {
          if (state is DashboardStateError) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.error)),
              );
              mainContext.read<DashboardBloc>().add(
                const DashboardEvent.getUserData(),
              );
            });
          } else if (state is DashboardStateEndedSession) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Navigator.pushReplacementNamed(mainContext, 'auth');
            });
          }
        },
        builder: (context, state) {
          if (state is DashboardStateLoading) {
            return _buildLoadingState();
          } else if (state is DashboardStateLoaded) {
            userData = state.data;
          }
          return Column(
            children: [
              Expanded(child: _buildLoadedState(isMobile, state)),
              if (!isMobile)
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: _buildDangerZone(state),
                ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildLoadingState() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildLoadedState(bool isMobile, DashboardState state) {
    return SingleChildScrollView(
      controller: _scrollController,
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildUserInfo(),
          const SizedBox(height: 24),
          Text(
            LocaleKeys.fast_actions_d.tr(),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          isMobile ? Center(child: _buildQuickActionsMobile()) :
          _buildQuickActionsGrid(),
          if (isMobile)
            const SizedBox(height: 16),
          if (isMobile)
            _buildDangerZone(state),
        ],
      ),
    );
  }

  Widget _buildUserInfo() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.admin_panel_settings, size: 40),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    userData.name,
                    style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(),
            _buildInfoRow(LocaleKeys.login_d.tr(), userData.login),
            (userData.studentInfo != null) ?
            _buildInfoRow(
              LocaleKeys.group_d.tr(), userData.studentInfo!.groupName,
            ) :
            _buildInfoRow(
              LocaleKeys.department_d.tr(), userData.teacherInfo!.departmentName,
            ),
            (userData.studentInfo != null) ?
            _buildInfoRow(
              LocaleKeys.institute_d.tr(), userData.studentInfo!.instituteName,
            ) :
            _buildInfoRow(
              LocaleKeys.institute_d.tr(), userData.teacherInfo!.instituteName,
            ),
            if (userData.isAdmin) ...[
              const Divider(),
              Text(
                LocaleKeys.admin_status.tr(),
                style: TextStyle(
                  color: Colors.green, fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          const SizedBox(width: 8),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }

  Widget _buildDangerZone(DashboardState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.danger_zone.tr(),
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: double.infinity,
          child: (state is DashboardStateLoadLogout) ? BigLoadButton() :
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(vertical: 15),
            ),
            onPressed: () {_deleteAllHashes(mainContext: context);},
            child: Text(LocaleKeys.close_all_sessions.tr()),
          ),
        ),
      ],
    );
  }

  Widget _buildQuickActionsMobile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          child: _buildDataCard(
            icon: FontAwesomeIcons.userCheck,
            title: LocaleKeys.attendance.tr(),
            onTap: () => Navigator.pushNamed(context, 'mainPage/attendance'),
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: double.infinity,
          child: _buildDataCard(
            icon: FontAwesomeIcons.users,
            title: LocaleKeys.students.tr(),
            onTap: () => Navigator.pushNamed(context, 'mainPage/students'),
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: double.infinity,
          child: _buildDataCard(
            icon: FontAwesomeIcons.chalkboardUser,
            title: LocaleKeys.teachers.tr(),
            onTap: () => Navigator.pushNamed(context, 'mainPage/teachers'),
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: double.infinity,
          child: _buildDataCard(
            icon: FontAwesomeIcons.calendarDays,
            title: LocaleKeys.schedule.tr(),
            onTap: () => Navigator.pushNamed(context, 'mainPage/schedule'),
          ),
        ),
      ],
    );
  }

  Widget _buildQuickActionsGrid() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final cardWidth = (screenWidth - 16 * 2) / 2;
        const cardHeight = 140.0;
        return Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            SizedBox(
              width: cardWidth,
              height: cardHeight,
              child: _buildDataCard(
                icon: FontAwesomeIcons.userCheck,
                title: LocaleKeys.attendance.tr(),
                onTap: () => Navigator.pushNamed(context, 'mainPage/attendance'),
              ),
            ),
            SizedBox(
              width: cardWidth,
              height: cardHeight,
              child: _buildDataCard(
                icon: FontAwesomeIcons.users,
                title: LocaleKeys.students.tr(),
                onTap: () => Navigator.pushNamed(context, 'mainPage/students'),
              ),
            ),
            SizedBox(
              width: cardWidth,
              height: cardHeight,
              child: _buildDataCard(
                icon: FontAwesomeIcons.chalkboardUser,
                title: LocaleKeys.teachers.tr(),
                onTap: () => Navigator.pushNamed(context, 'mainPage/teachers'),
              ),
            ),
            SizedBox(
              width: cardWidth,
              height: cardHeight,
              child: _buildDataCard(
                icon: FontAwesomeIcons.calendarDays,
                title: LocaleKeys.schedule.tr(),
                onTap: () => Navigator.pushNamed(context, 'mainPage/schedule'),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildDataCard({required IconData icon, required String title,
    VoidCallback? onTap}) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(4),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: Theme.of(context).primaryColor),
              const SizedBox(height: 5),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _logout(BuildContext mainContext) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(LocaleKeys.confirmation.tr()),
        content: Text(LocaleKeys.sure_close_session.tr()),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(LocaleKeys.cancel.tr()),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              mainContext.read<DashboardBloc>().add(const DashboardEvent.logout());
            },
            child: Text(
              LocaleKeys.logout.tr(), style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }

  void _deleteAllHashes({required BuildContext mainContext}) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(LocaleKeys.confirmation.tr()),
        content: Text(LocaleKeys.sure_close_sessions.tr()),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(LocaleKeys.cancel.tr()),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              mainContext.read<DashboardBloc>().add(
                const DashboardEvent.clearAllHashes(),
              );
            },
            child: Text(
              LocaleKeys.close_sessions.tr(),
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}