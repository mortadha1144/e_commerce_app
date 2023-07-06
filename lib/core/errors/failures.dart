import 'package:firebase_auth/firebase_auth.dart';

abstract class Failure {
  final String errMessagel;

  Failure(this.errMessagel);
}

class FirebaseFailure extends Failure {
  FirebaseFailure(super.errMessagel);

 factory FirebaseFailure.fromFirebaseAuthException(
      FirebaseAuthException firebaseAuthException) {
    switch (firebaseAuthException.code) {
      case 'email-already-in-use':
        return FirebaseFailure('The account already exists for that email.');
      case 'invalid-email':
        return FirebaseFailure('The email provided is invalid.');
      case 'operation-not-allowed':
        return FirebaseFailure('This account isn\'t enabled.');
      case 'weak-password':
        return FirebaseFailure('The password provided is too weak.');
      default:
        
      return FirebaseFailure('Opps There was an error ,Please try later!');
    }
  }
}
