import 'package:e_commerce_app/Features/auth/data/repos/user_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userRepoProvider = Provider<UserRepo>((ref) {
  return UserRepoImpl();
});