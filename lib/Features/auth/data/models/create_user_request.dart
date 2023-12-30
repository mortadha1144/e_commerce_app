class CreateUserRequest {
  final String email;
  final String displayName;
  final String password;

  CreateUserRequest({
    required this.email,
    required this.displayName,
    required this.password,
  });
}
