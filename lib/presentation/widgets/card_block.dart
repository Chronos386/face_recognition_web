// presentation/widgets/card_block.dart
import 'package:flutter/material.dart';

class CardBlock extends StatelessWidget {
  final Widget child;
  final bool isMobile;

  const CardBlock({
    super.key,
    required this.child,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isMobile ? double.infinity : 500,
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 16,
            spreadRadius: 2,
          ),
        ],
      ),
      child: child,
    );
  }
}