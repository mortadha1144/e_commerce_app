import 'package:e_commerce_app/Features/auth/data/models/user_model.dart';
import 'package:e_commerce_app/Features/auth/providers/auth_repo_provider.dart';
import 'package:e_commerce_app/core/utils/network/state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

final completeProfileProvider = AutoDisposeAsyncNotifierProvider<
    CompleteProfileNotifier, AsyncX<UserModel>>(
   CompleteProfileNotifier.new,
);

class CompleteProfileNotifier
    extends AutoDisposeAsyncNotifier<AsyncX<UserModel>>
    with AsyncXNotifierMixin<UserModel> {
  @override
  BuildXCallback<UserModel> build() => idle();

  @useResult
  RunXCallback<UserModel> run(UserModel user) =>
      handle(() => ref.read(authRepoProvider).updateUserInfo(user: user));
}