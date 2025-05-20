import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_request_body.freezed.dart';
part 'reset_password_request_body.g.dart';

@freezed
abstract class ResetPasswordRequestBody with _$ResetPasswordRequestBody {
 const factory ResetPasswordRequestBody({
    @JsonKey(name: ResetPasswordRequestBody.phoneNumberKey)
    required String phoneNumber,
    @JsonKey(name: ResetPasswordRequestBody.resetTokenKey)
    required String resetToken,
    @JsonKey(name: ResetPasswordRequestBody.newPasswordKey)
    required String newPassword,
  }) = _ResetPasswordRequestBody;

  factory ResetPasswordRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordRequestBodyFromJson(json);

  const ResetPasswordRequestBody._();

  static const String phoneNumberKey = 'phoneNumber';
  static const String resetTokenKey = 'resetToken';
  static const String newPasswordKey = 'newPassword';
}