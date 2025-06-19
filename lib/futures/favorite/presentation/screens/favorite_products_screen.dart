import 'package:auth_screen/core/di/service_locator.dart';
import 'package:auth_screen/elements/custom_app_bar.dart';
import 'package:auth_screen/futures/favorite/presentation/blocs/favorite_cubit.dart';
import 'package:auth_screen/futures/home/common/products/product_item.dart';
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
        bloc: getIt.get<FavoriteCubit>(),
        builder: (context, state) {
          return GridView.builder(
              padding:
                  const EdgeInsets.only(right: 24.0, left: 24.0, bottom: 50.0),
              itemCount: state.products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 20.0,
                  childAspectRatio: 0.7),
              itemBuilder: (BuildContext context, int index) {
                return ProductItem(
                  productEntity: state.products[index],
                  availableInCart: true,
                  onAddToCart: () {
                    getIt
                        .get<FavoriteCubit>()
                        .appendFavoriteProduct(product: state.products[index]);
                  },
                );
              });
        },
      ),
    );
  }
}
