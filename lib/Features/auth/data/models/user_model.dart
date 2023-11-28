import 'dart:convert';

class UserModel {
  final String email;
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String address;

  UserModel({
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.address,
  });

  Map<String, dynamic> toMap() => {
        'email': email,
        'firstName': firstName,
        'lastName': lastName,
        'phoneNumber': phoneNumber,
        'address': address,
      };

      String encode() => json.encode(toMap());
}
