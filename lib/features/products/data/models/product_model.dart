import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@Freezed()
abstract class ProductModel with _$ProductModel {
  const factory ProductModel({
    int? id,
    String? title,
    @JsonKey(fromJson: _priceFromJson) double? price,
    String? description,
    String? category,
    String? image,
    @JsonKey(fromJson: _ratingFromJson) RatingModel? rating,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

double? _priceFromJson(dynamic value) {
  if (value == null) return null;
  return (value as num).toDouble();
}

RatingModel? _ratingFromJson(dynamic value) {
  if (value == null) return null;
  return RatingModel.fromJson(value as Map<String, dynamic>);
}

@Freezed()
abstract class RatingModel with _$RatingModel {
  const factory RatingModel({
    @JsonKey(fromJson: _rateFromJson) double? rate,
    int? count,
  }) = _RatingModel;

  factory RatingModel.fromJson(Map<String, dynamic> json) =>
      _$RatingModelFromJson(json);
}

double? _rateFromJson(dynamic value) {
  if (value == null) return null;
  return (value as num).toDouble();
}
