import 'package:e_commerce_app/core/data/api/error/when_api_error.dart';
import 'package:e_commerce_app/core/utils/snackbar.dart';
import 'package:e_commerce_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

void showApiErrorMessage({
  required BuildContext context,
  required Object? error,
}) {
  final l10n = AppLocalizations.of(context);

  return whenApiError(
    error: error,
    apiError: (apiError) {
      context.showErrorSnackBar(apiError.message ?? l10n.defaultErrorMessage);
    },
    noInternetError: () {
      context.showErrorSnackBar(l10n.noInternetErrorMessage);
    },
    orElse: () {
      context.showErrorSnackBar(l10n.defaultErrorMessage);
    },
  );
}
