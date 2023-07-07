import 'package:e_commerce_app/Features/auth/presentation/cubits/auth_cubit/auth_cubit.dart';
import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:e_commerce_app/core/utils/functions/custom_snack_bar.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'custom_social_card.dart';
import 'no_account_text.dart';
import 'sign_in_form.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignInWithGoogleFailure) {
          customSnackBar(context, state.message);
        } else if (state is SignInWithGoogleSuccess) {
          GoRouter.of(context).push(AppRouter.kLoginSuccessView);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignInWithGoogleLoading,
          progressIndicator: const CircularProgressIndicator(
            color: kPrimaryColor,
          ),
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: SizeConfig.screenHeight * .04,
                    ),
                    Text(
                      'Welcome Back',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: getProportionateScreenWidth(28),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Sign in with your email and password  \nor continue with social media',
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * .08,
                    ),
                    const SignInForm(),
                    SizedBox(
                      height: SizeConfig.screenHeight * .08,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomSocialCard(
                          icon: 'assets/icons/google-icon.svg',
                          onPressed: () {
                            context.read<AuthCubit>().signInWithGoogle();
                          },
                        ),
                        CustomSocialCard(
                          icon: 'assets/icons/facebook-2.svg',
                          onPressed: () {},
                        ),
                        CustomSocialCard(
                          icon: 'assets/icons/twitter.svg',
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    const NoAccountText()
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
