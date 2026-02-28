import 'package:flutter_bloc/flutter_bloc.dart';

import 'products_event.dart';
import 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc() : super(const ProductsState()) {
    on<LoadCategories>(_onLoadCategories);
    on<LoadProductsByCategory>(_onLoadProductsByCategory);
    on<Refresh>(_onRefresh);
  }

  Future<void> _onLoadCategories(
    LoadCategories event,
    Emitter<ProductsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, error: null));
  }

  Future<void> _onLoadProductsByCategory(
    LoadProductsByCategory event,
    Emitter<ProductsState> emit,
  ) async {}

  Future<void> _onRefresh(Refresh event, Emitter<ProductsState> emit) async {
    emit(state.copyWith(isRefreshing: true, error: null));
  }
}
