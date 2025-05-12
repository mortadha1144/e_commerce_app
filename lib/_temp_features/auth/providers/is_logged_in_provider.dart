import 'package:e_commerce_app/features/auth/providers/user_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final isLoggedInProvider = Provider.autoDispose(
  (ref) {
    final user = ref.watch(userProvider);
    return user != null;
  },
);
