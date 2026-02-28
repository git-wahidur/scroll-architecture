import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scroll_architecture_task/features/products/data/repository/products_repository.dart';

import '../../data/models/product_model.dart';
import 'products_event.dart';
import 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final ProductsRepository productsRepository;

  ProductsBloc(this.productsRepository) : super(const ProductsState()) {
    on<LoadCategories>(_onLoadCategories);
    on<LoadProductsByCategory>(_onLoadProductsByCategory);
    on<Refresh>(_onRefresh);
  }

  Future<void> _onLoadCategories(
    LoadCategories event,
    Emitter<ProductsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, error: null));
    try {
      final categories = await productsRepository.getCategories();
      emit(state.copyWith(categories: categories, isLoading: false));

      final categoriesToLoad = categories.take(3).toList();
      for (final category in categoriesToLoad) {
        add(ProductsEvent.loadProductsByCategory(category));
      }
    } catch (e) {
      emit(state.copyWith(error: e.toString(), isLoading: false));
    }
  }

  Future<void> _onLoadProductsByCategory(
    LoadProductsByCategory event,
    Emitter<ProductsState> emit,
  ) async {
    try {
      final products = await productsRepository.getProductsByCategory(
        event.category,
      );
      final updatedProducts = Map<String, List<ProductModel>>.from(
        state.productsByCategory,
      );
      updatedProducts[event.category] = products;
      emit(state.copyWith(productsByCategory: updatedProducts));
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<void> _onRefresh(Refresh event, Emitter<ProductsState> emit) async {
    add(const ProductsEvent.loadCategories());

    try {
      final categories = await productsRepository.getCategories();
      final Map<String, List<ProductModel>> allProducts = {};

      final categoriesToLoad = categories.take(3).toList();
      for (final category in categoriesToLoad) {
        final products = await productsRepository.getProductsByCategory(
          category,
        );
        allProducts[category] = products;
      }

      emit(
        state.copyWith(
          categories: categories,
          productsByCategory: allProducts,
          isRefreshing: false,
        ),
      );
    } catch (e) {
      emit(state.copyWith(error: e.toString(), isRefreshing: false));
    }
  }
}
