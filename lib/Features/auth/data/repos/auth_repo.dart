import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/errors/failures.dart';

abstract class AuthRepo {
  Future<Either<Failure, void>> createUserWithEmailAndPassword(
      {required String email,required String password});
  Future<Either<Failure, void>> completeProfileData(Map<String, dynamic> user);
}
