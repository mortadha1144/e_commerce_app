import 'package:e_commerce_app/Features/auth/data/models/sign_up_model.dart';
import 'package:e_commerce_app/Features/auth/providers/create_user_provider.dart';
import 'package:e_commerce_app/Features/auth/views/widgets/custom_social_card.dart';
import 'package:e_commerce_app/Features/auth/views/widgets/custom_suffix_icon.dart';
import 'package:e_commerce_app/Features/auth/views/widgets/password_with_confirm_form_fields.dart';
import 'package:e_commerce_app/core/utils/constants/assets.dart';
import 'package:e_commerce_app/core/utils/constants/sizes.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/core/utils/network/state.dart';
import 'package:e_commerce_app/core/utils/snackbar.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_text_form_field.dart';
import 'package:e_commerce_app/core/utils/widgets/email_form_field.dart';
import 'package:e_commerce_app/core/utils/widgets/form_body.dart';
import 'package:e_commerce_app/validator/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignUpPage extends HookConsumerWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formOneKey = useMemoized(GlobalKey<FormState>.new, const []);
    final formTwoKey = useMemoized(GlobalKey<FormState>.new, const []);
    final pageController = usePageController();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();
    final displayNameController = useTextEditingController();
    final phoneNumberController = useTextEditingController();
    final addressController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.signUp),
      ),
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          FormBody(
            mainAxisAlignment: MainAxisAlignment.start,
            formKey: formOneKey,
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
                  if (!formOneKey.currentState!.validate()) return;
                  // scroll to next page
                  pageController.nextPage(
                    duration: Time.small,
                    curve: Curves.easeIn,
                  );

                  // final request = CreateUserRequest(
                  //   email: emailController.text,
                  //   password: passwordController.text,
                  // );

                  // final createUser = await ref
                  //     .read(createUserProvider.notifier)
                  //     .run(request: request);

                  // createUser.whenDataOrError(
                  //   data: (_) => context
                  //       .pushReplacement(RoutesDocument.completeProfileView),
                  //   error: (error, _) => context
                  //       .showErrorSnackBar(context.getErrorMessage(error)),
                  // );
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
          FormBody(
            formKey: formTwoKey,
            children: [
              Gap(10),
              Text(
                context.l10n.completeProfile,
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
              CustomTextFormField(
                controller: displayNameController,
                keyboardType: TextInputType.name,
                labelText: context.l10n.displayName,
                hintText: context.l10n.displayNameHint,
                suffixIcon:
                    const CustomSuffixIcon(svgIcon: Assets.assetsIconsUser),
                validator: context.validator().required().build(),
              ),
              const Gap(30),
              CustomTextFormField(
                controller: phoneNumberController,
                keyboardType: TextInputType.phone,
                labelText: context.l10n.phoneNumber,
                hintText: context.l10n.phoneNumberHint,
                suffixIcon:
                    const CustomSuffixIcon(svgIcon: Assets.assetsIconsPhone),
                validator: context.validator().phone().required().build(),
              ),
              const Gap(30),
              // address
              CustomTextFormField(
                controller: addressController,
                labelText: context.l10n.address,
                hintText: context.l10n.addressHint,
                suffixIcon: const CustomSuffixIcon(
                    svgIcon: Assets.assetsIconsLocationPoint),
                validator: context.validator().minLength(5).build(),
              ),
              const Gap(40),
              Row(
                textDirection: Directionality.of(context),
                children: [
                  Expanded(
                    flex: 2,
                    child: CustomButton(
                      text: context.l10n.back,
                      isOutline: true,
                      backgroundColor: Colors.white,
                      onPressed: () => pageController.previousPage(
                        duration: Time.small,
                        curve: Curves.easeIn,
                      ),
                    ),
                  ),
                  const Gap(10),
                  Expanded(
                    flex: 3,
                    child: CustomButton(
                      text: context.l10n.continueText,
                      isLoading: ref.watch(createUserProvider).isLoading,
                      onPressed: () async {
                        if (!formTwoKey.currentState!.validate()) return;

                        final body = SignUpModel(
                          email: emailController.text,
                          password: passwordController.text,
                          displayName: displayNameController.text,
                          phoneNumber: phoneNumberController.text,
                          address: addressController.text,
                        );

                        final createUser =
                            await ref.read(createUserProvider.notifier).run(
                                  body: body,
                                );

                        createUser.whenDataOrError(
                          data: (_) {
                            context.showSuccessSnackBar(
                                context.l10n.accountCreatedSuccessfully);
                            context.pop();
                          },
                          error: (error, _) => context.showErrorSnackBar(
                              context.getErrorMessage(error)),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
