import 'package:e_commerce_app/features/auth/providers/user_provider.dart';
import 'package:e_commerce_app/features/profile/views/widgets/logout_dialog.dart';
import 'package:e_commerce_app/features/profile/views/widgets/profile_menu.dart';
import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:e_commerce_app/core/utils/constants/assets.dart';
import 'package:e_commerce_app/core/utils/theme/colors.dart';
import 'package:e_commerce_app/core/utils/widgets/cashed_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileView extends HookConsumerWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    return Scaffold(
        body: Column(
      children: [
        AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.background,
          title: const Text('Profile'),
        ),
        SizedBox(
          height: 115,
          width: 115,
          child: CashedImage(
            imageUrl: user?.image,
            placeholder: Assets.assetsIconsUserIcon,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        const SizedBox(height: 20),
        ProfileMenu(
          text: 'My Account',
          icon: Assets.assetsIconsUserIcon,
          onPress: () {
            context
                .push<bool?>(
                    '${RoutesDocument.profileView}/${RoutesDocument.updateProfileView}')
                .then((value) =>
                    value == true ? ref.refresh(userProvider) : null);
          },
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
          icon: Assets.assetsIconsQuestionMark,
          onPress: () {},
        ),
        ProfileMenu(
          text: 'Log Out',
          icon: Assets.assetsSvgLogout,
          onPress: () {
            showDialog(
              context: context,
              builder: (context) => const LogoutDialog(),
            );
          },
        ),
      ],
    ));
  }
}
