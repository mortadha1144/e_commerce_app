import 'package:e_commerce_app/Features/auth/providers/user_provider.dart';
import 'package:e_commerce_app/core/utils/type_defs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userIdProvider = Provider.autoDispose<UserId?>(
  (ref) {
    final user = ref.watch(userProvider);
    return user?.uid;
  },
);
