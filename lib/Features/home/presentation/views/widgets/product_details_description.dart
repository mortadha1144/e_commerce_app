import 'package:e_commerce_app/Features/home/presentation/cubits/product_cubit/product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../constants.dart';
import '../../../../../size_config.dart';
import '../../../data/models/product_model.dart';

class ProductDetailsDescription extends StatelessWidget {
  const ProductDetailsDescription({
    super.key,
    required this.product,
    required this.onPressSeeMore,
  });

  final ProductModel product;
  final VoidCallback onPressSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Text(
            product.title ?? '',
            maxLines: 1,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const SizedBox(height: 5),
        Align(
          alignment: Alignment.centerRight,
          child: InkWell(
            // onTap: () => context
            //     .read<ProductCubit>()
            //     .toggleFavourite(product),
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              width: getProportionateScreenWidth(64),
              decoration: BoxDecoration(
                  color:
                  //  context.watch<ProductCubit>().isFavourite
                    true  ? const Color(0xFFFFE6E6)
                      : const Color(0xFFF5F6F9),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  )),
              child: SvgPicture.asset('assets/icons/Heart Icon_2.svg',
                  colorFilter: ColorFilter.mode(
                      // context.watch<ProductCubit>().isFavourite
                        true  ? const Color(0xFFFF4848)
                          : const Color(0xFFDBDEE4),
                      BlendMode.srcIn)),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(64),
          ),
          child: Text(
            product.description ?? '',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: 10,
          ),
          child: GestureDetector(
            onTap: onPressSeeMore,
            child: const Row(
              children: [
                Text(
                  'See More Details',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: kPrimaryColor,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
