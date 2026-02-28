import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scroll_architecture_task/core/constants/api_client.dart';
import 'package:scroll_architecture_task/features/auth/data/repository/auth_repository.dart';
import 'package:scroll_architecture_task/features/auth/presentation/bloc/auth_bloc.dart';

import 'features/auth/presentation/views/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final apiClient = ApiClient();
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthBloc(AuthRepository(apiClient))),
      ],
      child: MaterialApp(
        title: 'Daraz',
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
      ),
    );
  }
}
