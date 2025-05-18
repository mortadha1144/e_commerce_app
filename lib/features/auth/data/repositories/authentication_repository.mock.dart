import 'package:e_commerce_app/core/data/api/authentication/authentication_response.dart';
import 'package:e_commerce_app/core/data/api/authentication/forget_password_request_body.dart';
import 'package:e_commerce_app/core/data/api/authentication/login_request.dart';
import 'package:e_commerce_app/core/data/api/authentication/otp_verify_request_body.dart';
import 'package:e_commerce_app/core/data/api/authentication/register_request_body.dart';
import 'package:e_commerce_app/core/data/api/authentication/otp_response.dart';
import 'package:e_commerce_app/core/data/api/authentication/resend_otp_request_body.dart';
import 'package:e_commerce_app/features/auth/data/repositories/authentication_repository.dart';

class AuthenticationRepositoryMock implements AuthenticationRepository {
  const AuthenticationRepositoryMock();

  @override
  Future<AuthenticationResponse> login(
    LoginRequest request,
  ) async {
    return Future.delayed(
      const Duration(seconds: 1),
      () => AuthenticationResponse(
        token: 'token',
      ),
    );
  }

  @override
  Future<OtpResponse> register(
    RegisterRequestBody request,
  ) async {
    return Future.delayed(
      const Duration(seconds: 1),
      () => OtpResponse(
        code: '1234',
      ),
    );
  }

  @override
  Future<void> resetPassword(
    String email,
  ) {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }

  @override
  Future<AuthenticationResponse> verifyPhone(
    OtpVerifyRequestBody request,
  ) async {
    return Future.delayed(
      const Duration(seconds: 1),
      () => AuthenticationResponse(
        token: 'token',
      ),
    );
  }

  @override
  Future<OtpResponse> resendOtp(
    ResendOtpRequestBody request,
  ) async {
    return Future.delayed(
      const Duration(seconds: 1),
      () => OtpResponse(
        code: '1234',
      ),
    );
  }

  @override
  Future<OtpResponse> forgetPassword(
    ForgetPasswordRequestBody request,
  ) {
    throw UnimplementedError();
  }
}
