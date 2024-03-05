import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({super.key, required this.svgIcon});

  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        16,
        20,
        20,
        20,
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: 18,
      ),
    );
  }
}
