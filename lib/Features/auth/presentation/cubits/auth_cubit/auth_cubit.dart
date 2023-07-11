import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/auth_repo.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {

  final AuthRepo _authRepo;

  AuthCubit(this._authRepo) : super(AuthInitial()) {
    _authRepo.authStateChanges.listen((user) {
      if (user != null) {
        emit(AuthAuthenticated(user));
      } else {
        emit(AuthUnauthenticated());
      }
    });
  }


  Future<void> registerUser(
      {required String email, required String password}) async {
    emit(AuthLoading());
    var result = await _authRepo.createUserWithEmailAndPassword(
        email: email, password: password);

    result.fold(
      (failure) => emit(AuthFailure(failure.errMessagel)),
      (_) =>null,
    );
  }

  Future<void> completeProfileData(Map<String, dynamic> user) async {
    emit(CompleteProfileLoading());
    var result = await _authRepo.completeProfileData(user);
    result.fold(
      (failure) => emit(CompleteProfileFailure(message: failure.errMessagel)),
      (success) => emit(CompleteProfileSuccess()),
    );
  }

  Future<void> signInUser(
      {required String email, required String password}) async {
    emit(AuthLoading());
    var result = await _authRepo.signInWithEmailAndPassword(
        email: email, password: password);
    result.fold(
      (failure) => emit(AuthFailure( failure.errMessagel)),
      (_) => null,
    );
  }

  Future<void> resetPassword({required String email}) async {
    emit(ResetPasswordLoading());
    var result = await _authRepo.resetPassword(email: email);
    result.fold(
      (failure) => emit(ResetPasswordFailure(message: failure.errMessagel)),
      (success) => emit(
        ResetPasswordSuccess(),
      ),
    );
  }

  Future<void> signInWithGoogle() async {
    emit(SignInWithGoogleLoading());
    var result = await _authRepo.signInWithGoogle();
    result.fold(
      (failure) => emit(SignInWithGoogleFailure(message: failure.errMessagel)),
      (success) => emit(
        SignInWithGoogleSuccess(),
      ),
    );
  }
}
