import 'package:e_commerce_app/l10n/app_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:form_validator/form_validator.dart';

class AppFormValidatorLocale extends FormValidatorLocale {
  final BuildContext context;

  AppFormValidatorLocale(this.context);

  AppLocalizations get _l10n => AppLocalizations.of(context)!;

  @override
  String email(String v) => _l10n.invalidEmail;

  @override
  String maxLength(String v, int n) => _l10n.validationMaxLength(n);

  @override
  String minLength(String v, int n) => _l10n.validationMinLength(n);

  @override
  String required() => _l10n.validationRequired;

  @override
  String url(String v) => _l10n.validationUrl;

  @override
  String name() => "all";

  @override
  String phoneNumber(String v) => "invalid phone number";

  @override
  String ip(String v) => "invalid ip address";

  @override
  String ipv6(String v) => "invalid ipv6 address";
}
