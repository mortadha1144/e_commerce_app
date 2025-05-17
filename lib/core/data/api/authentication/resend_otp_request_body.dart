import 'package:freezed_annotation/freezed_annotation.dart';

part 'resend_otp_request_body.freezed.dart';
part 'resend_otp_request_body.g.dart';

@freezed
abstract class ResendOtpRequestBody with _$ResendOtpRequestBody {
 const factory ResendOtpRequestBody({
    @JsonKey(name: ResendOtpRequestBody.phoneNumberKey)
    required String phoneNumber,
  }) = _ResendOtpRequestBody;

  factory ResendOtpRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ResendOtpRequestBodyFromJson(json);

  const ResendOtpRequestBody._();

  static const String phoneNumberKey = 'phoneNumber';
}