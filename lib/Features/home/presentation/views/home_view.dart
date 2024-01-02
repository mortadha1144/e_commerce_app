import 'package:e_commerce_app/Features/home/presentation/cubits/home_cubit/home_cubit.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_loading_indicator.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/widgets/custom_error_widget.dart';
import 'widgets/categories.dart';
import 'widgets/discount_banner.dart';
import 'widgets/home_header.dart';
import 'widgets/popular_prducts.dart';
import 'widgets/special_offers.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if (state is HomeSuccess) {
              return Column(
                children: [
                  SizedBox(height: getProportionateScreenWidth(20)),
                  const HomeHeader(),
                  SizedBox(height: getProportionateScreenWidth(10)),
                  const DiscountBanner(),
                  Categories(categories: state.categories),
                  SpecialOffers(specialOffers: state.specialOffers),
                  SizedBox(height: getProportionateScreenWidth(30)),
                  PopularProducts(products: state.products),
                  SizedBox(height: getProportionateScreenWidth(30)),
                ],
              );
            } else if (state is HomeError) {
              return CustomeErrorWidget(errorMessage: state.message);
            }
            return SizedBox(
              height: SizeConfig.screenHeight,
              child: const CustomLoadingIndicator(),
            );
          },
        ),
      ),
    );
  }
}
