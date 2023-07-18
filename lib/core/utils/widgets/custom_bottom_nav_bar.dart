import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../constants.dart';
import '../app_router.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;
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
            currentIndex: _selectedIndex,
            onTap: (value) {
              setState(() {
                _selectedIndex = value;
                if (value == 3) {
                  context.push(AppRouter.kProfileView);
                }
              });
            },
            backgroundColor: Colors.white,
            selectedItemColor: kPrimaryColor,
            unselectedItemColor: const Color(0xFFB6B6B6),
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: SvgPicture.asset(
                  'assets/icons/Shop Icon.svg',
                  colorFilter: ColorFilter.mode(
                      _selectedIndex == 0
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
                      _selectedIndex == 1
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
                      _selectedIndex == 2
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
                      _selectedIndex == 3
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
