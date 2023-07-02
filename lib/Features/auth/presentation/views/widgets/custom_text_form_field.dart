import 'package:flutter/material.dart';

import '../../../../../core/utils/widgets/custom_suffix_icon.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.label,
    required this.hintText,
    required this.suffixIcon,
    this.isPassword = false, this.validator,
  });
  final String label, hintText, suffixIcon;
  final bool isPassword;
 final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      obscureText: isPassword,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: hintText,
        label: Text(label),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: suffixIcon),
      ),
    );
  }
}