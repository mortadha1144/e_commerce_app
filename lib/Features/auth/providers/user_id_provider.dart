import 'package:e_commerce_app/Features/auth/data/models/auth_state.dart';
import 'package:e_commerce_app/Features/auth/providers/authentication_provider.dart';
import 'package:e_commerce_app/core/utils/network/state.dart';
import 'package:e_commerce_app/core/utils/typedefs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userIdProvider = Provider.autoDispose<UserId?>(
  (ref) {
    final authRepo = ref.watch(loginWithGoogleProvider);
    return authRepo.maybeWhen(
      orElse: () => null,
      data: (data) {
        if (data is AsyncXData<AuthState>) {
          return '';
          // data.data.userId;
        }
        return null;
      },
    );
  },
);
