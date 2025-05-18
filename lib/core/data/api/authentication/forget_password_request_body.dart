import 'package:freezed_annotation/freezed_annotation.dart';

part 'forget_password_request_body.freezed.dart';
part 'forget_password_request_body.g.dart';

@freezed
abstract class ForgetPasswordRequestBody with _$ForgetPasswordRequestBody {
  const factory ForgetPasswordRequestBody({
    @JsonKey(name: ForgetPasswordRequestBody.phoneNumberKey)
    required String phoneNumber,
  }) = _ForgetPasswordRequestBody;

  factory ForgetPasswordRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ForgetPasswordRequestBodyFromJson(json);

  const ForgetPasswordRequestBody._();
  static const phoneNumberKey = 'phoneNumber';
}
