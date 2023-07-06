import 'package:e_commerce_app/Features/auth/data/models/user_model.dart';

abstract class AuthRepo {
  Future<void> createUserWithEmailAndPassword(UserModel user);
}