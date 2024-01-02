import 'package:e_commerce_app/Features/auth/data/models/user_model.dart';
import 'package:e_commerce_app/core/utils/shared_preference/helper.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'object_preference_provider.dart';

part 'settings_provider.freezed.dart';
part 'settings_provider.g.dart';

@freezed
class AppSettings with _$AppSettings {
  const AppSettings._();

  const factory AppSettings({
    @Default(ThemeMode.system) ThemeMode themeMode,
    @Default(null) String? localeCode,
  }) = _AppSettings;

  Locale? get locale => localeCode == null ? null : Locale(localeCode!);

  factory AppSettings.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsFromJson(json);
}

final settingsProvider =
    AutoDisposeNotifierProvider<SettingsNotifier, AppSettings>(
  SettingsNotifier.new,
);


class SettingsNotifier extends AutoDisposeNotifier<AppSettings> with ObjectPreferenceProvider {
  @override
  @protected
  String get key => PrefKeys.settings;

  @override
  AppSettings fromJson(Map<String, dynamic> map) => AppSettings.fromJson(map);

  @override
  Map<String, dynamic> toJson(AppSettings value) => value.toJson();

  @override
  AppSettings build() => firstBuild(const AppSettings());

  // Future<void> toggleThemeMode(BuildContext context) =>
  //     update((state) => state.copyWith(
  //         themeMode: ThemeX.getOppositeThemeMode(state.themeMode, context)));

  Future<void> setLocale(Locale? locale) =>
      update((state) => state.copyWith(localeCode: locale?.languageCode));
  

  Future<void> toggleLocale() => update((state) => state.copyWith(
      localeCode: state.locale?.languageCode == "en" ? "ar" : "en"));
}

// final settings = Provider<Settings>((_) => throw UnimplementedError());
