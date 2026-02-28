import 'package:scroll_architecture_task/core/constants/api_client.dart';
import 'package:scroll_architecture_task/core/constants/api_constants.dart';

import '../models/product_model.dart';

class ProductsRepository {
  final ApiClient apiClient;

  ProductsRepository(this.apiClient);

  Future<List<ProductModel>> getProducts() async {
    try {
      final response = await apiClient.get(ApiConstants.products);
      final List<dynamic> data = response.data;
      return data.map((json) => ProductModel.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to fetch products: ${e.toString()}');
    }
  }

  Future<List<String>> getCategories() async {
    final response = await apiClient.get(
      '${ApiConstants.baseUrl}/products/categories',
    );
    return List<String>.from(response.data);
  }

  Future<List<ProductModel>> getProductsByCategory(String category) async {
    final response = await apiClient.get(
      '${ApiConstants.baseUrl}/products/category/$category',
    );
    final List<dynamic> data = response.data;
    return data.map((json) => ProductModel.fromJson(json)).toList();
  }
}
