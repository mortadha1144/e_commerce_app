
import 'package:e_commerce_app/features/auth/providers/user_provider.dart';
import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LogoutDialog extends ConsumerWidget {
  const LogoutDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: const Text('Confirm Logout'),
      content: const Text(
        'Are you sure you want to logout?',
      ),
      contentPadding:
          const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 40),
      actionsAlignment: MainAxisAlignment.spaceBetween,
      actions: [
        CustomButton(
          onPressed: () => context.pop(),
          text: 'Cancel',
          backgroundColor: Colors.white,
          size: const Size(100, 40),
          fontSize: 14,
        ),
        CustomButton(
          onPressed: () {
            ref
                .read(userProvider.notifier)
                .logout()
                .then((value) => context.go(RoutesDocument.login));
          },
          text: 'Logout',
          size: const Size(100, 40),
          fontSize: 14,
        ),
      ],
    );
  }
}