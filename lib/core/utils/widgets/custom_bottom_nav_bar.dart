import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key, required this.selectedIndex, required this.onTap,
  });

  final int selectedIndex;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, -15),
              blurRadius: 30,
              color: const Color(0xFFDADADA).withOpacity(.15)),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: SizedBox(
          height: 70,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex:selectedIndex,
            onTap: onTap,
            backgroundColor: Colors.white,
            selectedItemColor: kPrimaryColor,
            unselectedItemColor: const Color(0xFFB6B6B6),
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: SvgPicture.asset(
                  'assets/icons/Shop Icon.svg',
                  colorFilter: ColorFilter.mode(
                      selectedIndex == 0
                          ? kPrimaryColor
                          : const Color(0xFFB6B6B6),
                      BlendMode.srcIn),
                ),
                //
              ),
              BottomNavigationBarItem(
                label: 'Home',
                icon: SvgPicture.asset(
                  'assets/icons/Heart Icon.svg',
                  colorFilter: ColorFilter.mode(
                      selectedIndex == 1
                          ? kPrimaryColor
                          : const Color(0xFFB6B6B6),
                      BlendMode.srcIn),
                ),
                //
              ),
              BottomNavigationBarItem(
                label: 'Home',
                icon: SvgPicture.asset(
                  'assets/icons/Chat bubble Icon.svg',
                  colorFilter: ColorFilter.mode(
                      selectedIndex == 2
                          ? kPrimaryColor
                          : const Color(0xFFB6B6B6),
                      BlendMode.srcIn),
                ),
                //
              ),
              BottomNavigationBarItem(
                label: 'Profile',
                icon: SvgPicture.asset(
                  'assets/icons/User Icon.svg',
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
          ),
        ),
      ),
    );
  }
}
