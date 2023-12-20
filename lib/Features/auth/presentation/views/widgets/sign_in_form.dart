import 'dart:developer';

import 'package:e_commerce_app/Features/auth/presentation/cubits/auth_cubit/auth_cubit.dart';
import 'package:e_commerce_app/Features/auth/providers/auth_provider_test.dart';
import 'package:e_commerce_app/Features/auth/providers/auth_state_provider.dart';
import 'package:e_commerce_app/Features/auth/providers/is_logged_in_provider.dart';
import 'package:e_commerce_app/Features/auth/providers/login_with_email_and_password.dart';
import 'package:e_commerce_app/core/errors/failures.dart';
import 'package:e_commerce_app/core/utils/enums/enums.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/core/utils/functions/custom_snack_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_state/riverpod_state.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import 'custom_form_error.dart';
import 'custom_suffix_icon.dart';
import '../../../../../size_config.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool remember = false;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    // return BlocConsumer<AuthCubit, AuthState>(
    //   listener: (context, state) {
    //     if (state is SignInFailure) {
    //       errors.clear();
    //       addError(error: state.message);
    //     } else if (state is SignInSuccess) {
    //       errors.clear();
    //       context.push(AppRouter.kLoginSuccessView);
    //     }
    //   },
    //   builder: (context, state) {

    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          Row(
            children: [
              Checkbox(
                activeColor: kPrimaryColor,
                value: remember,
                onChanged: (value) {
                  setState(() {
                    remember = value!;
                  });
                },
              ),
              const Text('Remember me'),
              const Spacer(),
              GestureDetector(
                onTap: () =>
                    GoRouter.of(context).push(AppRouter.kForgotPasswordView),
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          CustomFormError(
            errors: errors,
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Consumer(
            builder: (context, ref, child) {
              // ref.listen(authStateProvider2, (previous, next) {
              //   if (next.hasError) {
              //     // addError(error: errors.toString());
              //   }
              // });
              final isLogged = ref.watch(isLoggedInT);
              final authState =
                  ref.watch(loginWithEmailAndPasswordNotifierProvider);

              return CustomButton(
                text: 'Continue',
                isLoading: authState.isLoading,
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // if all are valid then go to success view
                    // BlocProvider.of<AuthCubit>(context)
                    //     .signInUser(email: email!, password: password!);
                    // context
                    //     .read<AuthCubit>()
                    //     .signInUser(email: email!, password: password!);

                    final login = await ref
                        .read(
                            loginWithEmailAndPasswordNotifierProvider.notifier)
                        .loginWithEmailAndPassword(
                          email: email!,
                          password: password!,
                        );
                    print(isLogged);
                    login.whenDataOrError(
                      data: (data) {},
                      error: (error, stackTrace) {
                        errors.clear();
                        addError(error: context.getErrorMessage(error));
                      },
                    );
                  }
                },
              );
            },
          )
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
          if (value.length >= 8) {
            removeError(error: kShortPassError);
          }
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return '';
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return '';
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        hintText: 'Enter your password',
        labelText: 'Password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: 'assets/icons/Lock.svg'),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return '';
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return '';
        }
        return null;
      },
      decoration: const InputDecoration(
        hintText: 'Enter your email',
        labelText: 'Email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: 'assets/icons/Mail.svg'),
      ),
    );
  }

  void removeError({required String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  void addError({required String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }
}
