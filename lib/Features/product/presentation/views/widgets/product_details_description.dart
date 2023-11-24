import 'package:e_commerce_app/Features/product/presentation/providers/toggle_favourite_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/functions/custom_snack_bar.dart';
import '../../../../../size_config.dart';
import '../../../data/models/product_model.dart';
import '../../providers/is_product_favourite_provider.dart';

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
          child: FavouriteButton(
            product: product,
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

class FavouriteButton extends ConsumerWidget {
  const FavouriteButton({
    required this.product,
    super.key,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<void>>(
      toggleFavoriteProvider,
      (_, state) => state.whenOrNull(
        error: (error, stackTrace) {
          customSnackBar(
            context,
            error as String,
          );
        },
      ),
    );
    final state = ref.watch(isProductFavoriteProvider(product.id.toString()));

    return state.when(
      data: (isFavourite) {
        return InkWell(
          onTap: () => ref.read(toggleFavoriteProvider.notifier).toggleFavorite(
                product: product,
              ),
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(15)),
            width: getProportionateScreenWidth(64),
            decoration: BoxDecoration(
              color: isFavourite
                  ? const Color(0xFFFFE6E6)
                  : const Color(0xFFF5F6F9),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: SvgPicture.asset(
              'assets/icons/Heart Icon_2.svg',
              colorFilter: ColorFilter.mode(
                isFavourite ? const Color(0xFFFF4848) : const Color(0xFFDBDEE4),
                BlendMode.srcIn,
              ),
            ),
          ),
        );
      },
      error: (error, stackTrace) => const SizedBox.shrink(),
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
