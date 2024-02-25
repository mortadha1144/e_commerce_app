import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/core/utils/theme/icons.dart';
import 'package:e_commerce_app/validator/extension.dart';
import 'package:flutter/material.dart';

class EmailFormField extends StatelessWidget {
  const EmailFormField({
    super.key,
    required this.emailController,
  });

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
      validator: context.validator().email().build(),
      decoration: InputDecoration(
        hintText: context.l10n.emailHint,
        labelText: context.l10n.email,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: const Icon(AppIcons.email),
      ),
    );
  }
}
