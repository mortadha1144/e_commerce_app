import 'package:e_commerce_app/core/utils/widgets/required_field_label.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    this.keyboardType,
    this.labelText,
    this.hintText,
    this.suffixIcon,
    this.validator,
    this.optional = true,
  });

  final TextEditingController controller;
  final TextInputType? keyboardType;
  final String? labelText;
  final String? hintText;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final bool optional;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
        label: labelText != null
            ? RequiredFieldLabel(
                label: labelText!,
                optional: optional,
              )
            : null,
        hintText: hintText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: suffixIcon,
      ),
      validator: validator,
    );
  }
}
