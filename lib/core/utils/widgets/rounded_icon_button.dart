import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    super.key,
    required this.iconData,
    required this.onPressed,
    this.showShadow = false,
    this.backgroundColor,
    this.size,
    this.iconSize,
  });

  final IconData iconData;
  final VoidCallback? onPressed;
  final bool showShadow;
  final Color? backgroundColor;
  final double? size;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size ?? 30,
      width: size ?? 30,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          foregroundColor: Colors.black,
          backgroundColor: backgroundColor ?? Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        ),
        onPressed: onPressed,
        child: Icon(
          iconData,
          size: iconSize,
        ),
      ),
    );
  }
}
