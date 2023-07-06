import 'package:e_commerce_app/Features/auth/data/models/user_model.dart';
import 'package:e_commerce_app/Features/auth/data/repos/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.authRepo) : super(AuthInitial());

  final AuthRepo authRepo;

  Future<void> registerUser(UserModel userModel) async {
    emit(RegisterLoading());
    var result = await authRepo.createUserWithEmailAndPassword(userModel);

    result.fold(
      (failure) => emit(RegisterFailure(message: failure.errMessagel)),
      (success) => emit(RegisterSuccess()),
    );
  }
}
