import 'package:e_commerce_app/Features/auth/data/repos/auth_repo.dart';
import 'package:e_commerce_app/core/utils/network/state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

final resetPasswordProvider =
    AutoDisposeAsyncNotifierProvider<ResetPasswordNotifier, AsyncX<void>>(
  ResetPasswordNotifier.new,
);

class ResetPasswordNotifier extends AutoDisposeAsyncNotifier<AsyncX<void>>
    with AsyncXNotifierMixin<void> {
  @override
  BuildXCallback<void> build() => idle();

  @useResult
  RunXCallback<void> run({
    required String email,
  }) =>
      handle(
        () => ref.read(authRepoProvider).resetPassword(
              email: email,
            ),
      );
}
