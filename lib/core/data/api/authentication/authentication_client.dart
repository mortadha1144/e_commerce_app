import 'package:dio/dio.dart';
import 'package:e_commerce_app/core/data/api/authentication/forget_password_request_body.dart';
import 'package:e_commerce_app/core/data/api/authentication/login_request.dart';
import 'package:e_commerce_app/core/data/api/authentication/authentication_response.dart';
import 'package:e_commerce_app/core/data/api/authentication/otp_verify_request_body.dart';
import 'package:e_commerce_app/core/data/api/authentication/password_reset_toke_response.dart';
import 'package:e_commerce_app/core/data/api/authentication/register_request_body.dart';
import 'package:e_commerce_app/core/data/api/authentication/otp_response.dart';
import 'package:e_commerce_app/core/data/api/authentication/resend_otp_request_body.dart';
import 'package:e_commerce_app/core/data/api/authentication/reset_password_request_body.dart';
import 'package:e_commerce_app/core/data/api/common/api_response.dart';
import 'package:e_commerce_app/core/data/api/dio_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_client.g.dart';

@riverpod
AuthenticationClient authenticationClient(Ref ref) {
  final dio = ref.read(dioProvider);
  return AuthenticationClient(dio);
}

@RestApi()
abstract class AuthenticationClient {
  factory AuthenticationClient(Dio dio, {String? baseUrl}) =
      _AuthenticationClient;

  @POST('/Auth/login')
  Future<HttpResponse<ApiResponse<AuthenticationResponse>>> login(
    @Body() LoginRequest request,
  );

  @POST('/Auth/register')
  Future<HttpResponse<ApiResponse<OtpResponse>>> register(
    @Body() RegisterRequestBody request,
  );

  @POST('/Auth/verify-phone')
  Future<HttpResponse<ApiResponse<AuthenticationResponse>>> verifyPhone(
    @Body() OtpVerifyRequestBody request,
  );

  @POST('/Auth/resend-otp')
  Future<HttpResponse<ApiResponse<OtpResponse>>> resendOtp(
    @Body() ResendOtpRequestBody request,
  );

  @POST('/Auth/forget-password')
  Future<HttpResponse<ApiResponse<OtpResponse>>> forgetPassword(
    @Body() ForgetPasswordRequestBody request,
  );

  @POST('/Auth/forget-password-verify-otp')
  Future<HttpResponse<ApiResponse<PasswordResetTokeResponse>>> forgetPasswordVerifyOtp(
    @Body() OtpVerifyRequestBody request,
  );

  @POST('/Auth/reset-password')
  Future<HttpResponse<ApiResponse<AuthenticationResponse>>> resetPassword(
    @Body() ResetPasswordRequestBody request,
  );
}
