import 'dart:async';

import 'package:e_commerce_app/Features/auth/data/models/auth_state.dart';
import 'package:e_commerce_app/Features/auth/data/repos/authenticator.dart';
import 'package:e_commerce_app/Features/auth/providers/auth_repo_provider.dart';
import 'package:e_commerce_app/core/utils/enums/enums.dart';
import 'package:e_commerce_app/core/utils/typedefs.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final isLoggedIn = Provider.autoDispose((ref) {
  final authState = ref.watch(authStateProvider2);
  return authState.whenOrNull(
          data: (data) => data.result == AuthResult.success) ??
      false;
});

final authStateProvider2 =
    AutoDisposeAsyncNotifierProvider<AuthNotifier, AuthState>(
  AuthNotifier.new,
  dependencies: [authRepoProvider],
);

class AuthNotifier extends AutoDisposeAsyncNotifier<AuthState> {
  @override
  FutureOr<AuthState> build() {
    final authRepo = ref.read(authRepoProvider);
    if (authRepo.isAlreadyLoggedIn) {
      return AuthState(
          result: AuthResult.success,
          isLoading: false,
          userId: authRepo.userId);
    }
    return const AuthState.unknown();
  }

  Future<AsyncValue> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    state = const AsyncLoading();

  return  state = await AsyncValue.guard(
      () => ref.read(authRepoProvider).loginWithEmailAndPassword(
            email: email,
            password: password,
          ),
    );
  }
}
