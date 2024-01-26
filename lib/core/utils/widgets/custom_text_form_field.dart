import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    this.onTap,
    this.label,
    this.suffixIcon,
    this.prefixIcon,
    this.validator,
    this.fillColor,
    this.onChanged,
    this.maxLines = 1,
    this.maxLength,
    this.obscureText = false,
    this.keyboardType,
    this.inputFormatters,
  });

  final TextEditingController controller;
  final String hintText;
  final String? label;
  final Widget? suffixIcon, prefixIcon;
  final Color? fillColor;
  final String? Function(String?)? validator;
  final ValueChanged<String?>? onChanged;
  final int? maxLines, maxLength;
  final bool obscureText;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      onTap: onTap,
      controller: controller,
      decoration: InputDecoration(
        fillColor: fillColor,
        hintText: hintText,
        label: label == null ? null : Text(label!),
        hintStyle: context.textTheme.bodyLarge?.copyWith(
          color: context.colorScheme.outline,
          fontSize: 13,
          fontWeight: FontWeight.w400,
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      maxLines: maxLines,
      minLines: maxLines,
      onChanged: onChanged,
      maxLength: maxLength,
      obscureText: obscureText,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
    );
  }
}
