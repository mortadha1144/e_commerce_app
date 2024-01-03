import 'package:e_commerce_app/Features/profile/presentation/views/widgets/logout_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'profile_menu.dart';
import 'profile_picture.dart';

class ProfileViewBody extends ConsumerWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Profile'),
        ),
        const ProfilePicture(),
        const SizedBox(height: 20),
        ProfileMenu(
          text: 'My Account',
          icon: 'assets/icons/User Icon.svg',
          onPress: () {},
        ),
        ProfileMenu(
          text: 'Notifications',
          icon: 'assets/icons/Bell.svg',
          onPress: () {},
        ),
        ProfileMenu(
          text: 'Settings',
          icon: 'assets/icons/Settings.svg',
          onPress: () {},
        ),
        ProfileMenu(
          text: 'Help Center',
          icon: 'assets/icons/Question mark.svg',
          onPress: () {},
        ),
        ProfileMenu(
          text: 'Log Out',
          icon: 'assets/icons/Log out.svg',
          onPress: () {
            showDialog(
              context: context,
              builder: (context) => const LogoutDialog(),
            );
            // ref
            //     .read(userProvider.notifier)
            //     .logout()
            //     .then((value) => context.go(RoutesDocument.login));
          },
        ),
      ],
    );
  }
}

