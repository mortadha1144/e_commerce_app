import 'package:e_commerce_app/core/data/api/error/api_error_message.dart';
import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:e_commerce_app/core/utils/constants/constants.dart';
import 'package:e_commerce_app/core/utils/hook/form_key.dart';
import 'package:e_commerce_app/core/utils/theme/insets.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:e_commerce_app/features/auth/views/authentication_provider.dart';
import 'package:e_commerce_app/validator/form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_hook_mutation/riverpod_hook_mutation.dart';
import 'otp_form_field.dart';
import 'package:gap/gap.dart';

class OtpViewBody extends HookConsumerWidget {
  const OtpViewBody({super.key, required this.phoneNumber});

  final String phoneNumber;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useFormKey();
    final otp = useTextEditingController();
    final mutation = useMutation();
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Gap(Insets.extraLarge),
                Align(
                  child: const Text(
                    'OTP Verification',
                    style: headingStyle,
                  ),
                ),
                const Gap(Insets.small),
                Align(
                  child: Text(
                    'We sent your code to ${formatPhoneNumber(phoneNumber)}',
                  ),
                ),
                buildTimer(),
                const Gap(140),
                OtpFormField(
                  controller: otp,
                  isError: mutation.isError,
                ),
                const Gap(Insets.extraLarge),
                CustomButton(
                  onPressed: () {
                    if (formKey.isNotValid()) return;
                    final notifier = ref.read(authenticationProvider.notifier);
                    mutation.mutate(
                      () => notifier.verifyPhone(
                        phoneNumber: phoneNumber,
                        code: otp.text,
                      ),
                      context: context,
                      data: (data) {
                        context.replace(RoutesDocument.homeView);
                      },
                      error: (error, _) {
                        showApiErrorMessage(
                          context: context,
                          error: error,
                        );
                      },
                    );
                  },
                  text: 'Continue',
                ),
                const Gap(90),
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      // resend your OTP
                    },
                    child: const Text(
                      'Resend OTP Code',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('This code will expired in '),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: const Duration(seconds: 30),
          builder: (context, value, child) => Text(
            '00:${value.toInt()}',
            style: const TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        ),
      ],
    );
  }

  String formatPhoneNumber(String phoneNumber) {
    return phoneNumber.substring(0, phoneNumber.length - 4) + '****';
  }
}
