import 'package:auth_screen/core/clients/dioClient.dart';
import 'package:auth_screen/domain/repository/login_repository_impl.dart';
import 'package:auth_screen/domain/repository/token_repository_iml.dart';
import 'package:auth_screen/futures/authentification/login/bloc/login_bloc.dart';
import 'package:auth_screen/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {

  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (_) => DioClient()),
        RepositoryProvider(create: (context) => LoginRepositoryImpl(
          dioClient: RepositoryProvider.of<DioClient>(context).instance)
        ),
        RepositoryProvider(create: (context) => TokenRepositoryIml(
          dioClient: RepositoryProvider.of<DioClient>(context).instance
        ))
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => LoginBloc(
            loginRepo: RepositoryProvider.of<LoginRepositoryImpl>(context)
          ))
        ],
        child: ClotApplication()
      ),
    ));
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