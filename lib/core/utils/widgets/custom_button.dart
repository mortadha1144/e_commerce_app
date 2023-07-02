import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text, required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll(
              kPrimaryColor,
            ),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)))),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
