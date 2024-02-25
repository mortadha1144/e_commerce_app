
import 'package:e_commerce_app/core/utils/constants/firebase_field_name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'special_offer_model.g.dart';
part 'special_offer_model.freezed.dart';

@Freezed(fromJson: true, toJson: false)
class SpecialOfferModel with _$SpecialOfferModel {
  const factory SpecialOfferModel({
    required int id,
    required String category,
   @JsonKey(name:FirebaseFieldName.numOfBrands)
    required int numOfBrands,
    required String image,
  }) = _SpecialOfferModel;

  factory SpecialOfferModel.fromJson(Map<String, dynamic> json) =>
      _$SpecialOfferModelFromJson(json);
}
