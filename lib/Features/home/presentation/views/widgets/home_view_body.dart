import 'package:e_commerce_app/Features/home/presentation/cubits/home_cubit/home_cubit.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_loading_indicator.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/widgets/custom_error_widget.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_prducts.dart';
import 'special_offers.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if (state is HomeSuccess) {
              return Column(
                children: [
                  SizedBox(height: getProportionateScreenWidth(10)),
                  const HomeHeader(),
                  SizedBox(height: getProportionateScreenWidth(10)),
                  const DiscountBanner(),
                  SizedBox(height: getProportionateScreenWidth(10)),
                  Categories(
                    categories: state.categories,
                  ),
                  SizedBox(height: getProportionateScreenWidth(10)),
                  SpecialOffers(specialOffers: state.specialOffers),
                  SizedBox(height: getProportionateScreenWidth(10)),
                  PopularProducts(products: state.products),
                  SizedBox(height: getProportionateScreenWidth(10)),
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
