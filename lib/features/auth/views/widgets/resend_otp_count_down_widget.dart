import 'dart:async';
import 'package:e_commerce_app/core/data/api/authentication/otp_response.dart';
import 'package:e_commerce_app/core/data/api/error/api_error_message.dart';
import 'package:e_commerce_app/core/utils/constants/constants.dart';
import 'package:e_commerce_app/core/utils/format/duration/format.dart';
import 'package:e_commerce_app/core/utils/snackbar.dart';
import 'package:e_commerce_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_hook_mutation/riverpod_hook_mutation.dart';

class ResendOtpCountDownWidget extends HookConsumerWidget {
  const ResendOtpCountDownWidget({
    super.key,
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
