import 'package:e_commerce_app/core/utils/enums/enums.dart';
import 'package:e_commerce_app/core/utils/type_defs.dart';
import 'package:flutter/foundation.dart' show immutable;

@immutable
class AuthState {
  const AuthState({
    required this.result,
    required this.userId,
  });

  const AuthState.unknown()
      : result = null,
        userId = null;

  const AuthState.aborted()
      : result = null,
        userId = null;
  final AuthResult? result;

  final UserId? userId;

  AuthState copyWithIsLoading(bool isLoading) => AuthState(
        result: result,
        userId: userId,
      );
  @override
  bool operator ==(covariant AuthState other) =>
      identical(this, other) ||
      (result == other.result && userId == other.userId);

  @override
  int get hashCode => Object.hash(
        result,
        userId,
      );
}
