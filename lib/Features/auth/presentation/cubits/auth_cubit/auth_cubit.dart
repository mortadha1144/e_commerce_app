import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/auth_repo.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo _authRepo;

  User? _user;

  AuthCubit(this._authRepo) : super(AuthInitial()) {
    _authRepo.authStateChanges.listen((user) {
      if (user != null) {
        _user = user;
        //emit(AuthAuthenticated(user));
      } else {
        //emit(AuthUnauthenticated());
      }
    });
  }

  Future<void> registerUser(
      {required String email, required String password}) async {
    emit(RegisterLoading());
    var result = await _authRepo.createUserWithEmailAndPassword(
        email: email, password: password);

    result.fold(
      (failure) => emit(RegisterFailure(message: failure.errMessage)),
      (success) => emit(RegisterSuccess()),
    );
  }

  Future<void> completeProfileData(Map<String, dynamic> user) async {
    emit(CompleteProfileLoading());
    var result = await _authRepo.completeProfileData(user);
    result.fold(
      (failure) => emit(CompleteProfileFailure(message: failure.errMessage)),
      (success) => emit(CompleteProfileSuccess()),
    );
  }

  Future<void> signInUser(
      {required String email, required String password}) async {
    emit(SignInLoading());
    var result = await _authRepo.signInWithEmailAndPassword(
        email: email, password: password);
    result.fold(
      (failure) => emit(SignInFailure(message: failure.errMessage)),
      (succsess) => emit(SignInSuccess()),
    );
  }

  Future<void> resetPassword({required String email}) async {
    emit(ResetPasswordLoading());
    var result = await _authRepo.resetPassword(email: email);
    result.fold(
      (failure) => emit(ResetPasswordFailure(message: failure.errMessage)),
      (success) => emit(
        ResetPasswordSuccess(),
      ),
    );
  }

  Future<void> signInWithGoogle() async {
    emit(SignInWithGoogleLoading());
    var result = await _authRepo.signInWithGoogle();
    result.fold(
      (failure) => emit(SignInWithGoogleFailure(message: failure.errMessage)),
      (success) => emit(
        SignInWithGoogleSuccess(),
      ),
    );
  }

  Future<void> signOut() async {
    emit(AuthLoading());
    var result = await _authRepo.signOut();
    result.fold(
      (failure) => emit(AuthFailure(failure.errMessage)),
      (_) => null,
    );
  }
}
