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
import 'presentation/bloc/main_bloc/main_bloc.dart';
import '/presentation/bloc/login_bloc/login_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
        "/teachers": (context) => RouteGuard.protect(
          Container(),
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
