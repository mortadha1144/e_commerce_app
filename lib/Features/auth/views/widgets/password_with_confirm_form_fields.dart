import 'package:e_commerce_app/Features/auth/views/password_form_field.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/validator/extension.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class PasswordWithConfirmFormFields extends StatelessWidget {
  const PasswordWithConfirmFormFields({
    super.key,
    required this.passwordController,
    required this.confirmPasswordController,
  });

  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PasswordFormField(controller: passwordController, optional: false),
        const Gap(30),
        PasswordFormField(
          controller: confirmPasswordController,
          optional: false,
          validation: context
              .validator()
              .required()
              .add((value) => value == passwordController.text
                  ? null
                  : context.l10n.passwordDoesNotMatch)
              .build(),
        ),
      ],
    );
  }
}
