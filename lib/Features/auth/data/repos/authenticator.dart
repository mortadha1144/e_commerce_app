import 'package:e_commerce_app/Features/auth/data/constants/constants.dart';
import 'package:e_commerce_app/Features/auth/data/models/auth_state.dart';
import 'package:e_commerce_app/Features/auth/data/models/create_user_request.dart';
import 'package:e_commerce_app/Features/auth/data/models/user_model.dart';
import 'package:e_commerce_app/core/utils/enums/enums.dart';
import 'package:e_commerce_app/core/utils/services/user_info_storage.dart';
import 'package:e_commerce_app/core/utils/typedefs.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class AuthRepo {
  UserId? get userId => FirebaseAuth.instance.currentUser?.uid;
  bool get isAlreadyLoggedIn => userId != null;
  String get displayName =>
      FirebaseAuth.instance.currentUser?.displayName ?? '';
  String? get email => FirebaseAuth.instance.currentUser?.email;
  Future<AuthResult> loginWithFacebook();
  Future<UserModel> loginWithGoogle();
  Future<UserModel> loginWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<void> createUserWithEmailAndPassword({
    required CreateUserRequest request,
  });
  Future<UserModel> updateUserInfo({
    required UserModel user,
  });
  Future<void> logOut();
}

class AuthRepoImpl extends AuthRepo {
  final UserRepo userRepo;

  AuthRepoImpl({required this.userRepo});

  @override
  Future<void> logOut() async {
    await FirebaseAuth.instance.signOut();
    await GoogleSignIn().signOut();
    await FacebookAuth.instance.logOut();
  }

  @override
  Future<void> createUserWithEmailAndPassword({
    required CreateUserRequest request,
  }) async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: request.email,
      password: request.password,
    );

    final user = UserModel(
      userId: userId,
      email: request.email,
    );

    await userRepo.addNewUser(user: user);
  }

  @override
  Future<AuthResult> loginWithFacebook() async {
    final loginResult = await FacebookAuth.instance.login();
    final token = loginResult.accessToken?.token;
    if (token == null) {
      // user has aborted the login in process
      return AuthResult.aborted;
    }

    final oauthCredentials = FacebookAuthProvider.credential(token);

    try {
      await FirebaseAuth.instance.signInWithCredential(oauthCredentials);
      return AuthResult.success;
    } on FirebaseAuthException catch (e) {
      final email = e.email;
      final credential = e.credential;
      if (e.code == Constants.accountExistsWithDifferentCredential &&
          email != null &&
          credential != null) {
        final providers =
            await FirebaseAuth.instance.fetchSignInMethodsForEmail(email);
        if (providers.contains(Constants.googleCome)) {
          await loginWithGoogle();
          FirebaseAuth.instance.currentUser?.linkWithCredential(credential);
        }
        return AuthResult.success;
      }
      return AuthResult.failure;
    }
  }

  @override
  Future<UserModel> loginWithGoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn(
      scopes: [
        Constants.emailScope,
      ],
    );

    final signInAccount = await googleSignIn.signIn();
    // if (signInAccount == null) {
    //   // user has aborted the login in process
    //   return null;
    // }
    final googleAuth = await signInAccount!.authentication;
    final oauthCredentials = GoogleAuthProvider.credential(
      idToken: googleAuth.idToken,
      accessToken: googleAuth.accessToken,
    );

    await FirebaseAuth.instance.signInWithCredential(oauthCredentials);

    final user = userRepo.saveUserInfo(
      userId: userId!,
      displayName: displayName,
      email: email,
    );

    return user;
  }

  @override
  Future<UserModel> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    final user = userRepo.getUser(userId: userId!);
    return user;
  }

  @override
  Future<UserModel> updateUserInfo({
    required UserModel user,
  }) {
    return userRepo.updateUserInfo(
      userId: userId!,
      user: user,
    );
  }
}
