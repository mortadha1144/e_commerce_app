import 'package:e_commerce_app/Features/chat/presentation/views/chat_view.dart';
import 'package:e_commerce_app/Features/favourite/views/favorite_view.dart';
import 'package:e_commerce_app/Features/profile/presentation/views/profile_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/widgets/custom_bottom_nav_bar.dart';
import '../../../../size_config.dart';
import 'home_view.dart';

class BottomNavigationBarScaffold extends StatefulWidget {
  // final Widget child;
  const BottomNavigationBarScaffold({super.key});

  @override
  State<BottomNavigationBarScaffold> createState() =>
      _BottomNavigationBarScaffoldState();
}

class _BottomNavigationBarScaffoldState
    extends State<BottomNavigationBarScaffold> {
  List<Widget> views = const [
    HomeView(),
    FavoriteView(),
    ChatView(),
    ProfileView(),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    // void onTap(int value) {
    //   setState(() {
    //     selectedIndex = value;
    //     switch (value) {
    //       case 0:
    //         context.go(RoutesDocument.homeView);
    //         break;
    //       case 1:
    //         context.go(RoutesDocument.favoriteView);
    //         break;
    //       case 2:
    //         context.go(RoutesDocument.chatView);
    //         break;
    //       case 3:
    //         context.go(RoutesDocument.profileView);
    //         break;
    //       default:
    //         context.go(RoutesDocument.homeView);
    //         break;
    //     }
    //   });
    // }

    return Scaffold(
      body: views[selectedIndex],
      extendBody: true,
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: selectedIndex,
        onTap: (value) => setState(() {
          selectedIndex = value;
        }),
      ),
      // bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
