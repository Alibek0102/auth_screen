import 'package:auth_screen/routes/app_routes.dart';
import 'package:flutter/material.dart';

void main() {

  runApp(ClotApplication());
}

class ClotApplication extends StatelessWidget {
  ClotApplication({super.key});

  final _appRoutes = AppRoutes();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routerConfig: _appRoutes.config(),
    );
  }
}
