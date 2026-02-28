import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scroll_architecture_task/core/constants/api_client.dart';
import 'package:scroll_architecture_task/core/constants/app_colors.dart';
import 'package:scroll_architecture_task/features/auth/data/repository/auth_repository.dart';
import 'package:scroll_architecture_task/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:scroll_architecture_task/features/products/data/repository/products_repository.dart';
import 'package:scroll_architecture_task/features/products/presentation/bloc/products_bloc.dart';

import 'features/auth/presentation/views/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final apiClient = ApiClient();
    final authRepository = AuthRepository(apiClient);
    final productsRepository = ProductsRepository(apiClient);

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthBloc(authRepository)),
        BlocProvider(create: (context) => ProductsBloc(productsRepository)),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            title: 'Daraz',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: AppColors.primary,
              scaffoldBackgroundColor: AppColors.background,
              colorScheme: ColorScheme.fromSeed(
                seedColor: AppColors.primary,
                primary: AppColors.primary,
                secondary: AppColors.secondary,
              ),
              appBarTheme: const AppBarTheme(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
                elevation: 0,
              ),
              useMaterial3: true,
            ),
            home: child,
          );
        },
        child: AppNavigator(),
      ),
    );
  }
}

class AppNavigator extends StatelessWidget {
  const AppNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.maybeWhen(
          authenticated: (_) => const ProductListingPage(),
          orElse: () => const LoginPage(),
        );
      },
    );
  }
}
