import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import 'otp_form.dart';

class OtpViewBody extends StatelessWidget {
  const OtpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * .05),
              Text(
                'OTP Verification',
                style: headingStyle,
              ),
              const Text('We sent your code to +1 898 860 ***'),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight * .15),
              const OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * .1),
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
}
