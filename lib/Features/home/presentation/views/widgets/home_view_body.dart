import 'package:e_commerce_app/Features/home/presentation/views/widgets/section_title.dart';
import 'package:flutter/material.dart';

import '../../../../../size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'special_offers.dart';

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
            SizedBox(height: getProportionateScreenWidth(30)),
            const Categories(),
            SizedBox(height: getProportionateScreenWidth(30)),
            const SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            SectionTitle(
              text: 'Popular Product',
              onPress: () {},
            )
          ],
        ),
      ),
    );
  }
}
