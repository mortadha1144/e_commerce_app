import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

import 'discount_banner.dart';
import 'home_header.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            const HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(30)),
            const DiscountBanner(),
          ],
        ),
      ),
    );
  }
}

