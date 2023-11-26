import 'package:e_commerce_app/core/utils/typedefs.dart';
import 'package:flutter/foundation.dart' show immutable;


@immutable
class FavoriteUnFavoriteRequest {
  final ProductId productId;
  final UserId likedBy;

  const FavoriteUnFavoriteRequest({
    required this.productId,
    required this.likedBy,
  });
}
