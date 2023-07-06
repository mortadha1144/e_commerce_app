import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/Features/auth/data/models/user_model.dart';
import 'package:e_commerce_app/core/errors/failures.dart';

abstract class AuthRepo {
  Future<Either<Failure,void>> createUserWithEmailAndPassword(UserModel user);
  Future<Either<Failure,void>> completeteProfileData(String email);
}