import 'package:e_commerce_app/Features/profile/presentation/views/widgets/profile_view_body.dart';
import 'package:e_commerce_app/core/utils/enums.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/widgets/custom_bottom_nav_bar_two.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const ProfileViewBody(),
      // bottomNavigationBar:
      //     const CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}

