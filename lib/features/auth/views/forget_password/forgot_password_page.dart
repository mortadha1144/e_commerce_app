import 'package:e_commerce_app/core/data/api/authentication/otp_response.dart';
import 'package:e_commerce_app/core/data/api/error/api_error_message.dart';
import 'package:e_commerce_app/core/developer/developer_provider.dart';
import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:e_commerce_app/core/utils/widgets/fields/phone_number_field.dart';
import 'package:e_commerce_app/features/auth/views/authentication_provider.dart';
import 'package:e_commerce_app/features/auth/views/widgets/no_account_text.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/core/utils/hook/form_key.dart';
import 'package:e_commerce_app/core/utils/snackbar.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:e_commerce_app/core/utils/widgets/form_body.dart';
import 'package:e_commerce_app/validator/form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_hook_mutation/riverpod_hook_mutation.dart';

class ForgotPasswordPage extends HookConsumerWidget {
  const ForgotPasswordPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useFormKey();
    final phoneNumber = useTextEditingController();

    final mutation = useMutation<OtpResponse>();

    useDeveloperTool(
      ref: ref,
      onLongPressed: () {
        phoneNumber.text = '07700146084';
      },
    );
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
            context.l10n.pleaseEnterYourPhoneNumberToResetPassword,
            textAlign: TextAlign.center,
          ),
          const SizedBox.square(
            dimension: 78,
          ),
          PhoneNumberField(phoneNumber),
          const SizedBox.square(
            dimension: 78,
          ),
          CustomButton(
            text: context.l10n.continueText,
            isLoading: mutation.isLoading,
            onPressed: mutation.isLoading
                ? null
                : () async {
                    if (formKey.isNotValid()) return;
                    final notifier = ref.read(authenticationProvider.notifier);

                    mutation.mutate(
                      () => notifier.forgetPassword(phoneNumber.text),
                      context: context,
                      data: (data) {
                        context.showSuccessSnackBar(
                          data.code,
                        );

                        context.push(
                          RoutesDocument.forgotPasswordVerifyOtpView,
                          extra: phoneNumber.text,
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
          const SizedBox.square(
            dimension: 90,
          ),
          Align(
            child: const NoAccountText(),
          ),
        ],
      ),
    );
  }
}
