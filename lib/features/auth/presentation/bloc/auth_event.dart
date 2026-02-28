import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login(String username, String password) = Login;
  const factory AuthEvent.logout() = Logout;
}
