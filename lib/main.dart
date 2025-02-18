import 'package:auth_screen/presentation/login_screen.dart';
import 'package:auth_screen/routes/app_routes.dart';
import 'package:flutter/material.dart';

void main() {

  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final appRoutes = AppRoutes();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routerConfig: appRoutes.config(),
    );
  }
}
