import 'package:e_commerce_app/Features/auth/providers/auth_provider.dart';
import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:e_commerce_app/core/utils/constants/assets.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/core/utils/functions/custom_snack_bar.dart';
import 'package:e_commerce_app/core/utils/network/state.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'custom_social_card.dart';
import 'no_account_text.dart';
import 'sign_in_form.dart';

class SignInViewBody extends ConsumerWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginWithGoogleProvider);
    return ModalProgressHUD(
      inAsyncCall: state.isLoading,
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
                      icon: Assets.assetsIconsGoogleIcon,
                      onPressed: () async {
                        final login = await ref
                            .read(loginWithGoogleProvider.notifier)
                            .run();
                        login.whenDataOrError(
                          data: (_) =>
                              context.push(AppRouter.kLoginSuccessView),
                          error: (error, stackTrace) => customSnackBar(
                            context,
                            context.getErrorMessage(error),
                          ),
                        );
                      },
                    ),
                    CustomSocialCard(
                      icon: Assets.assetsIconsFacebook2,
                      onPressed: () {},
                    ),
                    CustomSocialCard(
                      icon: Assets.assetsIconsTwitter,
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
  }
}
