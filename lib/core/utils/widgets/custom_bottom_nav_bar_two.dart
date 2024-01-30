import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../constants.dart';
import '../enums/enums.dart';

class CustomBottomNavBarTwo extends StatelessWidget {
  const CustomBottomNavBarTwo({
    super.key,
    required this.selectedMenu,
  });

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    Color inActiveIconColor = const Color(0xFFB6B6B6);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, -15),
              blurRadius: 20,
              color: const Color(0xFFDADADA).withOpacity(.15))
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/Shop Icon.svg',
                colorFilter: ColorFilter.mode(
                    selectedMenu == MenuState.home
                        ? kPrimaryColor
                        : inActiveIconColor,
                    BlendMode.srcIn),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/Heart Icon.svg',
                colorFilter: ColorFilter.mode(
                    selectedMenu == MenuState.favourite
                        ? kPrimaryColor
                        : inActiveIconColor,
                    BlendMode.srcIn),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/Chat bubble Icon.svg',
                colorFilter: ColorFilter.mode(
                    selectedMenu == MenuState.message
                        ? kPrimaryColor
                        : inActiveIconColor,
                    BlendMode.srcIn),
              ),
            ),
            IconButton(
              onPressed: () {
                context.push(RoutesDocument.profileView);
              },
              icon: SvgPicture.asset(
                'assets/icons/User Icon.svg',
                colorFilter: ColorFilter.mode(
                    selectedMenu == MenuState.profile
                        ? kPrimaryColor
                        : inActiveIconColor,
                    BlendMode.srcIn),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



