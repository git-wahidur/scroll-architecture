import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_event.freezed.dart';

@freezed
abstract class ProductsEvent with _$ProductsEvent {
  const factory ProductsEvent.loadCategories() = LoadCategories;
  const factory ProductsEvent.loadProductsByCategory(String category) =
      LoadProductsByCategory;
  const factory ProductsEvent.refresh() = Refresh;
}
