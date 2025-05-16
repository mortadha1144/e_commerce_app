import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/core/utils/theme/icons.dart';
import 'package:e_commerce_app/core/utils/widgets/required_field_label.dart';
import 'package:e_commerce_app/validator/extension.dart';
import 'package:flutter/material.dart';

class PhoneNumberField extends StatelessWidget {
  const PhoneNumberField(
    this.controller, {
    super.key,
    this.optional = false,
  });

  final TextEditingController controller;
  final bool optional;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return TextFormField(
      keyboardType: TextInputType.phone,
      controller: controller,
      validator: context.validator(optional: optional).phoneNumberIQ().build(),
      decoration: InputDecoration(
        hintText: l10n.phoneNumberHint,
        label: RequiredFieldLabel(
          label: l10n.phoneNumber,
          optional: optional,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: const Icon(AppIcons.phone),
      ),
    );
  }
}
