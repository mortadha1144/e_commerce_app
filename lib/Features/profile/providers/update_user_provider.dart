import 'package:e_commerce_app/core/data/network/async_state.dart';
import 'package:e_commerce_app/features/auth/data/models/user_model.dart';
import 'package:e_commerce_app/features/auth/providers/user_provider.dart';
import 'package:e_commerce_app/features/profile/data/repos/profile_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final updateUserProvider =
    AutoDisposeNotifierProvider<UpdateUserNotifier, AsyncState<UserData>>(
  UpdateUserNotifier.new,
);

class UpdateUserNotifier extends AutoDisposeNotifier<AsyncState<UserData>>
    with AsyncStateMixin<UserData> {
  @override
  build() => idle();

  AsyncStateCallback<UserData> run(UserEdit user) => handle(
        () async {
          final newUser = await ref.read(profileRepoProvider).editUser(user);
          await ref.read(userProvider.notifier).update(
                (state) => newUser,
              );
          return newUser;
        },
      );
}
