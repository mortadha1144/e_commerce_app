import 'package:e_commerce_app/Features/auth/data/models/user_model.dart';
import 'package:e_commerce_app/core/utils/app_router2.dart';
import 'package:e_commerce_app/core/utils/providers/object_preference_provider.dart';
import 'package:e_commerce_app/core/utils/providers/settings_provider.dart';
import 'package:e_commerce_app/core/utils/shared_preference/helper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

final userProvider = AutoDisposeNotifierProvider<UserNotifier, UserModel?>(
  UserNotifier.new,
);

class UserNotifier extends AutoDisposeNotifier<UserModel?>
    with NullableObjectPreferenceProvider {
  @override
  @protected
  String get key => PrefKeys.user;

  @override
  UserModel? build() => firstBuild();

  @override
  UserModel? fromJson(Map<String, dynamic>? map) =>
      map == null ? null : UserModel.fromJson(map);

  @override
  Map<String, dynamic>? toJson(UserModel? value) => value?.toJson();

  Future<void> logout()  =>  clear();

  bool isSignedIn() => build() != null;
}
