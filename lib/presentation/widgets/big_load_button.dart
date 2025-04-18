import 'package:flutter/material.dart';

class BigLoadButton extends StatefulWidget {
  const BigLoadButton({super.key});

  @override
  State<BigLoadButton> createState() => _BigLoadButtonState();
}

class _BigLoadButtonState extends State<BigLoadButton> {
  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: true,
      child: ElevatedButton(
        onPressed: null,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0x89848484),
          ),
          child: const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: CircularProgressIndicator(
                strokeWidth: 4,
              ),
            ),
          ),
        ),
      ),
    );
  }
}