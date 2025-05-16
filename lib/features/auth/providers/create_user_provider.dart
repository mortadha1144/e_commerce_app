import 'dart:async';

import 'package:e_commerce_app/core/data/api/authentication/register_request_body.dart';
import 'package:e_commerce_app/core/data/riverpod/riverpod_extensions.dart';
import 'package:e_commerce_app/features/auth/data/repositories/authentication_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final createUserProvider =
    AutoDisposeAsyncNotifierProvider<CreateUserNotifier, void>(
  CreateUserNotifier.new,
);

class CreateUserNotifier extends AutoDisposeAsyncNotifier<void> {
  @override
  FutureOr<void> build() => null;

  AsyncValueCallback<void> run({
    required RegisterRequestBody body,
  }) async {
    state = const AsyncValue.loading();
    return state = await AsyncValue.guard(
      () => ref.read(authenticationRepositoryProvider).register(body),
    );
  }
}
