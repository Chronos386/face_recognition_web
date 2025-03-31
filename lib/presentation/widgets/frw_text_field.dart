// presentation/widgets/frw_text_field.dart
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class FrwTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelKey;
  final IconData prefixIcon;
  final bool obscureText;
  final String? Function(String?)? validator;
  final VoidCallback? onSuffixPressed;
  final bool showSuffixIcon;

  const FrwTextField({
    super.key,
    required this.controller,
    required this.labelKey,
    required this.prefixIcon,
    this.obscureText = false,
    this.validator,
    this.onSuffixPressed,
    this.showSuffixIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelKey.tr(),
        prefixIcon: Icon(prefixIcon),
        suffixIcon: showSuffixIcon ? IconButton(
          icon: Icon(
            obscureText ? Icons.visibility_off : Icons.visibility,
          ),
          onPressed: onSuffixPressed,
        ) : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      validator: validator,
    );
  }
}