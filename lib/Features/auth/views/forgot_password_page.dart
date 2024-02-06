
import 'package:e_commerce_app/Features/auth/providers/reset_password_provider.dart';
import 'package:e_commerce_app/Features/auth/views/widgets/no_account_text.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/core/utils/network/state.dart';
import 'package:e_commerce_app/core/utils/snackbar.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:e_commerce_app/core/utils/widgets/email_form_field.dart';
import 'package:e_commerce_app/core/utils/widgets/form_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ForgotPasswordPage extends HookConsumerWidget {
  const ForgotPasswordPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(GlobalKey<FormState>.new, const []);
    final emailController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.forgotPassword),
      ),
      body: FormBody(
        mainAxisAlignment: MainAxisAlignment.start,
        formKey: formKey,
        children: [
          const SizedBox.square(
            dimension: 30,
          ),
          Text(
            context.l10n.forgotPassword,
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox.square(
            dimension: 4,
          ),
          Text(
            context.l10n.pleaseEnterYourEmailToResetPassword,
            textAlign: TextAlign.center,
          ),
          const SizedBox.square(
            dimension: 78,
          ),
          EmailFormField(emailController: emailController),
          const SizedBox.square(
            dimension: 78,
          ),
          CustomButton(
            text: context.l10n.continueText,
            isLoading: ref.watch(resetPasswordProvider).isLoading,
            onPressed: () async {
              if (!formKey.currentState!.validate()) return;
              final resetPassword = await ref
                  .read(resetPasswordProvider.notifier)
                  .run(email: emailController.text);

              resetPassword.whenDataOrError(
                data: (_) => context.pop(),
                error: (error, _) => context.showErrorSnackBar(
                  context.getErrorMessage(error),
                ),
              );
            },
          ),
          const SizedBox.square(
            dimension: 90,
          ),
          const NoAccountText(),
        ],
      ),
    );
  }
}
