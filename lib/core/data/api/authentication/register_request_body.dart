import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_request_body.freezed.dart';
part 'register_request_body.g.dart';

@freezed
abstract class RegisterRequestBody with _$RegisterRequestBody {
  const factory RegisterRequestBody({
    @JsonKey(name: RegisterRequestBody.phoneNumberKey)
    required String phoneNumber,
    @JsonKey(name: RegisterRequestBody.passwordKey) required String password,
    @JsonKey(name: RegisterRequestBody.fullNameKey) required String fullName,
    @JsonKey(name: RegisterRequestBody.emailKey) required String? email,
    @JsonKey(name: RegisterRequestBody.addressKey) required String? address,
  }) = _RegisterRequestBody;

  factory RegisterRequestBody.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestBodyFromJson(json);

  static const String phoneNumberKey = 'phoneNumber';
  static const String passwordKey = 'password';
  static const String fullNameKey = 'fullName';
  static const String emailKey = 'email';
  static const String addressKey = 'address';
}
