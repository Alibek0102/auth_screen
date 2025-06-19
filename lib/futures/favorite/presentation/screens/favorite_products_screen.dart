import 'package:auth_screen/core/di/service_locator.dart';
import 'package:auth_screen/elements/custom_app_bar.dart';
import 'package:auth_screen/futures/favorite/presentation/blocs/favorite_cubit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class FavoriteProductsScreen extends StatelessWidget {
  const FavoriteProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        headerTitle: 'Favorite products',
        goBack: () {
          context.router.back();
        },
      ),
      body: BlocBuilder<FavoriteCubit, FavoriteState>(
        bloc: getIt.get<FavoriteCubit>()..loadFavoriteProducts(),
        builder: (context, state) {
          return Center();
        },
      ),
    );
  }
}
