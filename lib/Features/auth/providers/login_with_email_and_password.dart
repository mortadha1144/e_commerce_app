import 'package:e_commerce_app/Features/auth/data/models/auth_state.dart';
import 'package:e_commerce_app/Features/auth/providers/auth_repo_provider.dart';
import 'package:e_commerce_app/Features/auth/providers/user_repo_provider.dart';
import 'package:e_commerce_app/core/utils/enums/enums.dart';
import 'package:e_commerce_app/core/utils/network/state.dart';
import 'package:e_commerce_app/core/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authenticationProvider = AutoDisposeAsyncNotifierProvider<
    AuthenticationNotifier, AsyncX<AuthState>>(
  () => AuthenticationNotifier(),
);

class AuthenticationNotifier
    extends AutoDisposeAsyncNotifier<AsyncX<AuthState>>
    with AsyncXNotifierMixin<AuthState> {
  @override
  BuildXCallback<AuthState> build() {
    final authRepo = ref.read(authRepoProvider);
    if (authRepo.isAlreadyLoggedIn) {
      return Future.value(AsyncX.data(
          AuthState(userId: authRepo.userId, result: AuthResult.success)));
    }
    return Future.value(AsyncX.data(const AuthState.unknown()));
  }

  @useResult
  RunXCallback<AuthState> loginWithEmailAndPassword(
          {required String email, required String password}) =>
      handle(
        () => ref.read(authRepoProvider).loginWithEmailAndPassword(
              email: email,
              password: password,
            ),
      );
  @useResult
  RunXCallback<AuthState> loginWithGoogle() => handle(
        () => ref
            .read(authRepoProvider)
            .loginWithGoogle()
            .then((authState) async {
          if (authState.result == AuthResult.success) {
            await saveUserInfo(userId: authState.userId!);
          }
          return authState;
        }),
      );

  Future<void> saveUserInfo({
    required UserId userId,
  }) async =>
      ref.read(userRepoProvider).saveUserInfo(
            userId: userId,
            displayName: ref.read(authRepoProvider).displayName,
            email: ref.read(authRepoProvider).email,
          );
}
