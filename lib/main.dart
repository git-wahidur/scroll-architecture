import 'package:flutter/material.dart';

import 'features/auth/presentation/views/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daraz',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
