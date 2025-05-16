import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class Failure {
  Failure(this.errMessage);
  final String errMessage;
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromFirebaseAuthException(
      FirebaseAuthException firebaseAuthException) {
    switch (firebaseAuthException.code) {
      case 'email-already-in-use':
        return ServerFailure('The account already exists for that email.');
      case 'invalid-email':
        return ServerFailure('The email provided is invalid.');
      case 'operation-not-allowed':
        return ServerFailure('This account isn\'t enabled.');
      case 'weak-password':
        return ServerFailure('The password provided is too weak.');
      case 'user-disabled':
        return ServerFailure('this user has been disabled.');
      case 'user-not-found':
        return ServerFailure('No user found for that email.');
      case 'wrong-password':
        return ServerFailure('Wrong password provided for that user.');
      case 'auth/invalid-email':
        return ServerFailure('The email provided is invalid.');
      case 'auth/user-not-found':
        return ServerFailure('No user found for that email.');

      default:
        return ServerFailure('Oops There was an error ,Please try later!');
    }
  }

  factory ServerFailure.fromDioExertion(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection');
      case DioExceptionType.unknown:
        return ServerFailure('Unknown Error, Please try again!');
    }
  }

  factory ServerFailure.fromBadResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internet Server error, Please try later!');
    }
    return ServerFailure('Oops There was an error ,Please try later!');
  }
}

// extension GetError on Object {
//   String get getErrorMessage {
//     String errMessage = '';
//     if (this is FirebaseAuthException) {
//       errMessage =
//           ServerFailure.fromFirebaseAuthException(this as FirebaseAuthException)
//               .errMessage;

//     } else {
//       errMessage = ServerFailure(toString()).errMessage;
//     }
//     return errMessage;
//   }
// }
