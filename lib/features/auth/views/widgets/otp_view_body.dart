import 'dart:async';

import 'package:e_commerce_app/core/data/api/authentication/otp_response.dart';
import 'package:e_commerce_app/core/data/api/error/api_error_message.dart';
import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:e_commerce_app/core/utils/constants/constants.dart';
import 'package:e_commerce_app/core/utils/format/duratio/format.dart';
import 'package:e_commerce_app/core/utils/hook/form_key.dart';
import 'package:e_commerce_app/core/utils/snackbar.dart';
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
import 'package:e_commerce_app/l10n/app_localizations.dart';

class OtpViewBody extends HookConsumerWidget {
  const OtpViewBody({super.key, required this.phoneNumber});

  final String phoneNumber;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(authenticationProvider.notifier);
    final l10n = AppLocalizations.of(context);

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
                  child: Text(
                    l10n.otpVerificationLabel,
                    style: headingStyle,
                  ),
                ),
                const Gap(Insets.small),
                Align(
                  child: Text(
                    l10n.weSentYourCode(formatPhoneNumber(phoneNumber)),
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
                  onPressed: mutation.isLoading
                      ? null
                      : () {
                          if (formKey.isNotValid()) return;
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
                  text: l10n.continueText,
                ),
                const Gap(90),
                Align(
                  child: _ResendOtpCountDownWidget(
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

  Row buildTimer(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${l10n.codeWillExpireIn} '),
        TweenAnimationBuilder(
          tween: Tween(begin: 300.0, end: 0),
          duration: const Duration(minutes: 5),
          builder: (context, value, child) {
            final minutes = (value ~/ 60).toString().padLeft(2, '0');
            final seconds = (value % 60).toInt().toString().padLeft(2, '0');
            return Text(
              '$minutes:$seconds',
              style: const TextStyle(color: kPrimaryColor),
            );
          },
          onEnd: () {},
        ),
      ],
    );
  }

  String formatPhoneNumber(String phoneNumber) {
    return phoneNumber.substring(0, phoneNumber.length - 4) + '****';
  }
}

class _ResendOtpCountDownWidget extends HookConsumerWidget {
  const _ResendOtpCountDownWidget({
    required this.onResendPressed,
  });

  final Future<OtpResponse> Function() onResendPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final l10n = AppLocalizations.of(context);

    final timer = useRef<Timer?>(null);
    final duration = useState<Duration>(Duration.zero);

    final mutation = useMutation<OtpResponse>();

    final canResend = duration.value.inSeconds == 0 && !mutation.isLoading;

    // Function to start (or restart) the countdown.
    void startTimer() {
      timer.value?.cancel();
      duration.value = const Duration(minutes: 2);
      timer.value = Timer.periodic(
        const Duration(seconds: 1),
        (_) {
          if (!duration.value.isNegative && duration.value.inSeconds > 0) {
            duration.value -= const Duration(seconds: 1);
          } else {
            timer.value?.cancel();
            duration.value = Duration.zero;
          }
        },
      );
    }

    // Start the timer once when the widget is first built.
    useEffect(() {
      startTimer();
      return () => timer.value?.cancel();
    }, const []);

    return TextButton(
      onPressed: canResend
          ? () {
              mutation.mutate(
                onResendPressed,
                context: context,
                loading: () => context.showSnackBar(l10n.resendOtpCodeLoading),
                data: (data) {
                  context.showSuccessSnackBar(data.code);
                  startTimer();
                },
                error: (error, _) {
                  showApiErrorMessage(
                    context: context,
                    error: error,
                  );
                },
              );
            }
          : null,
      child: canResend
          ? Text(l10n.resendOtpCode)
          : RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: l10n.canResendOtpIn,
                    style: textTheme.bodyMedium,
                  ),
                  TextSpan(
                    text: duration.value.format,
                    style: textTheme.bodyMedium?.copyWith(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
