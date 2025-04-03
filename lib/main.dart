import 'package:auth_screen/core/dio_client.dart';
import 'package:auth_screen/futures/home/bloc/catagories/categories_bloc.dart';
import 'package:auth_screen/futures/home/domain/repository/category_repository_impl.dart';
import 'package:auth_screen/futures/home/domain/repository/products_repository_impl.dart';
import 'package:auth_screen/futures/profile/bloc/profile_bloc.dart';
import 'package:auth_screen/futures/profile/domain/repository/user_repository_impl.dart';
import 'package:auth_screen/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(ClotApplication());
}

class ClotApplication extends StatelessWidget {
  ClotApplication({super.key});

  final _appRoutes = AppRoutes();

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (_) => DioClient()),
        RepositoryProvider(
            create: (context) => UserRepositoryImpl(
                client: RepositoryProvider.of<DioClient>(context).instance)),
        RepositoryProvider(
            create: (context) => CategoryRepositoryImpl(
                client: RepositoryProvider.of<DioClient>(context).instance)),
        RepositoryProvider(
            create: (context) => ProductsRepositoryImpl(
                client: RepositoryProvider.of<DioClient>(context).instance))
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => ProfileBloc(
                  userRepository:
                      RepositoryProvider.of<UserRepositoryImpl>(context))),
          BlocProvider(
              create: (context) => CategoriesBloc(
                  categoryRepository:
                      RepositoryProvider.of<CategoryRepositoryImpl>(context)))
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
          ),
          routerConfig: _appRoutes.config(),
        ),
      ),
    );
  }
}
