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

extension GetError on BuildContext {
  String getErrorMessage(NetworkExceptions error) {
    // final exertion = NetworkExceptions.getDioException(error);
    return error.getErrorMessage(NetworkErrorLocalizationsImpl(this));
  }
}
