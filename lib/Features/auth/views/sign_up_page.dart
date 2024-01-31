import 'package:e_commerce_app/Features/auth/data/models/create_user_request.dart';
import 'package:e_commerce_app/Features/auth/providers/create_user_provider.dart';
import 'package:e_commerce_app/Features/auth/views/password_form_field.dart';
import 'package:e_commerce_app/Features/auth/views/widgets/custom_social_card.dart';
import 'package:e_commerce_app/Features/auth/views/widgets/password_with_confirm_form_fields.dart';
import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:e_commerce_app/core/utils/constants/assets.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/core/utils/network/state.dart';
import 'package:e_commerce_app/core/utils/snackbar.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:e_commerce_app/core/utils/widgets/email_form_field.dart';
import 'package:e_commerce_app/core/utils/widgets/form_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignUpPage extends HookConsumerWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(GlobalKey<FormState>.new, const []);
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.signUp),
      ),
      body: FormBody(
        mainAxisAlignment: MainAxisAlignment.start,
        alignment: Alignment.topCenter,
        formKey: formKey,
        children: [
          const Gap(10),
          Text(
            context.l10n.registerAccount,
            textAlign: TextAlign.center,
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            context.l10n.completeYourDetails,
            textAlign: TextAlign.center,
          ),
          const Gap(50),
          EmailFormField(emailController: emailController),
          const Gap(30),
          PasswordWithConfirmFormFields(
            passwordController: passwordController,
            confirmPasswordController: confirmPasswordController,
          ),
          const Gap(40),
          CustomButton(
            text: context.l10n.continueText,
            isLoading: ref.watch(createUserProvider).isLoading,
            onPressed: () async {
              if (!formKey.currentState!.validate()) return;
              final request = CreateUserRequest(
                email: emailController.text,
                password: passwordController.text,
              );

              final createUser = await ref
                  .read(createUserProvider.notifier)
                  .run(request: request);

              createUser.whenDataOrError(
                data: (_) =>
                    context.pushReplacement(RoutesDocument.completeProfileView),
                error: (error, _) =>
                    context.showErrorSnackBar(context.getErrorMessage(error)),
              );
            },
          ),
          const Gap(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomSocialCard(
                icon: Assets.assetsIconsGoogleIcon,
                onPressed: () {},
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
          const Gap(20),
          Text(
            context.l10n.byContinuingYourConfirm,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
