import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class CustomSocialCard extends StatelessWidget {
  const CustomSocialCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(12)),
      height: getProportionateScreenHeight(40),
      width: getProportionateScreenWidth(40),
      decoration: const BoxDecoration(
        color: Color(0xFFF5F6F9),
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset('assets/icons/facebook-2.svg'),
    );
  }
}
