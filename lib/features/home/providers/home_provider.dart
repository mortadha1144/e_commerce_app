import 'package:e_commerce_app/features/home/data/models/category_model.dart';
import 'package:e_commerce_app/features/home/data/models/home_data.dart';
import 'package:e_commerce_app/features/home/data/models/special_offer_model.dart';
import 'package:e_commerce_app/features/home/data/repos/home_repo_refactor.dart';
import 'package:e_commerce_app/features/product/data/models/product_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeProvider = FutureProvider<HomeData>(
  (ref) async {
    final homeRepo = ref.read(homeRepoProvider);

    final result = await Future.wait([
      homeRepo.getCategories(),
      homeRepo.getSpecialOffers(),
      homeRepo.getPopularProducts(),
    ]);
    return HomeData(
      categories: result[0] as List<CategoryModel>,
      specialOffers: result[1] as List<SpecialOfferModel>,
      popularProducts: result[2] as List<ProductModel>,
    );
  },
);
