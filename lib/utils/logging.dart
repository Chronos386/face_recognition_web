// utils/logging.dart
import 'package:flutter/material.dart';

class ErrorLogger {
  void logError(FlutterErrorDetails details) async {
    if (!details.stack.toString().contains(
      "._onTextChanged",
    ) && !details.toString().contains(
      "package:pull_to_refresh",
    )) {
      print("ERROR_1 = ${details.exceptionAsString()} ||| ${details.stack
          .toString()}");
    }
  }

  void logErrorWithName(String errorName, String details) async {
    if (!details.contains(
      "._onTextChanged",
    ) && !details.toString().contains(
      "package:pull_to_refresh",
    )) {
      print("ERROR_2 = $errorName ||| $details");
    }
  }

  void logFlutterErrorWithName(String errorName, Object details) async {
    if (!details.toString().contains(
      "._onTextChanged",
    ) && !details.toString().contains(
      "package:pull_to_refresh",
    )) {
      print("ERROR_3 = $errorName ||| ${details.toString()}");
    }
  }

  void log(Object data, StackTrace stackTrace) async {
    if (!stackTrace.toString().contains(
      "._onTextChanged",
    ) && !stackTrace.toString().contains(
      "package:pull_to_refresh",
    )) {
      print("ERROR_4 = ${data.toString()} ||| ${stackTrace.toString()}");
    }
  }
}