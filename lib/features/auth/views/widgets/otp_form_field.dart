import 'package:e_commerce_app/core/utils/constants/constants.dart';
import 'package:e_commerce_app/core/utils/constants/sizes.dart';
import 'package:e_commerce_app/core/utils/theme/radiuses.dart';
import 'package:e_commerce_app/validator/extension.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

/// The length of the OTP fields.
const int otpLength = 4;

/// This widget is used to display OTP fields.
///
/// [controller] is the controller of the OTP fields.
/// [isError] is a boolean that indicates if the OTP fields are in error state.
///
/// This widget contains a [Pinput] widget that displays the OTP fields.
class OtpFormField extends StatelessWidget {
  const OtpFormField({
    super.key,
    required this.controller,
    required this.isError,
  });

  final TextEditingController controller;
  final bool isError;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    final defaultPinputTheme = PinTheme(
      textStyle: textTheme.headlineMedium?.copyWith(
        fontWeight: FontWeight.w500,
      ),
      margin: const EdgeInsets.all(Insets.small),
      padding: const EdgeInsets.all(Insets.medium),
      decoration: BoxDecoration(
        border: Border.all(color: colorScheme.outline),
        borderRadius: BorderRadiuses.medium,
      ),
    );

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Pinput(
        controller: controller,
        length: otpLength,
        forceErrorState: isError,
        defaultPinTheme: defaultPinputTheme,
        validator: context.validator().length(otpLength).build(),
        errorPinTheme: defaultPinputTheme.copyWith(
          textStyle: textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.w500,
            color: colorScheme.error,
          ),
        ),
        focusedPinTheme: defaultPinputTheme.copyWith(
          decoration: BoxDecoration(
            border: Border.all(color: kPrimaryColor),
            borderRadius: BorderRadiuses.medium,
          ),
        ),
      ),
    );
  }
}
