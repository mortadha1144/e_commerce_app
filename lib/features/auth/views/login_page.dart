import 'package:e_commerce_app/core/data/api/authentication/authentication_response.dart';
import 'package:e_commerce_app/core/data/api/error/api_error_message.dart';
import 'package:e_commerce_app/core/data/providers/settings_provider.dart';
import 'package:e_commerce_app/core/developer/developer_provider.dart';
import 'package:e_commerce_app/core/utils/constants/constants.dart';
import 'package:e_commerce_app/core/utils/theme/insets.dart';
import 'package:e_commerce_app/core/utils/theme/radiuses.dart';
import 'package:e_commerce_app/core/utils/widgets/fields/phone_number_field.dart';
import 'package:e_commerce_app/features/auth/views/authentication_provider.dart';
import 'package:e_commerce_app/features/auth/views/widgets/password_form_field.dart';
import 'package:e_commerce_app/features/auth/views/widgets/custom_social_card.dart';
import 'package:e_commerce_app/features/auth/views/widgets/no_account_text.dart';
import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:e_commerce_app/core/utils/constants/assets.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/core/utils/hook/form_key.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:e_commerce_app/core/utils/widgets/form_body.dart';
import 'package:e_commerce_app/l10n/app_localizations.dart';
import 'package:e_commerce_app/validator/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_hook_mutation/riverpod_hook_mutation.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useFormKey();

    final phoneNumber = useTextEditingController();
    final password = useTextEditingController();

    final remember = useState(false);

    final mutation = useMutation<AuthenticationResponse>();

    useDeveloperTool(
      ref: ref,
      onLongPressed: () {
        phoneNumber.text = '07700146084';
        password.text = '12345678';
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.login),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                showDragHandle: true,
                builder: (context) => const LanguageSwitchBottomSheet(),
              );
            },
            icon: const Icon(Icons.translate),
          ),
        ],
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
            context.l10n.signInWithPhoneNumberAndPassword,
            textAlign: TextAlign.center,
          ),
          const SizedBox.square(
            dimension: 70,
          ),
          PhoneNumberField(phoneNumber),
          const SizedBox.square(
            dimension: 36,
          ),
          PasswordFormField(
            controller: password,
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
            isLoading: mutation.isLoading,
            onPressed: () async {
              if (!formKey.currentState!.validate()) return;

              final notifier = ref.read(authenticationProvider.notifier);

              await mutation.mutate(
                () => notifier.login(
                  phoneNumber: phoneNumber.text,
                  password: password.text,
                ),
                context: context,
                data: (data) => context.replace(RoutesDocument.homeView),
                // TODO: handle user not verified error
                error: (error, _) => showApiErrorMessage(
                  context: context,
                  error: error,
                ),
              );
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
                  // final login =
                  //     await ref.read(loginWithGoogleProvider.notifier).login();
                  // login.whenDataOrError(
                  //   data: (_) => context.push(RoutesDocument.loginSuccessView),
                  //   error: (error, _) => context.showErrorSnackBar(
                  //     context.getErrorMessage(error),
                  //   ),
                  // );
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
          Align(
            child: const NoAccountText(),
          )
        ],
      ),
    );
  }
}

class LanguageSwitchBottomSheet extends HookConsumerWidget {
  const LanguageSwitchBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final l10n = AppLocalizations.of(context);
    final provider = settingsProvider;
    final state = ref.watch(provider);
    final notifier = ref.read(provider.notifier);

    final selectedLocale = useState(state.locale);

    final languages = [
      (
        locale: null,
        name: l10n.deviceLanguage,
      ),
      (
        locale: const Locale('ar'),
        name: 'العربية',
      ),
      (
        locale: const Locale('en'),
        name: 'English',
      ),
    ];

    return Padding(
      padding: const EdgeInsets.all(Insets.medium),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: Insets.large,
        children: [
          Text(
            l10n.chooseLanguage,
            style: textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Column(
            children: [
              ...languages.map(
                (language) => ListTile(
                  title: Text(
                    language.name,
                    style: textTheme.titleMedium?.copyWith(
                      color: selectedLocale.value == language.locale
                          ? theme.colorScheme.primary
                          : textTheme.titleMedium?.color,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    selectedLocale.value = language.locale;
                  },
                  selected: language.locale == selectedLocale.value,
                  selectedTileColor: kPrimaryColor.withValues(alpha: 0.1),
                  shape: selectedLocale.value == language.locale
                      ? RoundedRectangleBorder(
                          borderRadius: BorderRadiuses.medium,
                          side: BorderSide(
                            color: kPrimaryColor,
                          ),
                        )
                      : null,
                ),
              ),
            ],
          ),
          CustomButton(
            text: l10n.apply,
            onPressed: () async {
              await notifier.setLocale(selectedLocale.value);
              context.pop();
            },
          ),
        ],
      ),
    );
  }
}
