import 'package:e_commerce_app/Features/auth/providers/user_id_provider.dart';
import 'package:e_commerce_app/Features/product/data/models/favorite_un_favorite_request.dart';
import 'package:e_commerce_app/Features/product/data/models/product_model.dart';
import 'package:e_commerce_app/Features/product/presentation/providers/is_product_favourite_provider.dart';
import 'package:e_commerce_app/Features/product/presentation/providers/toggle_favourite_provider.dart';
import 'package:e_commerce_app/core/utils/functions/custom_snack_bar.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_state/riverpod_state.dart';

class FavoriteButton extends ConsumerWidget {
  const FavoriteButton({
    required this.product,
    super.key,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    final state = ref.watch(isProductFavoriteProvider(product.id.toString()));

    return state.when(
      data: (isFavorite) {
        return InkWell(
          onTap: () async {
            final userId = ref.read(userIdProvider);

            if (userId == null) {
              return;
            }

            final favoriteRequest = FavoriteUnFavoriteRequest(
              productId: product.id.toString(),
              likedBy: userId,
            );
            final favoriteRequestState = await ref
                .read(toggleFavoriteProvider.notifier)
                .run(favoriteRequest);

            favoriteRequestState.whenDataOrError(
                data: (_) {},
                error: (error, stackTrace) {
                  customSnackBar(
                    context,
                    error as String,
                  );
                });
          },
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(15)),
            width: getProportionateScreenWidth(64),
            decoration: BoxDecoration(
              color: isFavorite
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
                isFavorite ? const Color(0xFFFF4848) : const Color(0xFFDBDEE4),
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
