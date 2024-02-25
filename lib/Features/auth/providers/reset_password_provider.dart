import 'dart:async';

import 'package:e_commerce_app/Features/auth/data/repos/auth_repo.dart';
import 'package:e_commerce_app/core/utils/riverpod/riverpod_extensions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

final resetPasswordProvider =
    AutoDisposeAsyncNotifierProvider<ResetPasswordNotifier, void>(
  ResetPasswordNotifier.new,
);

class ResetPasswordNotifier extends AutoDisposeAsyncNotifier<void> {
  @override
  FutureOr<void> build() => null;

  @useResult
  AsyncValueCallback<void> run({
    required String email,
  }) async {
    state = const AsyncValue.loading();
    return state = await AsyncValue.guard(
      () => ref.read(authRepoProvider).resetPassword(
            email: email,
          ),
    );
  }
}
