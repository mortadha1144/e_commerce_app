import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class OtpViewBody extends StatelessWidget {
  const OtpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            Text(
              'OTP Verification',
              style: headingStyle,
            ),
            const Text('We sent your code to +1 898 860 ***'),
            buildTimer(),
            const OtpForm()
          ],
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

class OtpForm extends StatefulWidget {
  const OtpForm({super.key});

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
    super.dispose();
  }

  void nextField({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
              autofocus: true,
              obscureText: true,
              keyboardType: TextInputType.number,
              style: const TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              decoration: otpInputDecoration,
              onChanged: (value) {
                nextField(value: value, focusNode: pin2FocusNode!);
              },
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
              focusNode: pin2FocusNode,
              obscureText: true,
              keyboardType: TextInputType.number,
              style: const TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              decoration: otpInputDecoration,
              onChanged: (value) {
                nextField(value: value, focusNode: pin3FocusNode!);
              },
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
              focusNode: pin3FocusNode,
              obscureText: true,
              keyboardType: TextInputType.number,
              style: const TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              decoration: otpInputDecoration,
              onChanged: (value) {
                nextField(value: value, focusNode: pin4FocusNode!);
              },
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
              focusNode: pin4FocusNode,
              obscureText: true,
              keyboardType: TextInputType.number,
              style: const TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              decoration: otpInputDecoration,
              onChanged: (value) {
                pin4FocusNode!.unfocus();
              },
            ),
          ),
        ],
      ),
    );
  }
}
