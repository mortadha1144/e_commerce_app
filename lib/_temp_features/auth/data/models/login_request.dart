import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request.freezed.dart';
part 'login_request.g.dart';

@Freezed(
  toJson: true,
)
abstract class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    required String phoneNumber,
    required String password,
  }) = _LoginRequest;
}
