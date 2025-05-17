import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_response.freezed.dart';
part 'authentication_response.g.dart';

@freezed
abstract class AuthenticationResponse with _$AuthenticationResponse {
  const factory AuthenticationResponse({
    @JsonKey(name: AuthenticationResponse.tokenKey) required String token,
  }) = _AuthenticationResponse;

  factory AuthenticationResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationResponseFromJson(json);

  const AuthenticationResponse._();

  static const String tokenKey = 'token';
}
