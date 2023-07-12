import 'package:e_commerce_app/Features/home/presentation/cubits/popular_cubit/popular_products_cubit.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/widgets/custom_error_widget.dart';
import '../../../../../core/utils/widgets/product_card.dart';
import '../../../../../size_config.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Popular Product',
          onPress: () {},
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: BlocBuilder<PopularProductsCubit, PopularProductsState>(
            builder: (context, state) {
              if (state is PopularProductsFailure) {
                return CustomeErrorWidget(errorMessage: state.message);
              }
              if (state is PopularProductsSuccess) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...List.generate(
                      state.products.length,
                      (index) => ProductCard(
                        product: state.products[index],
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(20),
                    )
                  ],
                );
              }
              return const CustomLoadingIndicator();
            },
          ),
        ),
      ],
    );
  }
}
