import 'package:e_commerce_app/core/utils/services/user_info_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userRepoProvider = Provider<UserRepo>((ref) {
  return UserRepoImpl();
});