import 'package:dio/dio.dart';
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
      case 'user-disabled':
        return FirebaseFailure('this user has been disabled.');
      case 'user-not-found':
        return FirebaseFailure('No user found for that email.');
      case 'wrong-password':
        return FirebaseFailure('Wrong password provided for that user.');
      case 'auth/invalid-email':
        return FirebaseFailure('The email provided is invalid.');
      case 'auth/user-not-found':
        return FirebaseFailure('No user found for that email.');

      default:
        return FirebaseFailure('Opps There was an error ,Please try later!');
    }
  }
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessagel);

  factory ServerFailure.fromDioExeotion(DioException dioException) {
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
        return ServerFailure('Request to ApiServer was canceld');
      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection');
      case DioExceptionType.unknown:
        return ServerFailure('Unkown Error, Please try again!');
      default:
        return ServerFailure('Opps There was an error ,Please try later!');
    }
  }

  factory ServerFailure.fromBadResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your requist not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internet Server error, Please try later!');
    }
    return ServerFailure('Opps There was an error ,Please try later!');
  }
}
