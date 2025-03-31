// presentation/widgets/auth_button.dart
import 'package:flutter/material.dart';
import '../../res/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class AuthButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isLoading;

  const AuthButton({
    super.key,
    required this.onPressed,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 4,
        shadowColor: Colors.blueAccent.withValues(alpha: 0.3),
      ),
      child: isLoading ? const CircularProgressIndicator(
        color: Colors.white,
        strokeWidth: 2,
      ) : Text(
        LocaleKeys.Login.tr(),
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}