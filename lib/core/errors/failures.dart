abstract class Failure {
  final String errMessagel;

  Failure(this.errMessagel);
}

class FirebaseFailure extends Failure {
  FirebaseFailure(super.errMessagel);

  //FirebaseFailure.fromFirebaseAuthException();
}
