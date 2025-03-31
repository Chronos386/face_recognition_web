import 'package:flutter/material.dart';
import '/res/generated/locale_keys.g.dart';
import '../widgets/try_again_button_widget.dart';
import 'package:easy_localization/easy_localization.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    super.key,
    required this.error,
    required this.tryAgain,
  });
  final String error;
  final VoidCallback tryAgain;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              LocaleKeys.error.tr(),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(
                error,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 50),
            TryAgainButtonWidget(
              text: LocaleKeys.try_again.tr().toLowerCase(),
              tryAgain: () {
                tryAgain();
              },
            ),
          ],
        ),
      ),
    );
  }
}