import 'package:e_commerce_app/core/data/api/authentication/password_reset_toke_response.dart';
import 'package:e_commerce_app/core/data/api/error/api_error_message.dart';
import 'package:e_commerce_app/core/developer/developer_provider.dart';
import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:e_commerce_app/core/utils/constants/constants.dart';
import 'package:e_commerce_app/core/utils/extensions/string_extensions.dart';
import 'package:e_commerce_app/core/utils/hook/form_key.dart';
import 'package:e_commerce_app/core/utils/snackbar.dart';
import 'package:e_commerce_app/core/utils/theme/insets.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:e_commerce_app/features/auth/views/authentication_provider.dart';
import 'package:e_commerce_app/features/auth/views/widgets/otp_form_field.dart';
import 'package:e_commerce_app/features/auth/views/widgets/resend_otp_count_down_widget.dart';
import 'package:e_commerce_app/l10n/app_localizations.dart';
import 'package:e_commerce_app/validator/form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_hook_mutation/riverpod_hook_mutation.dart';

class ForgotPasswordVerifyOtpPage extends HookConsumerWidget {
  const ForgotPasswordVerifyOtpPage({
    super.key,
    required this.phoneNumber,
  });

  final String phoneNumber;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);

    final formKey = useFormKey();

    final otp = useTextEditingController();

    final mutation = useMutation<PasswordResetTokeResponse>();
    final provider = authenticationProvider;
    final notifier = ref.read(provider.notifier);

    useDeveloperTool(
      ref: ref,
      onLongPressed: () {
        otp.text = '1234';
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.otpVerificationLabel),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Gap(Insets.extraLarge),
                Align(
                  child: Text(
                    l10n.otpVerificationLabel,
                    style: headingStyle,
                  ),
                ),
                const Gap(Insets.small),
                Align(
                  child: Text(
                    l10n.weSentYourCode(phoneNumber.formatPhoneNumber()),
                  ),
                ),
                // buildTimer(context),
                const Gap(140),
                OtpFormField(
                  controller: otp,
                  isError: mutation.isError,
                ),
                const Gap(Insets.extraLarge),
                CustomButton(
                  isLoading: mutation.isLoading,
                  onPressed: mutation.isLoading
                      ? null
                      : () {
                          if (formKey.isNotValid()) return;
                          mutation.mutate(
                            () => notifier.forgetPasswordVerifyOtp(
                              phoneNumber: phoneNumber,
                              code: otp.text,
                            ),
                            context: context,
                            data: (data) {
                              context.showSuccessSnackBar(
                                l10n.verificationSuccessfulMessage,
                                );
                              context.pushReplacement(
                                RoutesDocument.forgotPasswordResetPasswordView,
                                extra: (
                                  phoneNumber: phoneNumber,
                                  resetToken: data.token,
                                ),
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
                  text: l10n.continueText,
                ),
                const Gap(90),
                Align(
                  child: ResendOtpCountDownWidget(
                    onResendPressed: () async {
                      return notifier.resendOtp(
                        phoneNumber: phoneNumber,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
