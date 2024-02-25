import 'package:e_commerce_app/core/utils/network/network_exceptions.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

/// convert json to list of objects
extension FromJson on List<dynamic> {
  List<T> itemsFromJson<T>(T Function(Map<String, dynamic>) fromJson) {
    return map((x) => fromJson(x as Map<String, dynamic>)).toList();
  }
}

/// convert list of objects to json
extension ToJson<T> on List<T> {
  Map<String, dynamic> toJson(String key, Function(T) toJson) {
    return {
      key: map((x) => toJson(x)).toList(),
    };
  }
}

extension AppLocalizationsExtension on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
  String get locale => l10n.localeName;
}

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => theme.colorScheme;

  TextTheme get textTheme => theme.textTheme;
}

extension GetError on BuildContext {
  String getErrorMessage(NetworkExceptions error) {
    // final exertion = NetworkExceptions.getDioException(error);
    return error.getErrorMessage(NetworkErrorLocalizationsImpl(this));
  }
}

extension AdditionalColors on ColorScheme {
  Color get red => const Color(0xffCF2140);
  Color get g => const Color(0xff079F04);
  Color get p1 => const Color(0xff54C7EF);
  Color get p2 => const Color(0xffD6EEFB);
  Color get p3 => const Color(0xff3284BB);
  Color get n1 => const Color(0xffFFFFFF);
  Color get n2 => const Color(0xffEAEAEA);
  Color get n3 => const Color(0xffCDCDCD);
  Color get n4 => const Color(0xff979797);
  Color get n5 => const Color(0xff545454);
  Color get n6 => const Color(0xff000000);
  Color get n7 => const Color(0xFFF6625E);
  Color get n8 => const Color(0xFFF6625E);
}

extension Capitalize on String {
  String capitalize() {
    if ( isEmpty) {
      return this;
    }
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
