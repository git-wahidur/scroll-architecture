import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scroll_architecture_task/features/auth/data/models/user_model.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.loading() = Loading;
  const factory AuthState.authenticated(UserModel user) = Authenticated;
  const factory AuthState.error(String message) = Error;
}
