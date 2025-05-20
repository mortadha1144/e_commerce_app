import 'package:e_commerce_app/features/auth/views/widgets/password_form_field.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/l10n/app_localizations.dart';
import 'package:e_commerce_app/validator/extension.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class PasswordWithConfirmFormFields extends StatelessWidget {
  const PasswordWithConfirmFormFields({
    super.key,
    required this.passwordController,
    required this.confirmPasswordController,
    this.passwordLabel,
    this.passwordHint,
    this.confirmPasswordLabel,
    this.confirmPasswordHint,
  });

  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final String? passwordLabel;
  final String? passwordHint;
  final String? confirmPasswordLabel;
  final String? confirmPasswordHint;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Column(
      children: [
        PasswordFormField(
          controller: passwordController,
          optional: false,
          label: passwordLabel,
          hintText: passwordHint,
        ),
        const Gap(30),
        PasswordFormField(
          controller: confirmPasswordController,
          optional: false,
          label: confirmPasswordLabel ?? l10n.confirmPasswordLabel,
          hintText: confirmPasswordHint ?? l10n.confirmPasswordMessage,
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
