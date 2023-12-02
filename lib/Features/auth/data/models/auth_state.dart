import 'package:e_commerce_app/core/utils/enums/enums.dart';
import 'package:e_commerce_app/core/utils/typedefs.dart';
import 'package:flutter/foundation.dart' show immutable;

@immutable
class AuthState {
  final AuthResult? result;
  final bool isLoading;
  final UserId? userId;
  final String? errorMessage;

  const AuthState({
    required this.result,
    required this.isLoading,
    required this.userId,
    this.errorMessage,
  });

  const AuthState.unknown()
      : result = null,
        isLoading = false,
        userId = null,
        errorMessage = null;

  const AuthState.error(this.errorMessage)
      : result = null,
        isLoading = false,
        userId = null;

  const AuthState.aborted()
      : result = null,
        isLoading = false,
        userId = null,
        errorMessage = null;

  AuthState copyWithIsLoading(bool isLoading) => AuthState(
        result: result,
        isLoading: isLoading,
        userId: userId,
      );
  @override
  bool operator ==(covariant AuthState other) =>
      identical(this, other) ||
      (result == other.result &&
          isLoading == other.isLoading &&
          userId == other.userId);

  @override
  int get hashCode => Object.hash(
        result,
        isLoading,
        userId,
      );
}
