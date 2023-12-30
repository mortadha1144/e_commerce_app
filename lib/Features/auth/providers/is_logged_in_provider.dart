import 'package:e_commerce_app/Features/auth/data/models/auth_state.dart';
import 'package:e_commerce_app/Features/auth/providers/authentication_provider.dart';
import 'package:e_commerce_app/core/utils/enums/enums.dart';
import 'package:e_commerce_app/core/utils/network/state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final isLoggedInProvider = Provider.autoDispose(
  (ref) {
    final authRepo = ref.watch(authenticationProvider);
    return authRepo.maybeWhen(
      orElse: () => false,
      data: (data) {
        if (data is AsyncXData<AuthState>) {
          return data.data.result == AuthResult.success;
        }
        return false;
      },
    );
  },
);
