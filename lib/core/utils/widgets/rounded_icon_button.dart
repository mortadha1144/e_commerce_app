import 'package:flutter/material.dart';

import '../../../size_config.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    super.key,
    required this.iconData,
    required this.onPressed,
    this.showShadow = false,
  });

  final IconData iconData;
  final VoidCallback onPressed;
  final bool showShadow;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        ),
        onPressed: onPressed,
        child: Icon(iconData),
      ),
    );
  }
}
