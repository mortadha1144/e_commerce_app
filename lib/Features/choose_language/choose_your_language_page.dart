
import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:e_commerce_app/core/utils/constants/sizes.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/core/utils/providers/settings_provider.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:e_commerce_app/core/utils/widgets/flex_padded.dart';
import 'package:e_commerce_app/gen/assets.gen.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChooseYourLanguagePage extends StatefulHookConsumerWidget {
  const ChooseYourLanguagePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ChooseYourLanguagePageState();
}

class _ChooseYourLanguagePageState
    extends ConsumerState<ChooseYourLanguagePage> {
  late bool isSignedIn;

  @override
  void initState() {
    super.initState();

    // WidgetsBinding.instance.scheduleFrameCallback((_) async {
    //   final settings = ref.watch(settingsProvider);
    //   final authentication = ref.watch(authenticationProvider.notifier);
    //   log(' ccccccccccc ${settings.user}${settings.locale}');
    //   isSignedIn = authentication.isSignedIn();
    //   final languageCode = settings.locale;
    //   if (languageCode != null) {
    //     isSignedIn
    //         ? (settings.user?.role?.type == 4 || settings.user?.role?.type == 5)
    //             ? context.go(
    //                 RoutesDocument.pharmacyLineHome,
    //               )
    //             : (settings.user?.role?.type == 6)
    //                 ? context.go(
    //                     RoutesDocument.representativeHome,
    //                   )
    //                 : context.go(
    //                     RoutesDocument.pharmacyHome,
    //                   )
    //         : context.go(RoutesDocument.login);
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final settings = ref.watch(settingsProvider);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(Insets.medium),
            child: ColumnPadded(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              gap: Insets.large,
              children: [
                Center(
                    child: Image.asset(
                  Assets.images.splash1.path,
                  height: 200,
                  width: 200,
                )),
                const Gap(Insets.large),
                Text(
                  context.l10n.chooseYourLanguage,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xff404040),
                  ),
                ),
                LanguageButton(
                  language: LanguageModel(
                    name: "English",
                    path: Assets.images.english.path,
                  ),
                  onTap: () {
                    ref.read(settingsProvider.notifier).setLocale(
                          const Locale("en"),
                        );
                  },
                  tileColor: settings.locale == const Locale("en")
                      ? context.colorScheme.n7.withOpacity(.2)
                      : null,
                ),
                LanguageButton(
                  language: LanguageModel(
                    name: "العربية",
                    path: Assets.images.arabic.path,
                  ),
                  onTap: () {
                    ref.read(settingsProvider.notifier).setLocale(
                          const Locale("ar"),
                        );
                  },
                  tileColor: settings.locale == const Locale("ar")
                      ? context.colorScheme.n7.withOpacity(.2)
                      : null,
                ),
                if (settings.locale != null)
                  CustomButton(
                    onPressed: () {
                      // isSignedIn
                      // ? context.go(RoutesDocument.representativeHome)
                      // : context.go(RoutesDocument.login);
                      context.go(RoutesDocument.login);
                    },
                    text: context.l10n.next,
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    super.key,
    required this.language,
    this.onTap,
    this.tileColor,
  });

  final LanguageModel language;
  final VoidCallback? onTap;
  final Color? tileColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        language.path,
        height: 30,
        width: 30,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(BorderSize.extraSmall),
        side: BorderSide(
          color: context.colorScheme.n5,
        ),
      ),
      title: Text(
        language.name,
        style: TextStyle(
          fontSize: 16,
          color: context.colorScheme.n5,
        ),
      ),
      onTap: onTap,
      tileColor: tileColor,
    );
  }
}

class LanguageModel {
  final String name;
  final String path;

  const LanguageModel({
    required this.name,
    required this.path,
  });
}
