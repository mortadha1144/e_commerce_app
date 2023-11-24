import 'package:e_commerce_app/Features/auth/providers/auth_state_provider.dart';
import 'package:e_commerce_app/core/utils/typedefs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userIdProvider = Provider<UserId?>(
  (ref) => ref.watch(authStateProvider).userId,
);