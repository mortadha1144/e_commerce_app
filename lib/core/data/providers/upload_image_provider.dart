import 'dart:io';

import 'package:e_commerce_app/core/data/network/async_state.dart';
import 'package:e_commerce_app/core/data/services/upload_services.dart';
import 'package:e_commerce_app/features/auth/providers/user_id_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final uploadImageProvider =
    AutoDisposeNotifierProvider<UploadImageNotifier, AsyncState<String>>(
  UploadImageNotifier.new,
);

class UploadImageNotifier extends AutoDisposeNotifier<AsyncState<String>>
    with AsyncStateMixin<String> {
  @override
  build() => idle();

  AsyncStateCallback<String> run(File file) => handle(
        () {
          final userId = ref.read(userIdProvider);
          return ref.read(uploadServicesProvider).uploadImage(file, userId!);
        },
      );
}
