import 'dart:async';

import 'package:e_commerce_app/Features/auth/data/models/login_request.dart';
import 'package:e_commerce_app/Features/auth/data/models/user_model.dart';
import 'package:e_commerce_app/Features/auth/data/repos/auth_repo.dart';
import 'package:e_commerce_app/Features/auth/providers/user_provider.dart';
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
      // TODO(mortadha): edit this
      await ref.read(userProvider.notifier).update((state) => user,);
      return user;
    });
  }
}

final loginWithEmailAndPasswordProvider = AutoDisposeAsyncNotifierProvider<
    LoginWithEmailAndPasswordNotifier, UserData?>(
  LoginWithEmailAndPasswordNotifier.new,
);

class LoginWithEmailAndPasswordNotifier
    extends AutoDisposeAsyncNotifier<UserData?> {
  @override
  FutureOr<UserData?> build() => null;

  AsyncValueCallback<UserData?> login({
    required LoginRequest request,
  }) async {
    state = const AsyncValue.loading();
    return state = await AsyncValue.guard(
      () async {
        final user = await ref.read(authRepoProvider).loginWithEmailAndPassword(
              request: request,
            );
        await ref.read(userProvider.notifier).update(
              (state) => user,
            );

        return user;
      },
    );
  }
}
