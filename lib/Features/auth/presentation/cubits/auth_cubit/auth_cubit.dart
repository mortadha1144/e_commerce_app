import 'package:e_commerce_app/Features/auth/data/repos/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.authRepo) : super(AuthInitial());

  final AuthRepo authRepo;

  Future<void> registerUser({required String email,required String password}) async {
    emit(RegisterLoading());
    var result = await authRepo.createUserWithEmailAndPassword(email: email, password: password);

    result.fold(
      (failure) => emit(RegisterFailure(message: failure.errMessagel)),
      (success) => emit(RegisterSuccess()),
    );
  }

  Future<void> completeProfileData(Map<String, dynamic> user) async {
    emit(CompleteProfileLoading());
    var result = await authRepo.completeProfileData(user);
    result.fold(
      (failure) => emit(CompleteProfileFailure(message: failure.errMessagel)),
      (success) => emit(CompleteProfileSuccess()),
      );
  }
}