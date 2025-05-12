
import 'package:e_commerce_app/core/data/models/named_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'special_offer_model.g.dart';
part 'special_offer_model.freezed.dart';

@freezed
abstract class SpecialOfferModel with _$SpecialOfferModel {
  const factory SpecialOfferModel({
    required int id,
    required NamedObject? category,
    required NamedObject? subCategory,
    required int nofBrands,
    required String image,
  }) = _SpecialOfferModel;

  factory SpecialOfferModel.fromJson(Map<String, dynamic> json) =>
      _$SpecialOfferModelFromJson(json);
}
