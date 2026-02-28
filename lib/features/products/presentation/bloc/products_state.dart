import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/product_model.dart';

part 'products_state.freezed.dart';

@Freezed()
abstract class ProductsState with _$ProductsState {
  const factory ProductsState({
    @Default([]) List<String> categories,
    @Default({}) Map<String, List<ProductModel>> productsByCategory,
    @Default(false) bool isLoading,
    @Default(false) bool isRefreshing,
    @Default('') String searchQuery,
    String? error,
  }) = _ProductsState;
}
