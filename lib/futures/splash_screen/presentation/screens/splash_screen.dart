import 'package:auth_screen/core/app_colors.dart';
import 'package:auth_screen/core/di/service_locator.dart';
import 'package:auth_screen/futures/splash_screen/presentation/blocs/splash_cubit.dart';
import 'package:auth_screen/routes/app_routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final splashCubit = getIt.get<SplashCubit>();

    return Scaffold(
      backgroundColor: AppColors.primary_violet,
      body: BlocListener<SplashCubit, SplashState>(
        bloc: splashCubit..authCheck(),
        listener: (context, state) {
          state.whenOrNull(authorized: () {
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
