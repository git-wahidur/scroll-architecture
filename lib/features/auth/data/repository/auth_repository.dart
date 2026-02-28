import 'package:scroll_architecture_task/core/constants/api_client.dart';
import 'package:scroll_architecture_task/core/constants/api_constants.dart';
import 'package:scroll_architecture_task/features/auth/data/models/user_model.dart';

class AuthRepository {
  final ApiClient apiClient;

  AuthRepository(this.apiClient);

  Future<UserModel> login(String username, String password) async {
    try {
      final response = await apiClient.post(
        ApiConstants.login,
        data: {'username': username, 'password': password},
      );

      final token = response.data['token'] as String;
      apiClient.setToken(token);
      final userResponse = await apiClient.get('${ApiConstants.users}/1');

      final userModel = UserModel.fromJson(userResponse.data);
      return userModel;
    } catch (e) {
      throw Exception('Login failed: ${e.toString()}');
    }
  }
}
