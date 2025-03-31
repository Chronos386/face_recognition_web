import 'package:flutter/material.dart';

class TryAgainButtonWidget extends StatelessWidget {
  const TryAgainButtonWidget({
    super.key,
    required this.text,
    required this.tryAgain,
  });
  final String text;
  final VoidCallback tryAgain;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => tryAgain(),
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all<Size>(
          const Size(0, 0),
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        padding: WidgetStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(vertical: 14.0, horizontal: 20.0),
        ),
        /*textStyle: WidgetStateProperty.all<TextStyle>(TextStyle(
          fontSize: 16.0,
          color: Color(0xFFE3E1E1),
          fontWeight: FontWeight.bold,
        )),*/
        //backgroundColor: WidgetStateProperty.all<Color>(Global.green),
        //foregroundColor: WidgetStateProperty.all<Color>(Global.backgroundLightTheme),
      ),
      child: Text(text),
    );
  }
}