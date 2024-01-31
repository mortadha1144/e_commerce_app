import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/core/utils/theme/icons.dart';
import 'package:e_commerce_app/validator/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_validator/form_validator.dart';

class PasswordFormField extends HookWidget {
  const PasswordFormField({
    super.key,
    required this.controller,
    required this.optional,
    this.validation,
  });

  final TextEditingController controller;
  final bool optional;
  final StringValidationCallback? validation;

  @override
  Widget build(BuildContext context) {
    final obscure = useState(true);
    final l10n = context.l10n;

    return TextFormField(
      controller: controller,
      obscureText: obscure.value,
      keyboardType: TextInputType.text,
      validator: validation ?? context.validator(optional: optional).build(),
      decoration: InputDecoration(
        labelText: l10n.password,
        hintText: l10n.passwordHint,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: const Icon(AppIcons.password),
        suffixIcon: IconButton(
          icon: Icon(
            obscure.value ? AppIcons.visible : AppIcons.invisible,
          ),
          onPressed: () {
            obscure.value = !obscure.value;
          },
        ),
      ),
    );
  }
}
