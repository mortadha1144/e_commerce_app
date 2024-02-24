import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:e_commerce_app/core/utils/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import '../../../../../size_config.dart';
import 'custom_search_field.dart';
import 'icon_btn_with_counter.dart';

class HomeHeader extends HookWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final searchController = useTextEditingController();
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: CustomSearchField(
              controller: searchController,
              autoFocus: false,
              onChanged: (value) {},
            ),
          ),
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
