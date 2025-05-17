import 'package:e_commerce_app/core/utils/constants/constants.dart';
import 'package:e_commerce_app/core/utils/theme/insets.dart';
import 'package:e_commerce_app/features/cart/providers/cart_provider.dart';
import 'package:e_commerce_app/features/favorite/providers/favorite_provider.dart';
import 'package:e_commerce_app/core/utils/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  final int selectedIndex;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: Insets.medium,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, -15),
              blurRadius: 30,
              color: const Color(0xFFDADADA).withValues(alpha: .15)),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: Consumer(builder: (context, ref, _) {
          final cartCount = ref.watch(cartProvider).length;
          final favoriteCount = ref.watch(favoriteProvider).length;
          return BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            currentIndex: selectedIndex,
            onTap: onTap,
            backgroundColor: Colors.white,
            selectedItemColor: kPrimaryColor,
            unselectedItemColor: const Color(0xFFB6B6B6),
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: SvgPicture.asset(
                  Assets.assetsIconsShopIcon,
                  colorFilter: ColorFilter.mode(
                      selectedIndex == 0
                          ? kPrimaryColor
                          : const Color(0xFFB6B6B6),
                      BlendMode.srcIn),
                ),
                //
              ),
              BottomNavigationBarItem(
                label: 'Cart',
                icon: IconWithCount(
                  isSelected: selectedIndex == 1,
                  image: Assets.assetsIconsCartIcon,
                  count: cartCount,
                ),
                //
              ),
              BottomNavigationBarItem(
                label: 'Favorite',
                icon: IconWithCount(
                  image: Assets.assetsIconsHeartIcon,
                  isSelected: selectedIndex == 2,
                  count: favoriteCount,
                ),
                //
              ),
              BottomNavigationBarItem(
                label: 'Profile',
                icon: SvgPicture.asset(
                  Assets.assetsIconsUserIcon,
                  colorFilter: ColorFilter.mode(
                      selectedIndex == 3
                          ? kPrimaryColor
                          : const Color(0xFFB6B6B6),
                      BlendMode.srcIn),
                ),
              ),
            ],
            showSelectedLabels: false,
            showUnselectedLabels: false,
          );
        }),
      ),
    );
  }
}

class IconWithCount extends StatelessWidget {
  const IconWithCount({
    super.key,
    required this.image,
    required this.isSelected,
    required this.count,
  });

  final String image;
  final int count;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SvgPicture.asset(
          image,
          colorFilter: ColorFilter.mode(
            isSelected ? kPrimaryColor : const Color(0xFFB6B6B6),
            BlendMode.srcIn,
          ),
        ),
        if (count > 0)
          Positioned(
            top: -12,
            right: -4,
            child: Container(
              height: 16,
              width: 16,
              decoration: BoxDecoration(
                  color: const Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1.5,
                    color: Colors.white,
                  )),
              child: Center(
                child: Text(
                  '$count',
                  style: const TextStyle(
                    fontSize: 10,
                    height: 1,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          )
      ],
    );
  }
}
