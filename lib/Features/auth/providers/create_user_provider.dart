import 'package:e_commerce_app/Features/auth/data/models/sign_up_model.dart';
import 'package:e_commerce_app/Features/auth/data/repos/auth_repo.dart';
import 'package:e_commerce_app/core/utils/network/state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final createUserProvider =
    AutoDisposeAsyncNotifierProvider<CreateUserNotifier, AsyncX<void>>(
  CreateUserNotifier.new,
);

class CreateUserNotifier extends AutoDisposeAsyncNotifier<AsyncX<void>>
    with AsyncXNotifierMixin<void> {
  @override
  BuildXCallback<void> build() => idle();

  @useResult
  RunXCallback<void> run({
    required SignUpModel body,
  }) =>
      handle(
        () => ref.read(authRepoProvider).signUp(
              body: body,
            ),
      );
}
