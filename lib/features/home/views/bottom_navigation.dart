import 'package:e_commerce_app/features/cart/views/cart_view.dart';
import 'package:e_commerce_app/features/favorite/views/favorite_view.dart';
import 'package:e_commerce_app/features/profile/views/profile_view.dart';
import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/widgets/custom_bottom_nav_bar.dart';
import 'home_view.dart';

class BottomNavigationBarScaffold extends StatefulWidget {
  const BottomNavigationBarScaffold({super.key, required this.child});
  final Widget child;

  @override
  State<BottomNavigationBarScaffold> createState() =>
      _BottomNavigationBarScaffoldState();
}

class _BottomNavigationBarScaffoldState
    extends State<BottomNavigationBarScaffold> {
  List<Widget> views = const [
    HomeView(),
    FavoriteView(),
    CartView(),
    ProfileView(),
  ];
  int selectedIndex = 0;

  void onTap(int value) {
    setState(() {
      selectedIndex = value;
      switch (value) {
        case 0:
          context.go(RoutesDocument.homeView);
          break;
        case 1:
          context.go(RoutesDocument.cartView);
          break;
        case 2:
          context.go(RoutesDocument.favoriteView);
          break;
        case 3:
          context.go(RoutesDocument.profileView);
          break;
        default:
          context.go(RoutesDocument.homeView);
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      extendBody: true,
      bottomNavigationBar:
          CustomBottomNavBar(selectedIndex: selectedIndex, onTap: onTap),
      // bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
