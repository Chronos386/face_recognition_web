// presentation/pages/main_page.dart
import 'error_page.dart';
import 'loading_page.dart';
import 'package:flutter/material.dart';
import 'analytics/analytics_page.dart';
import 'dashboard/dashboard_page.dart';
import '../bloc/main_bloc/main_bloc.dart';
import '/res/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'data_management/data_management_page.dart';
import '../bloc/dashboard_bloc/dashboard_bloc.dart';
import '../bloc/analytics_bloc/analytics_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    BlocProvider(
        create: (context) => DashboardBloc(),
        child: DashboardPage()
    ),
    const DataManagementPage(),
    BlocProvider(
        create: (context) => AnalyticsBloc(),
        child: AnalyticsPage()
    ),
  ];

  @override
  void initState() {
    super.initState();
    context.read<MainBloc>().add(MainEventLoadData());
  }

  @override
  Widget build(BuildContext context) {
    var state = context.watch<MainBloc>().state;
    final isMobile = MediaQuery.of(context).size.width < 600;
    return state.when(
      loaded: () {
        return Scaffold(
          body: Row(
            children: [
              if (!isMobile) _buildDesktopNavigation(),
              Expanded(child: _screens[_selectedIndex]),
            ],
          ),
          bottomNavigationBar: isMobile ? _buildMobileNavigation() : null,
        );
      },
      loading: () {
        return LoadingPage();
      },
      error: (error) {
        return ErrorPage(
          error: error,
          tryAgain: () {
            context.read<MainBloc>().add(MainEventLoadData());
          },
        );
      },
      endedSession: () {
        Navigator.pushReplacementNamed(context, 'auth');
        return Container();
      },
    );
  }

  Widget _buildDesktopNavigation() {
    return NavigationRail(
      selectedIndex: _selectedIndex,
      onDestinationSelected: (index) => setState(() => _selectedIndex = index),
      destinations: [
        NavigationRailDestination(
          icon: Icon(Icons.dashboard, color: Colors.grey[600]),
          label: Text(LocaleKeys.dashboard.tr(), style: TextStyle(color: Colors.grey[600])),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.storage, color: Colors.grey[600]),
          label: Text(LocaleKeys.data.tr(), style: TextStyle(color: Colors.grey[600])),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.analytics, color: Colors.grey[600]),
          label: Text(LocaleKeys.analytics.tr(), style: TextStyle(color: Colors.grey[600])),
        ),
      ],
    );
  }

  Widget _buildMobileNavigation() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.grey[600],
      onTap: (index) => setState(() => _selectedIndex = index),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.dashboard, color: Colors.grey[600]),
          label: LocaleKeys.dashboard.tr(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.storage, color: Colors.grey[600]),
          label: LocaleKeys.data.tr(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.analytics, color: Colors.grey[600]),
          label: LocaleKeys.analytics.tr(),
        ),
      ],
    );
  }
}