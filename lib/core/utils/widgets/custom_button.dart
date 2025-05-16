import 'package:e_commerce_app/core/utils/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.backgroundColor,
    this.size,
    this.fontSize,
    this.isOutline = false,
  });

  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final Color? backgroundColor;
  final Size? size;
  final double? fontSize;
  final bool isOutline;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size?.width ?? double.infinity,
      height: size?.height ?? 56,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(
            backgroundColor ?? kPrimaryColor,
          ),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              side: isOutline
                  ? const BorderSide(color: kTextColor)
                  : BorderSide.none,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        onPressed: onPressed,
        child: isLoading
            ? const CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 3,
              )
            : Text(
                text,
                style: TextStyle(
                  fontSize: fontSize ?? 18,
                  color: backgroundColor == null ? Colors.white : Colors.black,
                ),
              ),
      ),
    );
  }
}
