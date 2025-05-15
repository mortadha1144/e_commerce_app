import 'package:e_commerce_app/core/data/shared_preferences/preferences.dart';
import 'package:e_commerce_app/features/auth/data/models/user_model.dart';
import 'package:e_commerce_app/core/data/providers/object_preference_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

final userProvider = AutoDisposeNotifierProvider<UserNotifier, UserData?>(
  UserNotifier.new,
);

class UserNotifier extends AutoDisposeNotifier<UserData?>
    with NullableObjectPreferenceProvider {
  @override
  @protected
  String get key => Preferences.user;

  @override
  UserData? build() => firstBuild();

  @override
  UserData? fromJson(Map<String, dynamic>? map) =>
      map == null ? null : UserData.fromPrefJson(map);

  @override
  Map<String, dynamic>? toJson(UserData? value) => value?.toPrefJson();

  Future<void> logout() => clear();

  bool isSignedIn() => build() != null;
}
