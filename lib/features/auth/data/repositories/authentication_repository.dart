import 'package:e_commerce_app/core/data/api/authentication/authentication_client.dart';
import 'package:e_commerce_app/core/data/api/authentication/login_request.dart';
import 'package:e_commerce_app/core/data/api/authentication/authentication_response.dart';
import 'package:e_commerce_app/core/data/api/authentication/otp_verify_request_body.dart';
import 'package:e_commerce_app/core/data/api/authentication/register_request_body.dart';
import 'package:e_commerce_app/core/data/api/authentication/register_response.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_repository.g.dart';

@riverpod
AuthenticationRepository authenticationRepository(Ref ref) {
  final client = ref.read(authenticationClientProvider);
  return AuthenticationRepository(client);
}

class AuthenticationRepository {
  const AuthenticationRepository(this._client);
  final AuthenticationClient _client;

  Future<AuthenticationResponse> login(LoginRequest request) async {
    final response = await _client.login(request);
    return response.data.payload;
  }

  Future<RegisterResponse> register(RegisterRequestBody request) async {
    final response = await _client.register(request);
    return response.data.payload;
  }

  Future<void> resetPassword(String email) async {
    throw UnimplementedError();
  }

  Future<AuthenticationResponse> verifyPhone(
    OtpVerifyRequestBody request,
  ) async {
    final response = await _client.verifyPhone(request);
    return response.data.payload;
  }
}
