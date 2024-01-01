import 'package:e_commerce_app/Features/auth/data/models/create_user_request.dart';
import 'package:e_commerce_app/Features/auth/providers/auth_repo_provider.dart';
import 'package:e_commerce_app/Features/auth/providers/user_repo_provider.dart';
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
    required CreateUserRequest request,
  }) =>
      handle(
        () => ref.read(authRepoProvider).createUserWithEmailAndPassword(
                request: request,
              ),
      );
}
