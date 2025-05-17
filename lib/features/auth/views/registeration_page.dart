import 'package:e_commerce_app/core/data/api/authentication/register_request_body.dart';
import 'package:e_commerce_app/core/data/api/authentication/otp_response.dart';
import 'package:e_commerce_app/core/data/api/error/api_error_message.dart';
import 'package:e_commerce_app/core/developer/developer_provider.dart';
import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:e_commerce_app/core/utils/extensions/string_extensions.dart';
import 'package:e_commerce_app/core/utils/snackbar.dart';
import 'package:e_commerce_app/core/utils/widgets/email_form_field.dart';
import 'package:e_commerce_app/core/utils/widgets/fields/phone_number_field.dart';
import 'package:e_commerce_app/features/auth/providers/create_user_provider.dart';
import 'package:e_commerce_app/features/auth/views/authentication_provider.dart';
import 'package:e_commerce_app/features/auth/views/widgets/custom_social_card.dart';
import 'package:e_commerce_app/features/auth/views/widgets/custom_suffix_icon.dart';
import 'package:e_commerce_app/features/auth/views/widgets/password_with_confirm_form_fields.dart';
import 'package:e_commerce_app/core/utils/constants/assets.dart';
import 'package:e_commerce_app/core/utils/constants/sizes.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/core/utils/hook/form_key.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_text_form_field.dart';
import 'package:e_commerce_app/core/utils/widgets/form_body.dart';
import 'package:e_commerce_app/validator/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_hook_mutation/riverpod_hook_mutation.dart';

class RegistrationPage extends HookConsumerWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mutation = useMutation<OtpResponse>();
    final formOneKey = useFormKey();
    final formTwoKey = useFormKey();
    final pageController = usePageController();
    final phoneNumberController = useTextEditingController();
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();
    final fullNameController = useTextEditingController();
    final emailController = useTextEditingController();
    final addressController = useTextEditingController();

    useDeveloperTool(
      ref: ref,
      onLongPressed: () {
        phoneNumberController.text = '07700146084';
        passwordController.text = '12345678';
        confirmPasswordController.text = '12345678';
        fullNameController.text = 'Ahmed Mohamed';
        emailController.text = 'ahmed@gmail.com';
        addressController.text = '123 Main St, Anytown, USA';
      },
    );

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
              PhoneNumberField(phoneNumberController),
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
              const Gap(10),
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
                controller: fullNameController,
                keyboardType: TextInputType.name,
                labelText: context.l10n.fullNameLabel,
                hintText: context.l10n.fullNameHint,
                optional: false,
                suffixIcon:
                    const CustomSuffixIcon(svgIcon: Assets.assetsIconsUser),
                validator: context.validator().required().build(),
              ),
              const Gap(30),
              EmailFormField(
                emailController: emailController,
              ),
              const Gap(30),
              // address
              CustomTextFormField(
                controller: addressController,
                labelText: context.l10n.address,
                hintText: context.l10n.addressHint,
                suffixIcon: const CustomSuffixIcon(
                  svgIcon: Assets.assetsIconsLocationPoint,
                ),
                validator: context
                    .validator(optional: true)
                    .minLength(5)
                    .maxLength(100)
                    .build(),
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
                      isLoading: mutation.isLoading,
                      onPressed: mutation.isLoading
                          ? null
                          : () async {
                              if (!formTwoKey.currentState!.validate()) return;

                              final request = RegisterRequestBody(
                                phoneNumber: phoneNumberController.text,
                                password: passwordController.text,
                                fullName: fullNameController.text,
                                email: emailController.text.toNullableString,
                                address:
                                    addressController.text.toNullableString,
                              );

                              final notifier =
                                  ref.read(authenticationProvider.notifier);

                              mutation.mutate(
                                () => notifier.register(request: request),
                                context: context,
                                data: (data) {
                                  // otp verification code is sent to the user phone number in production
                                  // we show the code to the user in development
                                  context.showSuccessSnackBar(data.code);
                                  context.pushReplacement(
                                    RoutesDocument.otpView,
                                    extra: phoneNumberController.text,
                                  );
                                },
                                error: (error, _) {
                                  showApiErrorMessage(
                                    context: context,
                                    error: error,
                                  );
                                },
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
