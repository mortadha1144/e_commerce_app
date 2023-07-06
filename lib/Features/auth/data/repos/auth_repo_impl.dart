import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/Features/auth/data/models/user_model.dart';
import 'package:e_commerce_app/Features/auth/data/repos/auth_repo.dart';
import 'package:e_commerce_app/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/errors/failures.dart';

class AuthRepoImp implements AuthRepo {
  @override
  Future<Either<Failure, void>> createUserWithEmailAndPassword(
      {required String email,required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email:email,
        password: password,
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
  Future<Either<Failure, void>> completeProfileData(
      Map<String, dynamic> user) async {
    CollectionReference users =
        FirebaseFirestore.instance.collection(kUsersCollection);
    try {
      await users.add(user).then((DocumentReference doc) =>
          print('DocumentSnapshot added with ID: ${doc.id}'));
      return right(null);
    } catch (e) {
      return left(FirebaseFailure(e.toString()));
    }
  }
}
