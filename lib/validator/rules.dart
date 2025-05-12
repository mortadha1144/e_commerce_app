import 'package:e_commerce_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';

class AppValidationBuilder extends ValidationBuilder {
  final BuildContext context;

  AppValidationBuilder({
    required this.context,
    required super.optional,
    super.locale,
  });

  AppLocalizations get _l10n => AppLocalizations.of(context)!;

  ValidationBuilder phoneNumberIQ() {
    return regExp(
      RegExp(r'^07[0-9][0-9]{8}$'),
      _l10n.invalidPhoneNumber,
    );
  }
}
