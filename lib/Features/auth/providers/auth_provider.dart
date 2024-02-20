import 'dart:async';

import 'package:e_commerce_app/Features/auth/data/models/login_request.dart';
import 'package:e_commerce_app/Features/auth/data/models/user_model.dart';
import 'package:e_commerce_app/Features/auth/data/repos/auth_repo.dart';
import 'package:e_commerce_app/Features/auth/providers/user_provider.dart';
import 'package:e_commerce_app/core/utils/network/async_state.dart';
import 'package:e_commerce_app/core/utils/riverpod/riverpod_extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final loginWithGoogleProvider =
    AutoDisposeAsyncNotifierProvider<LoginWithGoogleNotifier, UserData?>(
  LoginWithGoogleNotifier.new,
);

class LoginWithGoogleNotifier extends AutoDisposeAsyncNotifier<UserData?> {
  @override
  FutureOr<UserData?> build() => null;

  @useResult
  AsyncValueCallback<UserData?> login() async {
    state = const AsyncValue.loading();
    return state = await AsyncValue.guard(() async {
      final user = await ref.read(authRepoProvider).loginWithGoogle();
      await ref.read(userProvider.notifier).update(
            (state) => user,
          );
      return user;
    });
  }
}

final loginWithEmailAndPasswordProvider = AutoDisposeNotifierProvider<
    LoginWithEmailAndPasswordNotifier, AsyncState<UserData>>(
  LoginWithEmailAndPasswordNotifier.new,
);

class LoginWithEmailAndPasswordNotifier
    extends AutoDisposeNotifier<AsyncState<UserData>>
    with AsyncStateMixin<UserData> {
  @override
  AsyncState<UserData> build() => idle();

  AsyncStateCallback<UserData> login({
    required LoginRequest request,
  }) =>
      handle(() async {
        final user = await ref.read(authRepoProvider).loginWithEmailAndPassword(
              request: request,
            );
        await ref.read(userProvider.notifier).update(
              (state) => user,
            );
        return user;
      });
}
