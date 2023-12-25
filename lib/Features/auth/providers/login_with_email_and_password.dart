import 'package:e_commerce_app/Features/auth/data/models/auth_state.dart';
import 'package:e_commerce_app/Features/auth/providers/auth_repo_provider.dart';
import 'package:e_commerce_app/core/utils/enums/enums.dart';
import 'package:e_commerce_app/core/utils/network/state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final isLoggedInT = Provider.autoDispose(
  (ref) {
    final authRepo = ref.watch(loginWithEmailAndPasswordNotifierProvider);
    return authRepo.maybeWhen(
      orElse: () => false,
      data: (data) {
        if (data is AsyncXData<AuthState>) {
          return data.data.result == AuthResult.success;
        }
        return false;
      },
    );
  },
);

final loginWithEmailAndPasswordNotifierProvider =
    AutoDisposeAsyncNotifierProvider<LoginWithEmailAndPasswordNotifier,
        AsyncX<AuthState>>(
  () => LoginWithEmailAndPasswordNotifier(),
);

class LoginWithEmailAndPasswordNotifier
    extends AutoDisposeAsyncNotifier<AsyncX<AuthState>>
    with AsyncXNotifierMixin<AuthState> {
  @override
  BuildXCallback<AuthState> build() {
    final authRepo = ref.read(authRepoProvider);
    if (authRepo.isAlreadyLoggedIn) {
      return Future.value(AsyncX.data(AuthState(
          userId: authRepo.userId,
          isLoading: false,
          result: AuthResult.success)));
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
}
