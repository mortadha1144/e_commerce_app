import 'package:e_commerce_app/Features/auth/data/models/user_model.dart';
import 'package:e_commerce_app/Features/auth/providers/auth_repo_provider.dart';
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
  RunXCallback<UserModel> loginWithEmailAndPassword(
          {required String email, required String password}) =>
      handle(() => ref.read(authRepoProvider).loginWithGoogle()
          // () => ref.read(authRepoProvider).loginWithEmailAndPassword(
          //       email: email,
          //       password: password,
          //     ),
          );
  @useResult
  RunXCallback<UserModel> run() =>
      handle(() => ref.read(authRepoProvider).loginWithGoogle());
}

final loginWithEmailAndPasswordProvider = AutoDisposeAsyncNotifierProvider<
    LoginWithEmailAndPasswordNotifier, AsyncX<UserModel>>(
  () => LoginWithEmailAndPasswordNotifier(),
);

class LoginWithEmailAndPasswordNotifier
    extends AutoDisposeAsyncNotifier<AsyncX<UserModel>>
    with AsyncXNotifierMixin<UserModel> {
  @override
  BuildXCallback<UserModel> build() => idle();

  @useResult
  RunXCallback<UserModel> run({
    required String email,
    required String password,
  }) =>
      handle(
        () => ref.read(authRepoProvider).loginWithEmailAndPassword(
              email: email,
              password: password,
            ),
      );
}
