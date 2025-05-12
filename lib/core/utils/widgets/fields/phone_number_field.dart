import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/core/utils/theme/icons.dart';
import 'package:e_commerce_app/validator/extension.dart';
import 'package:flutter/material.dart';

class PhoneNumberField extends StatelessWidget {
  const PhoneNumberField(this.controller, {super.key});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return TextFormField(
      keyboardType: TextInputType.phone,
      controller: controller,
      validator: context.validator().phoneNumberIQ().build(),
      decoration: InputDecoration(
        hintText: l10n.phoneNumberHint,
        labelText: l10n.phoneNumber,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: const Icon(AppIcons.phone),
      ),
    );
  }
}
