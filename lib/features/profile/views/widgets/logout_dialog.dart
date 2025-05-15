import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:e_commerce_app/core/utils/snackbar.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:e_commerce_app/features/auth/views/authentication_provider.dart';
import 'package:e_commerce_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_hook_mutation/riverpod_hook_mutation.dart';

class LogoutDialog extends HookConsumerWidget {
  const LogoutDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mutation = useMutation<void>();
    final l10n = AppLocalizations.of(context);
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Text(l10n.confirmLogoutLabel),
      content: Text(
        l10n.areYouSureLogout,
      ),
      contentPadding:
          const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 40),
      actionsAlignment: MainAxisAlignment.spaceBetween,
      actions: [
        CustomButton(
          onPressed: () => context.pop(),
          text: l10n.cancelLabel,
          backgroundColor: Colors.white,
          size: const Size(100, 40),
          fontSize: 14,
        ),
        CustomButton(
          onPressed: mutation.isLoading
              ? null
              : () async {
                  final notifier = ref.read(authenticationProvider.notifier);
                  await mutation.mutate(
                    notifier.logout,
                    context: context,
                    data: (data) => context.replace(RoutesDocument.login),
                    error: (error, _) =>
                        context.showErrorSnackBar('Something went wrong'),
                  );
                },
          isLoading: mutation.isLoading,
          text: l10n.logoutLabel,
          size: const Size(100, 40),
          fontSize: 14,
        ),
      ],
    );
  }
}
