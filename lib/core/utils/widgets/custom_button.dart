import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.backgroundColor,
    this.size,
    this.fontSize,
  });

  final String text;
  final VoidCallback onPressed;
  final bool isLoading;
  final Color? backgroundColor;
  final Size? size;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size?.width ?? double.infinity,
      height: size?.height ?? getProportionateScreenHeight(56),
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              backgroundColor ?? kPrimaryColor,
            ),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)))),
        onPressed: onPressed,
        child: isLoading
            ? const CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 3,
              )
            : Text(
                text,
                style: TextStyle(
                  fontSize: fontSize ?? getProportionateScreenWidth(18),
                  color: backgroundColor == null ? Colors.white : Colors.black,
                ),
              ),
      ),
    );
  }
}
