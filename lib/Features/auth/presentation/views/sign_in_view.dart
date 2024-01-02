import 'package:e_commerce_app/Features/auth/presentation/cubits/auth_cubit/auth_cubit.dart';
import 'package:e_commerce_app/Features/auth/presentation/views/widgets/sign_in_view_body.dart';
import 'package:e_commerce_app/Features/home/presentation/views/bottom_navigation.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
    //   if (state is AuthAuthenticated) {
    //     return const HomeView();
    //   } else if (state is AuthFailure) {
    //     return Scaffold(
    //       body: Center(
    //         child: Text(state.message),
    //       ),
    //     );
    //   } else if (state is AuthLoading) {
    //     return const Scaffold(
    //       body: Center(
    //         child: CircularProgressIndicator(),
    //       ),
    //     );
    //   }
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: const SignInViewBody(),
    );
  }
}
