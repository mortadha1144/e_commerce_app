import 'package:e_commerce_app/core/data/api/authentication/forget_password_request_body.dart';
import 'package:e_commerce_app/core/data/api/authentication/otp_response.dart';
import 'package:e_commerce_app/features/auth/data/repositories/authentication_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'forget_password_provider.g.dart';

@riverpod
class ForgetPassword extends _$ForgetPassword {
  AuthenticationRepository get _repository =>
      ref.read(authenticationRepositoryProvider);

  @override
  FutureOr<void> build() => null;

  Future<OtpResponse> forgetPassword(
    String phoneNumber,
  ) async {
    final response = await _repository.forgetPassword(
      ForgetPasswordRequestBody(phoneNumber: phoneNumber),
    );
    return response;
  }
}
