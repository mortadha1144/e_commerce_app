import 'package:e_commerce_app/Features/auth/data/repos/authenticator.dart';
import 'package:e_commerce_app/Features/auth/providers/user_repo_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authRepoProvider = Provider<AuthRepo>((ref) {
  return AuthRepoImpl(userRepo: ref.read(userRepoProvider));
});
