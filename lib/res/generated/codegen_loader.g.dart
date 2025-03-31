// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters, constant_identifier_names

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> _ru = {
  "error": "Ошибка",
  "email": "Почта",
  "password": "Пароль",
  "Login": "Вход",
  "enter_login_pass": "Введите почту и пароль, чтобы войти в систему",
  "no_account": "Если у Вас ещё нет аккаунта, попросите администратора зарегистрировать для Вас аккаунт и выдать доступ к нему.",
  "invalid_credentials": "Неверные учётные данные",
  "user_not_found": "Пользователь не найден",
  "login_error": "Ошибка входа",
  "email_required": "Введите email",
  "password_required": "Введите пароль",
  "check_internet_connection": "Проверьте подключение к интернету.",
  "error_load_data": "Ошибка загрузки данных",
  "main_label": "Панель администратора",
  "data": "Данные",
  "dashboard": "Дашборд",
  "analytics": "Аналитика",
  "system": "Система",
  "try_again": "Попробовать снова",
  "no_data": "Данные не загружены",
  "university_attendance": "Посещаемость университета",
  "group_attendance": "Посещаемость группы",
  "choose_data": "Выберите группу и даты",
  "group_data": "Распределение группы",
  "institute_attendance": "Посещаемость институтов",
  "top_teachers": "Топ преподавателей (посещаемость)",
  "institute": "Институт",
  "group": "Группа",
  "loading": "Загрузка...",
  "top_students": "Топ студентов (пропуски)",
  "top_groups_abs": "Топ групп (пропуски)",
  "top_groups_at": "Топ групп (посещаемость)"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ru": _ru};
}
