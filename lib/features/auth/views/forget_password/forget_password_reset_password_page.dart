import 'package:e_commerce_app/core/data/api/authentication/authentication_response.dart';
import 'package:e_commerce_app/core/data/api/authentication/reset_password_request_body.dart';
import 'package:e_commerce_app/core/data/api/error/api_error_message.dart';
import 'package:e_commerce_app/core/developer/developer_provider.dart';
import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:e_commerce_app/core/utils/constants/constants.dart';
import 'package:e_commerce_app/core/utils/constants/sizes.dart';
import 'package:e_commerce_app/core/utils/hook/form_key.dart';
import 'package:e_commerce_app/core/utils/snackbar.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:e_commerce_app/features/auth/views/authentication_provider.dart';
import 'package:e_commerce_app/features/auth/views/widgets/password_with_confirm_form_fields.dart';
import 'package:e_commerce_app/l10n/app_localizations.dart';
import 'package:e_commerce_app/validator/form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_hook_mutation/riverpod_hook_mutation.dart';

typedef ResetPasswordPageArgs = ({
  String phoneNumber,
  String resetToken,
});

class ForgetPasswordResetPasswordPage extends HookConsumerWidget {
  const ForgetPasswordResetPasswordPage({
    super.key,
    required this.phoneNumber,
    required this.resetToken,
  });

  final String phoneNumber;
  final String resetToken;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);

    final formKey = useFormKey();
    final password = useTextEditingController();
    final confirmPassword = useTextEditingController();

    final mutation = useMutation<AuthenticationResponse>();

    useDeveloperTool(
      ref: ref,
      onLongPressed: () {
        password.text = '12345678';
        confirmPassword.text = '12345678';
      },
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.resetPasswordLabel),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    child: Text(
                      l10n.resetPasswordLabel,
                      style: headingStyle,
                    ),
                  ),
                  const Gap(Insets.small),
                  Align(
                    child: Text(
                      l10n.resetPasswordMessage,
                    ),
                  ),
                  const Gap(Insets.extraLarge),
                  PasswordWithConfirmFormFields(
                    passwordController: password,
                    confirmPasswordController: confirmPassword,
                    passwordLabel: l10n.newPasswordLabel,
                    passwordHint: l10n.newPasswordMessage,
                    confirmPasswordLabel: l10n.confirmNewPasswordLabel,
                    confirmPasswordHint: l10n.confirmNewPasswordMessage,
                  ),
                  const Gap(Insets.extraLarge),
                  CustomButton(
                    text: l10n.confirmLabel,
                    isLoading: mutation.isLoading,
                    onPressed: mutation.isLoading
                        ? null
                        : () {
                            if (formKey.isNotValid()) return;
                            final request = ResetPasswordRequestBody(
                              phoneNumber: phoneNumber,
                              resetToken: resetToken,
                              newPassword: password.text,
                            );

                            final notifier =
                                ref.read(authenticationProvider.notifier);

                            mutation.mutate(
                              () => notifier.resetPassword(request: request),
                              context: context,
                              data: (_) {
                                context.showSuccessSnackBar(
                                  l10n.passwordResetSuccessfulMessage,
                                );
                                context.replace(
                                  RoutesDocument.login,
                                );
                              },
                              error: (error, _) {
                                showApiErrorMessage(
                                  context: context,
                                  error: error,
                                );
                              },
                            );
                          },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
