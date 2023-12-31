part of 'auth_cubit.dart';

abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthAuthenticated extends AuthState {
  final User user;
  AuthAuthenticated(this.user);

}

class AuthUnauthenticated extends AuthState {}

class AuthFailure extends AuthState {
  final String message;
  AuthFailure(this.message);
}

class RegisterLoading extends AuthState {}

class RegisterSuccess extends AuthState {}

class RegisterFailure extends AuthState {
  final String message;
  RegisterFailure({required this.message});
}

class CompleteProfileLoading extends AuthState {}

class CompleteProfileSuccess extends AuthState {}

class CompleteProfileFailure extends AuthState {
  final String message;
  CompleteProfileFailure({required this.message});
}

class SignInLoading extends AuthState {}

class SignInSuccess extends AuthState {}

class SignInFailure extends AuthState {
  final String message;
  SignInFailure({required this.message});
}

class ResetPasswordLoading extends AuthState {}

class ResetPasswordSuccess extends AuthState {}

class ResetPasswordFailure extends AuthState {
  final String message;
  ResetPasswordFailure({required this.message});
}

class SignInWithGoogleLoading extends AuthState {}

class SignInWithGoogleSuccess extends AuthState {}

class SignInWithGoogleFailure extends AuthState {
  final String message;
  SignInWithGoogleFailure({required this.message});
}
