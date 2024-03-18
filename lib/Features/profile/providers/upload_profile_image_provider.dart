import 'dart:io';

import 'package:e_commerce_app/Features/profile/data/repos/profile_repo.dart';
import 'package:e_commerce_app/core/data/network/async_state.dart';
import 'package:e_commerce_app/features/auth/providers/user_id_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final uploadProfileImageProvider =
    AutoDisposeNotifierProvider<UploadProfileImageNotifier, AsyncState<String>>(
  UploadProfileImageNotifier.new,
);

class UploadProfileImageNotifier extends AutoDisposeNotifier<AsyncState<String>>
    with AsyncStateMixin<String> {
  @override
  build() => idle();

  AsyncStateCallback<String> run(File file) => handle(
        () {
          final userId = ref.read(userIdProvider);
          return ref
              .read(profileRepoProvider)
              .uploadProfileImage(file, userId!);
        },
      );
}
