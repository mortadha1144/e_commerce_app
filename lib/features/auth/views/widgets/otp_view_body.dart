import 'package:e_commerce_app/core/utils/constants/constants.dart';
import 'package:flutter/material.dart';
import 'otp_form.dart';

class OtpViewBody extends StatelessWidget {
  const OtpViewBody({super.key, required this.phoneNumber});

  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 45),
              const Text(
                'OTP Verification',
                style: headingStyle,
              ),
              Text(
                'We sent your code to ${formatPhoneNumber(phoneNumber)}',
              ),
              buildTimer(),
              const SizedBox(height: 140),
              const OtpForm(),
              const SizedBox(height: 90),
              GestureDetector(
                onTap: () {
                  // resend your OTP
                },
                child: const Text(
                  'Resend OTP Code',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
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
