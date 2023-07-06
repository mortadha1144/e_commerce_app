part of 'auth_cubit.dart';

abstract class AuthState {}

class AuthInitial extends AuthState {}
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
