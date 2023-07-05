import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class OtpViewBody extends StatelessWidget {
  const OtpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'OTP Verification',
            style: headingStyle,
          ),
          const Text('We sent your code to +1 898 860 ***'),
          buildTimer()
        ],
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
              onEnd: () {
                
              },
            ),
          ],
        );
  }
}
