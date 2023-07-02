import 'package:e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'custom_text_form_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
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
              const LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            label: 'Email',
            hintText: 'Enter your email',
            suffixIcon: 'assets/icons/Mail.svg',
            validator: (value) {
              if (value!.isEmpty) {
                setState(() {
                  errors.add('Please enter your email');
                });
              }
              return null;
            },
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          const CustomTextFormField(
            label: 'Password',
            hintText: 'Enter your password',
            suffixIcon: 'assets/icons/Lock.svg',
            isPassword: true,
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
         const CustomFormError(),
          CustomButton(
            text: 'Continue',
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

class CustomFormError extends StatelessWidget {
  const CustomFormError({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/icons/Error.svg',
          height: getProportionateScreenHeight(14),
          width: getProportionateScreenWidth(14),
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        const Text('errors[0]'),
      ],
    );
  }
}
