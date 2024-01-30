import 'package:e_commerce_app/Features/auth/presentation/views/password_form_field.dart';
import 'package:e_commerce_app/Features/auth/presentation/views/widgets/custom_social_card.dart';
import 'package:e_commerce_app/Features/auth/presentation/views/widgets/no_account_text.dart';
import 'package:e_commerce_app/Features/auth/providers/auth_provider.dart';
import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:e_commerce_app/core/utils/constants/assets.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/core/utils/network/state.dart';
import 'package:e_commerce_app/core/utils/snackbar.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:e_commerce_app/core/utils/widgets/email_form_field.dart';
import 'package:e_commerce_app/core/utils/widgets/form_body.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SizeConfig().init(context);
    final formKey = useMemoized(GlobalKey<FormState>.new, const []);

    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    final remember = useState(false);

    final loginState = ref.watch(loginWithEmailAndPasswordProvider);
    final googleLoginState = ref.watch(loginWithGoogleProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.login),
      ),
      body: ModalProgressHUD(
        inAsyncCall: googleLoginState.isLoading,
        progressIndicator: const CircularProgressIndicator(
          color: kPrimaryColor,
        ),
        child: FormBody(
          formKey: formKey,
          children: [
            SizedBox.square(
              dimension: SizeConfig.screenHeight * .04,
            ),
            Text(
              context.l10n.welcomeBack,
              textAlign: TextAlign.center,
              style: context.textTheme.headlineLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              context.l10n.signInWithEmailAndPassword,
              textAlign: TextAlign.center,
            ),
            SizedBox.square(
              dimension: SizeConfig.screenHeight * .08,
            ),
            EmailFormField(emailController: emailController),
            SizedBox.square(
              dimension: SizeConfig.screenHeight * .04,
            ),
            PasswordFormField(controller: passwordController, optional: false),
            SizedBox.square(
              dimension: getProportionateScreenHeight(10),
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: kPrimaryColor,
                  value: remember.value,
                  onChanged: (value) => remember.value = value!,
                ),
                Text(context.l10n.rememberMe),
                const Spacer(),
                GestureDetector(
                  onTap: () => context.push(RoutesDocument.forgotPasswordView),
                  child: Text(
                    context.l10n.forgotPasswordQ,
                    style:
                        const TextStyle(decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
            SizedBox.square(
              dimension: SizeConfig.screenHeight * .04,
            ),
            CustomButton(
              text: context.l10n.continueText,
              isLoading: loginState.isLoading,
              onPressed: () async {
                if (!formKey.currentState!.validate()) return;

                final login = await ref
                    .read(loginWithEmailAndPasswordProvider.notifier)
                    .run(
                      email: emailController.text,
                      password: passwordController.text,
                    );

                login.whenDataOrError(
                  data: (_) => context.push(RoutesDocument.loginSuccessView),
                  error: (error, _) =>
                      context.showErrorSnackBar(context.getErrorMessage(error)),
                );
              },
            ),
            SizedBox(
              height: SizeConfig.screenHeight * .08,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSocialCard(
                  icon: Assets.assetsIconsGoogleIcon,
                  onPressed: () async {
                    final login =
                        await ref.read(loginWithGoogleProvider.notifier).run();
                    login.whenDataOrError(
                      data: (_) =>
                          context.push(RoutesDocument.loginSuccessView),
                      error: (error, _) => context.showErrorSnackBar(
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
    );
  }
}
