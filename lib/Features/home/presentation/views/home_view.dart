import 'package:e_commerce_app/Features/chat/presentation/views/chat_view.dart';
import 'package:e_commerce_app/Features/favourite/presentation/views/favourite_view.dart';
import 'package:e_commerce_app/Features/profile/presentation/views/profile_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/widgets/custom_bottom_nav_bar.dart';
import '../../../../size_config.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Widget> views = const [
    HomeViewBody(),
    FavouritView(),
    ChatView(),
    ProfileView(),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: views[selectedIndex],
      extendBody: true,
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
      ),

      // bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
