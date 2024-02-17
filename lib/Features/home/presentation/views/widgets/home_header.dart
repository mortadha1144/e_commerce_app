import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:e_commerce_app/core/utils/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../size_config.dart';
import 'custom_search_field.dart';
import 'icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CustomSearchField(),
          IconBtnWithCounter(
            svgSrc: Assets.assetsIconsCartIcon,
            onPress: () {
              context.push('/${RoutesDocument.cartView}');
            },
          ),
          IconBtnWithCounter(
            svgSrc: Assets.assetsIconsBell,
            numOfItems: 3,
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
