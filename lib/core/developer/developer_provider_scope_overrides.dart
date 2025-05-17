import 'package:e_commerce_app/features/auth/data/repositories/authentication_repository.dart';
import 'package:e_commerce_app/features/auth/data/repositories/authentication_repository.mock.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

List<Override> mockProviderScopeOverrides() {
  return [
    authenticationRepositoryProvider.overrideWithValue(
      AuthenticationRepositoryMock(),
    ),
  ];
}