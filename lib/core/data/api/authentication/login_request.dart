import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request.freezed.dart';
part 'login_request.g.dart';

@freezed
abstract class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    @JsonKey(name: LoginRequest.phoneNumberKey)
    required String phoneNumber,
    @JsonKey(name: LoginRequest.passwordKey)
    required String password,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);

  const LoginRequest._();

  static const String phoneNumberKey = 'phoneNumber';
  static const String passwordKey = 'password';
}
