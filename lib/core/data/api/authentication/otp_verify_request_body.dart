import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_verify_request_body.freezed.dart';
part 'otp_verify_request_body.g.dart';

@freezed
abstract class OtpVerifyRequestBody with _$OtpVerifyRequestBody {
  const factory OtpVerifyRequestBody({
    @JsonKey(name: OtpVerifyRequestBody.phoneNumberKey)
    required String phoneNumber,
    @JsonKey(name: OtpVerifyRequestBody.codeKey) required String code,
  }) = _OtpVerifyRequestBody;

  factory OtpVerifyRequestBody.fromJson(Map<String, dynamic> json) =>
      _$OtpVerifyRequestBodyFromJson(json);

  const OtpVerifyRequestBody._();

  static const String phoneNumberKey = 'phoneNumber';
  static const String codeKey = 'code';
}
