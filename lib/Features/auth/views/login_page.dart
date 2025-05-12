import 'package:e_commerce_app/core/data/network/async_state.dart';
import 'package:e_commerce_app/core/utils/constants/constants.dart';
import 'package:e_commerce_app/core/utils/widgets/fields/phone_number_field.dart';
import 'package:e_commerce_app/features/auth/data/models/login_request.dart';
import 'package:e_commerce_app/features/auth/data/models/user_model.dart';
import 'package:e_commerce_app/features/auth/providers/auth_provider.dart';
import 'package:e_commerce_app/features/auth/views/widgets/password_form_field.dart';
import 'package:e_commerce_app/features/auth/views/widgets/custom_social_card.dart';
import 'package:e_commerce_app/features/auth/views/widgets/no_account_text.dart';
import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:e_commerce_app/core/utils/constants/assets.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/core/utils/hook/form_key.dart';
import 'package:e_commerce_app/core/data/riverpod/riverpod_extensions.dart';
import 'package:e_commerce_app/core/utils/snackbar.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:e_commerce_app/core/utils/widgets/email_form_field.dart';
import 'package:e_commerce_app/core/utils/widgets/form_body.dart';
import 'package:e_commerce_app/validator/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useFormKey();

    final phoneNumberController = useTextEditingController();
    final passwordController = useTextEditingController();

    final remember = useState(false);

    final loginState = ref.watch(loginWithEmailAndPasswordProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.login),
      ),
      body: FormBody(
        formKey: formKey,
        children: [
          const SizedBox.square(
            dimension: 36,
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
          const SizedBox.square(
            dimension: 70,
          ),
          PhoneNumberField(phoneNumberController),
          const SizedBox.square(
            dimension: 36,
          ),
          PasswordFormField(
            controller: passwordController,
            validation: context.validator().minLength(8).maxLength(100).build(),
          ),
          const SizedBox.square(
            dimension: 10,
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
                  style: const TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          const SizedBox.square(
            dimension: 36,
          ),
          CustomButton(
            text: context.l10n.continueText,
            isLoading: loginState.isLoading,
            onPressed: () async {
              if (!formKey.currentState!.validate()) return;

              final request = LoginRequest(
                phoneNumber: phoneNumberController.text,
                password: passwordController.text,
              );

              final login = await ref
                  .read(loginWithEmailAndPasswordProvider.notifier)
                  .login(
                    request: request,
                  );

              switch (login) {
                case AsyncStateData<UserData>():
                  context.push(RoutesDocument.loginSuccessView);
                  break;
                case AsyncStateError<UserData>(:final error):
                  context.showErrorMessage(error);
                  break;
                case AsyncStateIdle<UserData>():
                  break;
                case AsyncStateLoading<UserData>():
                  break;
              }
            },
          ),
          const SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomSocialCard(
                icon: Assets.assetsIconsGoogleIcon,
                onPressed: () async {
                  final login =
                      await ref.read(loginWithGoogleProvider.notifier).login();
                  login.whenDataOrError(
                    data: (_) => context.push(RoutesDocument.loginSuccessView),
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
          const SizedBox(
            height: 20,
          ),
          const NoAccountText()
        ],
      ),
    );
  }
}
