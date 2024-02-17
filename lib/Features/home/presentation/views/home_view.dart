import 'package:e_commerce_app/Features/home/providers/home_provider.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_loading_indicator.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/utils/widgets/custom_error_widget.dart';
import 'widgets/categories.dart';
import 'widgets/discount_banner.dart';
import 'widgets/home_header.dart';
import 'widgets/popular_prducts.dart';
import 'widgets/special_offers.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeState = ref.watch(homeProvider);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(homeProvider.future),
        child: SafeArea(
          child: homeState.when(
            data: (homeData) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    const Gap(10),
                    const HomeHeader(),
                    const Gap(10),
                    const DiscountBanner(),
                    Categories(categories: homeData.categories),
                    SpecialOffers(specialOffers: homeData.specialOffers),
                    const Gap(10),
                    PopularProducts(products: homeData.popularProducts),
                    const Gap(30),
                  ],
                ),
              );
            },
            loading: () => SizedBox(
              height: SizeConfig.screenHeight,
              child: const CustomLoadingIndicator(),
            ),
            error: (error, stackTrace) => CustomErrorWidget(
              errorMessage: error.toString(),
              onRetry: () => ref.refresh(homeProvider.future),
            ),
          ),
        ),
      ),
    );
  }
}
