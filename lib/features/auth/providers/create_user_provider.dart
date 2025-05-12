import 'dart:async';

import 'package:e_commerce_app/features/auth/data/models/sign_up_model.dart';
import 'package:e_commerce_app/features/auth/data/repos/auth_repo.dart';
import 'package:e_commerce_app/core/data/riverpod/riverpod_extensions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final createUserProvider =
    AutoDisposeAsyncNotifierProvider<CreateUserNotifier, void>(
  CreateUserNotifier.new,
);

class CreateUserNotifier extends AutoDisposeAsyncNotifier<void> {
  @override
  FutureOr<void> build() => null;

  AsyncValueCallback<void> run({
    required SignUpModel body,
  }) async {
    state = const AsyncValue.loading();
    return state = await AsyncValue.guard(
      () => ref.read(authRepoProvider).signUp(
            body: body,
          ),
    );
  }
}