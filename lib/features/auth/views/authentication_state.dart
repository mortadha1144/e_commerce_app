import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_state.freezed.dart';
part 'authentication_state.g.dart';

@freezed
abstract class AuthenticationState with _$AuthenticationState {
  factory AuthenticationState({
    required String? token,
  }) = _AuthenticationState;

  factory AuthenticationState.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationStateFromJson(json);
}
