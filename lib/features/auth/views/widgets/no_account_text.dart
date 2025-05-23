import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:e_commerce_app/core/utils/constants/constants.dart';
import 'package:e_commerce_app/l10n/app_localizations.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final l10n = AppLocalizations.of(context);

    // return Row(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     Text(
    //       l10n.noAccountLabel,
    //       style: const TextStyle(fontSize: 16),
    //     ),
    //     GestureDetector(
    //       onTap: () {
    //         context.push(RoutesDocument.signUp);
    //       },
    //       child: Text(
    //         l10n.signUp,
    //         style: const TextStyle(
    //           fontSize: 16,
    //           color: kPrimaryColor,
    //         ),
    //       ),
    //     ),
    //   ],
    // );

    return RichText(
      text: TextSpan(
        style: textTheme.bodyLarge,
        children: [
          TextSpan(text: l10n.noAccountLabel),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.push(RoutesDocument.signUp);
              },
            text: l10n.signUp,
            style: textTheme.bodyLarge?.copyWith(
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
