import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/Features/auth/data/models/user_model.dart';
import 'package:e_commerce_app/Features/auth/data/repos/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/errors/failures.dart';

class AuthRepoImp implements AuthRepo {
  @override
  Future<Either<Failure, void>> createUserWithEmailAndPassword(
      UserModel user) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: user.emailAdress,
        password: user.password,
      );
      return right(null);
    } catch (e) {
      if (e is FirebaseAuthException) {
        return Left(FirebaseFailure.fromFirebaseAuthException(e));
      }
      return left(FirebaseFailure(e.toString()));
    }
  }
  
  @override
  Future<Either<Failure, void>> completeteProfileData(String email) {
    // TODO: implement completeteProfileData
    throw UnimplementedError();
  }
}
