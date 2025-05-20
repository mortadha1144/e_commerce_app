import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_reset_toke_response.freezed.dart';
part 'password_reset_toke_response.g.dart';

@freezed
abstract class PasswordResetTokeResponse with _$PasswordResetTokeResponse {
 const factory PasswordResetTokeResponse({
    @JsonKey(name: PasswordResetTokeResponse.tokenKey)
    required String token,
  }) = _PasswordResetTokeResponse;

  factory PasswordResetTokeResponse.fromJson(Map<String, dynamic> json) =>
      _$PasswordResetTokeResponseFromJson(json);

  const PasswordResetTokeResponse._();

  static const String tokenKey = 'token';
}