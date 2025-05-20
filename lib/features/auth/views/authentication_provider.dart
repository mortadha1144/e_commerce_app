import 'package:e_commerce_app/core/data/api/authentication/forget_password_request_body.dart';
import 'package:e_commerce_app/core/data/api/authentication/login_request.dart';
import 'package:e_commerce_app/core/data/api/authentication/authentication_response.dart';
import 'package:e_commerce_app/core/data/api/authentication/otp_verify_request_body.dart';
import 'package:e_commerce_app/core/data/api/authentication/password_reset_toke_response.dart';
import 'package:e_commerce_app/core/data/api/authentication/register_request_body.dart';
import 'package:e_commerce_app/core/data/api/authentication/otp_response.dart';
import 'package:e_commerce_app/core/data/api/authentication/resend_otp_request_body.dart';
import 'package:e_commerce_app/core/data/api/authentication/reset_password_request_body.dart';
import 'package:e_commerce_app/core/data/shared_preferences/preferences.dart';
import 'package:e_commerce_app/core/data/shared_preferences/shared_preferences_provider.dart';
import 'package:e_commerce_app/features/auth/data/repositories/authentication_repository.dart';
import 'package:e_commerce_app/features/auth/views/authentication_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_cache/riverpod_cache.dart';
import 'package:shared_preferences/src/shared_preferences_legacy.dart';

part 'authentication_provider.g.dart';

@riverpod
class Authentication extends _$Authentication
    with AutoDisposeNotifierNotifierOfflinePersistenceMixin {
  AuthenticationRepository get _repository =>
      ref.read(authenticationRepositoryProvider);

  @override
  AuthenticationState build() => firstBuild();

  @override
  @protected
  AuthenticationState get defaultState => AuthenticationState(token: null);

  @override
  AuthenticationState fromJson(Map<String, dynamic> map) {
    return AuthenticationState.fromJson(map);
  }

  @override
  @protected
  String get key => Preferences.authentication;

  @override
  @protected
  SharedPreferences get sharedPreferences {
    return ref.read(sharedPreferencesProvider);
  }

  @override
  @protected
  Map<String, dynamic> toJson(AuthenticationState value) {
    return value.toJson();
  }

  Future<AuthenticationResponse> login({
    required String phoneNumber,
    required String password,
  }) async {
    final response = await _repository.login(
      LoginRequest(
        phoneNumber: phoneNumber,
        password: password,
      ),
    );
    await updateState(state.copyWith(token: response.token));
    return response;
  }

  Future<OtpResponse> register({
    required RegisterRequestBody request,
  }) async {
    final response = await _repository.register(request);
    return response;
  }

  Future<void> logout() async {
    await clear();
    ref.invalidateSelf();
  }

  Future<AuthenticationResponse> verifyPhone({
    required String phoneNumber,
    required String code,
  }) async {
    final response = await _repository.verifyPhone(
      OtpVerifyRequestBody(
        phoneNumber: phoneNumber,
        code: code,
      ),
    );
    await updateState(state.copyWith(token: response.token));
    return response;
  }

  Future<OtpResponse> resendOtp({
    required String phoneNumber,
  }) async {
    final response = await _repository.resendOtp(
      ResendOtpRequestBody(
        phoneNumber: phoneNumber,
      ),
    );
    return response;
  }

  Future<OtpResponse> forgetPassword(
    String phoneNumber,
  ) async {
    final response = await _repository.forgetPassword(
      ForgetPasswordRequestBody(phoneNumber: phoneNumber),
    );
    return response;
  }

  Future<PasswordResetTokeResponse> forgetPasswordVerifyOtp({
    required String phoneNumber,
    required String code,
  }) async {
    final response = await _repository.forgetPasswordVerifyOtp(
      OtpVerifyRequestBody(
        phoneNumber: phoneNumber,
        code: code,
      ),
    );
    return response;
  }

  Future<AuthenticationResponse> resetPassword({
    required ResetPasswordRequestBody request,
  }) async {
    final response = await _repository.resetPassword(request);
    return response;
  }
}
