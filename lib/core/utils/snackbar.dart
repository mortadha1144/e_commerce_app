import 'package:e_commerce_app/core/data/network/network_exceptions.dart';
import 'package:flutter/material.dart';

class Utils {
  static final messengerKey = GlobalKey<ScaffoldMessengerState>();
  static showErrorSnackBar(String? text) {
    if (text == null) return;
    SnackBar snackBar = SnackBar(
      content: Text(text),
      behavior: SnackBarBehavior.floating,
      // backgroundColor: colorSchemeNotifier.value.error,
    );
    messengerKey.currentState!
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static showSuccessSnackBar(String? text) {
    if (text == null) return;
    SnackBar snackBar = SnackBar(
      content: Text(text),
      behavior: SnackBarBehavior.floating,
    );
    messengerKey.currentState!
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static showNotificationSnackBar(String? title) {
    if (title == null) return;
    SnackBar snackBar = SnackBar(
      content: Text(title),
      behavior: SnackBarBehavior.floating,
    );
    messengerKey.currentState!
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}

extension SnackBarX on BuildContext {
  void showSnackBar(String text) {
    ScaffoldMessenger.of(this)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(text),
          behavior: SnackBarBehavior.floating,
          // backgroundColor: theme.colorScheme.error,
        ),
      );
  }

  void showSuccessSnackBar(String text) {
    // final theme = Theme.of(this);

    ScaffoldMessenger.of(this)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(text),
          behavior: SnackBarBehavior.floating,
        ),
      );
  }

  void showErrorSnackBar(String text) {
    final theme = Theme.of(this);

    ScaffoldMessenger.of(this)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            text,
            style: TextStyle(
              color: theme.colorScheme.onError,
            ),
          ),
          backgroundColor: theme.colorScheme.error,
          behavior: SnackBarBehavior.floating,
        ),
      );
  }

  void showErrorMessage(NetworkExceptions error) {
    return showErrorSnackBar(
      error.getErrorMessage(
        NetworkErrorLocalizationsImpl(this),
      ),
    );
  }
}
