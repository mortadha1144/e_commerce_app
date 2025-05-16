import 'package:e_commerce_app/features/home/data/models/category_model.dart';
import 'package:e_commerce_app/features/home/data/models/special_offer_model.dart';
import 'package:e_commerce_app/features/product/data/models/product_model.dart';

class HomeData {
  const HomeData({
    required this.categories,
    required this.specialOffers,
    required this.popularProducts,
  });
  final List<CategoryModel> categories;
  final List<SpecialOfferModel> specialOffers;
  final List<ProductModel> popularProducts;
}
