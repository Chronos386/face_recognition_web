import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(),
      ),
      body: Center(
        child: SizedBox(
          width: 60,
          height: 60,
          child: CircularProgressIndicator(
            strokeWidth: 6,
          ),
        ),
      ),
    );
  }
}