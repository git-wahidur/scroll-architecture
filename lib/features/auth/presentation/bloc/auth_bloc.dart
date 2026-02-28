import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scroll_architecture_task/features/auth/data/repository/auth_repository.dart';

import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  AuthBloc(this.authRepository) : super(const Initial()) {
    on<Login>(_onLogin);
    on<Logout>(_onLogout);
  }

  Future<void> _onLogin(Login event, Emitter<AuthState> emit) async {
    emit(const Loading());
    try {
      final user = await authRepository.login(event.username, event.password);
      emit(AuthState.authenticated(user));
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> _onLogout(Logout event, Emitter<AuthState> emit) async {
    emit(const Initial());
  }
}
