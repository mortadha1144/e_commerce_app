import 'dart:async';

import 'package:e_commerce_app/Features/auth/data/models/login_request.dart';
import 'package:e_commerce_app/Features/auth/data/models/user_model.dart';
import 'package:e_commerce_app/Features/auth/data/repos/auth_repo.dart';
import 'package:e_commerce_app/Features/auth/providers/user_provider.dart';
import 'package:e_commerce_app/core/utils/network/state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final loginWithGoogleProvider = AutoDisposeAsyncNotifierProvider<
    LoginWithGoogleNotifier, AsyncX<UserModel>>(
  () => LoginWithGoogleNotifier(),
);

class LoginWithGoogleNotifier
    extends AutoDisposeAsyncNotifier<AsyncX<UserModel>>
    with AsyncXNotifierMixin<UserModel> {
  @override
  BuildXCallback<UserModel> build() => idle();

  @useResult
  RunXCallback<UserModel> run() => handle(() async {
        final user = await ref.read(authRepoProvider).loginWithGoogle();
        // TODO(mortadha): edit this
        // await ref.read(userProvider.notifier).update((state) => user,);
        return user;
      });
}

final loginWithEmailAndPasswordProvider = AutoDisposeAsyncNotifierProvider<
    LoginWithEmailAndPasswordNotifier, AsyncX<UserData>>(
  () => LoginWithEmailAndPasswordNotifier(),
);

class LoginWithEmailAndPasswordNotifier
    extends AutoDisposeAsyncNotifier<AsyncX<UserData>>
    with AsyncXNotifierMixin<UserData> {
  @override
  BuildXCallback<UserData> build() => idle();

  @useResult
  RunXCallback<UserData> run({
    required LoginRequest request,
  }) =>
      handle(
        () async {
          final user =
              await ref.read(authRepoProvider).loginWithEmailAndPassword(
                    request: request,
                  );
          await ref.read(userProvider.notifier).update(
                (state) => user,
              );

          return user;
        },
      );
}