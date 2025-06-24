import 'package:auth_screen/core/app_colors.dart';
import 'package:auth_screen/core/di/service_locator.dart';
import 'package:auth_screen/futures/favorite/presentation/blocs/favorite_cubit.dart';
import 'package:auth_screen/futures/splash_screen/presentation/blocs/splash_cubit.dart';
import 'package:auth_screen/routes/app_routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    getIt.get<SplashCubit>().authCheck();
    getIt.get<FavoriteCubit>().loadFavoriteProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryViolet,
      body: BlocListener<SplashCubit, SplashState>(
        bloc: getIt.get<SplashCubit>(),
        listener: (context, state) {
          state.whenOrNull(authorized: (_) {
            context.router.replaceAll([const TabNavigationRoute()]);
          }, unauthorized: () {
            context.router.replaceAll([LoginEmailRoute()]);
          });
        },
        child: const Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
