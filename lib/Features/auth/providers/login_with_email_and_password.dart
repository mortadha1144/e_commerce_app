import 'package:e_commerce_app/Features/auth/data/models/auth_state.dart';
import 'package:e_commerce_app/Features/auth/data/repos/authenticator.dart';
import 'package:e_commerce_app/Features/auth/providers/auth_repo_provider.dart';
import 'package:e_commerce_app/core/utils/enums/enums.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_state/riverpod_state.dart';



final loginWithEmailAndPasswordNotifierProvider =
    AutoDisposeAsyncNotifierProvider<LoginWithEmailAndPasswordNotifier,
        AsyncX<AuthState>>(
 () =>  LoginWithEmailAndPasswordNotifier(),
  
);

class LoginWithEmailAndPasswordNotifier
    extends AutoDisposeAsyncNotifier<AsyncX<AuthState>>
    with AsyncXNotifierMixin<AuthState> {

  

  @override
  BuildXCallback<AuthState> build() {
    final authRepo = ref.read(authRepoProvider);
    if (authRepo.isAlreadyLoggedIn) {
      return  Future.value(AsyncX.data(AuthState(userId: authRepo.userId,isLoading: false,result: AuthResult.success)));
    }
    return Future.value(AsyncX.data(const AuthState.unknown()));
  }

  // @useResult
  // RunXCallback<void> run({required String email, required String password}) =>
  //     handle(
  //       () => ref.read(authRepoProvider).loginWithEmailAndPassword(
  //             email: email,
  //             password: password,
  //           ),
  //     );
}
