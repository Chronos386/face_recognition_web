// utils/route_guard.dart
import 'preferences_keys.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RouteGuard {
  static Future<bool> isAuthenticated() async {
    final prefs = GetIt.instance<SharedPreferences>();
    return prefs.getString(PreferencesKeys.USER_HASH) != null;
  }

  static Widget protect(Widget child, {bool authOnly = true}) {
    return FutureBuilder<bool>(
      future: isAuthenticated(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Scaffold(body: Center(child: CircularProgressIndicator()));
        }
        final isAuth = snapshot.data!;
        if (authOnly && !isAuth) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.pushReplacementNamed(context, 'auth');
          });
          return const SizedBox.shrink();
        }
        if (!authOnly && isAuth) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.pushReplacementNamed(context, 'mainPage');
          });
          return const SizedBox.shrink();
        }
        return child;
      },
    );
  }
}