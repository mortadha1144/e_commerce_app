import 'package:e_commerce_app/core/utils/constants/assets.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/core/utils/widgets/required_field_label.dart';
import 'package:e_commerce_app/features/auth/views/widgets/custom_suffix_icon.dart';
import 'package:e_commerce_app/validator/extension.dart';
import 'package:flutter/material.dart';

class EmailFormField extends StatelessWidget {
  const EmailFormField({
    super.key,
    required this.emailController,
    this.optional = true,
  });

  final TextEditingController emailController;
  final bool optional;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
      validator: context.validator(optional: optional).email().build(),
      decoration: InputDecoration(
        hintText: context.l10n.emailHint,
        label: RequiredFieldLabel(
          label: context.l10n.email,
          optional: optional,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const CustomSuffixIcon(
          svgIcon: Assets.assetsIconsMail,
        ),
      ),
    );
  }
}
