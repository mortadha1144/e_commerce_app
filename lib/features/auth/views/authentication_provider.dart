import 'package:e_commerce_app/core/data/api/authentication/login_request.dart';
import 'package:e_commerce_app/core/data/api/authentication/login_response.dart';
import 'package:e_commerce_app/features/auth/data/repositories/authentication_repository.dart';
import 'package:e_commerce_app/features/auth/views/authentication_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_provider.g.dart';

@Riverpod(keepAlive: true)
class Authentication extends _$Authentication {
  AuthenticationRepository get _repository =>
      ref.read(authenticationRepositoryProvider);

  @override
  AuthenticationState build() {
    return AuthenticationState(token: null);
  }

  Future<LoginResponse> login({
    required String phoneNumber,
    required String password,
  }) async {
    final response = await _repository.login(
      LoginRequest(
        phoneNumber: phoneNumber,
        password: password,
      ),
    );
    state = state.copyWith(token: response.token);
    return response;
  }

  void logout() {
    state = state.copyWith(token: null);
  }
}
