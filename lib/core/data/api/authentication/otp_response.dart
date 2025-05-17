import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_response.freezed.dart';
part 'otp_response.g.dart';

@freezed
abstract class OtpResponse with _$OtpResponse {
  const factory OtpResponse({
    required String code,
  }) = _OtpResponse;

  factory OtpResponse.fromJson(Map<String, dynamic> json) =>
      _$OtpResponseFromJson(json);
}
