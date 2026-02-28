import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const Initial()) {
    on<Login>(_onLogin);
    on<Logout>(_onLogout);
  }

  Future<void> _onLogin(Login event, Emitter<AuthState> emit) async {
    emit(const Loading());
  }

  Future<void> _onLogout(Logout event, Emitter<AuthState> emit) async {
    emit(const Initial());
  }
}
