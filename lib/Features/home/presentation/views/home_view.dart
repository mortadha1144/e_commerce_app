import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/enums.dart';
import '../../../../core/utils/widgets/custom_bottom_nav_bar.dart';
import '../../../../size_config.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: HomeViewBody(),
      // extendBody: true,
      // bottomNavigationBar: ClipRRect(
      //   borderRadius: const BorderRadius.only(
      //     topLeft: Radius.circular(20),
      //     topRight: Radius.circular(20),
      //   ),
      //   child: BottomNavigationBar(
      //     items: [
      //       BottomNavigationBarItem(
      //           label: 'Home',
      //           icon: SvgPicture.asset('assets/icons/Shop Icon.svg')),
      //       BottomNavigationBarItem(
      //           label: 'Profile',
      //           icon: SvgPicture.asset('assets/icons/Shop Icon.svg')),
      //     ],
      //     showSelectedLabels: false,
      //     showUnselectedLabels: false,
      //   ),
      // ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
