import 'package:e_commerce_app/Features/product/data/models/favorite_un_favorite_request.dart';
import 'package:e_commerce_app/Features/product/data/repos/product_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_state/riverpod_state.dart';

final toggleFavoriteProvider =
    AsyncNotifierProvider.autoDispose<ToggleFavoriteNotifier, AsyncX<void>>(
  ToggleFavoriteNotifier.new,
);

class ToggleFavoriteNotifier extends AutoDisposeAsyncNotifier<AsyncX<void>>
    with AsyncXNotifierMixin<void> {
  @override
  BuildXCallback<void> build() => idle();

  @useResult
  RunXCallback<void> run(FavoriteUnFavoriteRequest request) => handle(
        () async {
          return await ref
              .read(productRepoProvider)
              .toggleFavorite(request: request);
        },
      );
}
