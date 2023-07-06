part of 'auth_cubit.dart';

abstract class AuthState {}

class AuthInitial extends AuthState {}
class RegisterLoading extends AuthState {}
class RegisterSuccess extends AuthState {}
class RegisterFailure extends AuthState {
  final String message;
  RegisterFailure({required this.message});
}
