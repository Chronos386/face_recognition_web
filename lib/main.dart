// main.dart
import 'dart:async';
import 'utils/logging.dart';
import 'utils/route_guard.dart';
import 'di/di_coordinator.dart';
import 'package:get_it/get_it.dart';
import 'utils/preferences_keys.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'res/generated/locale_keys.g.dart';
import 'presentation/pages/main_page.dart';
import 'presentation/pages/login_page.dart';
import 'res/generated/codegen_loader.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'presentation/bloc/room_bloc/room_bloc.dart';
import 'presentation/bloc/main_bloc/main_bloc.dart';
import 'presentation/bloc/group_bloc/group_bloc.dart';
import '/presentation/bloc/login_bloc/login_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'presentation/bloc/subject_bloc/subject_bloc.dart';
import 'presentation/bloc/teacher_bloc/teacher_bloc.dart';
import 'presentation/pages/data_management/rooms_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'presentation/bloc/building_bloc/building_bloc.dart';
import 'presentation/bloc/schedule_bloc/schedule_bloc.dart';
import 'presentation/pages/data_management/groups_page.dart';
import 'presentation/bloc/institute_bloc/institute_bloc.dart';
import 'presentation/pages/data_management/students_page.dart';
import 'presentation/pages/data_management/teachers_page.dart';
import 'presentation/pages/data_management/subjects_page.dart';
import 'presentation/pages/data_management/schedules_page.dart';
import 'presentation/pages/data_management/buildings_page.dart';
import 'presentation/bloc/department_bloc/department_bloc.dart';
import 'presentation/bloc/attendance_bloc/attendance_bloc.dart';
import 'presentation/pages/data_management/institutes_page.dart';
import 'presentation/pages/data_management/attendance_page.dart';
import 'presentation/pages/data_management/departments_page.dart';

bool authUser = false;
Future<void> main() async {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    setupGetIt();
    final prefs = await SharedPreferences.getInstance();
    authUser = prefs.getString(PreferencesKeys.USER_HASH) != null;
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    runApp(
      EasyLocalization(
        supportedLocales: const [Locale('ru')],
        path: 'assets/translations',
        fallbackLocale: const Locale('ru'),
        assetLoader: const CodegenLoader(),
        child: const MyApp(),
      ),
    );
  }, (error, stackTrace) {
    ErrorLogger().log(error, stackTrace);
  });
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var sharedPreferences = GetIt.instance<SharedPreferences>();

  @override
  Widget build(BuildContext context) {
    print("HASH = ${sharedPreferences.getString(PreferencesKeys.USER_HASH)}");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        "auth": (context) => RouteGuard.protect(
          BlocProvider(
            create: (context) => LoginBloc(),
            child: LoginScreen(),
          ),
          authOnly: false,
        ),
        "mainPage": (context) => RouteGuard.protect(
          BlocProvider(
            create: (context) => MainBloc(),
            child: MainScreen()
          ),
        ),
        "mainPage/attendance": (context) => RouteGuard.protect(
          BlocProvider(
              create: (context) => AttendanceBloc(),
              child: AttendancePage()
          ),
        ),
        "mainPage/students": (context) => RouteGuard.protect(
          BlocProvider(
              create: (context) => AttendanceBloc(),
              child: StudentsPage()
          ),
        ),
        "mainPage/groups": (context) => RouteGuard.protect(
          BlocProvider(
            create: (context) => GroupBloc(),
            child: GroupsPage(),
          ),
        ),
        "mainPage/teachers": (context) => RouteGuard.protect(
          BlocProvider(
            create: (context) => TeacherBloc(),
            child: TeachersPage(),
          ),
        ),
        "mainPage/schedule": (context) => RouteGuard.protect(
          BlocProvider(
            create: (context) => ScheduleBloc(),
            child: SchedulePage(),
          ),
        ),
        "mainPage/institutes": (context) => RouteGuard.protect(
          BlocProvider(
            create: (context) => InstituteBloc(),
            child: InstitutesPage(),
          ),
        ),
        "mainPage/departments": (context) => RouteGuard.protect(
          BlocProvider(
            create: (context) => DepartmentBloc(),
            child: DepartmentsPage(),
          ),
        ),
        "mainPage/subjects": (context) => RouteGuard.protect(
          BlocProvider(
            create: (context) => SubjectBloc(),
            child: SubjectsPage(),
          ),
        ),
        "mainPage/buildings": (context) => RouteGuard.protect(
          BlocProvider(
            create: (context) => BuildingBloc(),
            child: BuildingsPage(),
          ),
        ),
        "mainPage/rooms": (context) => RouteGuard.protect(
          BlocProvider(
            create: (context) => RoomBloc(),
            child: RoomsPage(),
          ),
        ),
      },
      initialRoute: authUser ? 'mainPage' : 'auth',
      onGenerateRoute: (RouteSettings settings) {
        if (authUser) {
          Navigator.pushReplacementNamed(context, 'mainPage');
        } else {
          Navigator.pushReplacementNamed(context, 'auth');
        }
        return MaterialPageRoute<void>(builder: (context) {
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: AppBar(
                centerTitle: true,
                title: Text(LocaleKeys.error.tr()),
              ),
            ),
            body: Center(
              child: Text(
                LocaleKeys.error.tr(),
              ),
            ),
          );
        });
      },
    );
  }
}
