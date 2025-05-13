import 'package:auth_screen/core/di/service_locator.dart';
import 'package:auth_screen/elements/custom_app_bar.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/category_details/bloc/category_details_bloc.dart';
import 'package:auth_screen/futures/category_details/common/category_title.dart';
import 'package:auth_screen/futures/home/common/products/product_item.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

@RoutePage()
class CategoryDetailsScreen extends StatelessWidget {
  final String model;

  const CategoryDetailsScreen({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: BlocBuilder<CategoryDetailsBloc, CategoryDetailsState>(
        bloc: getIt.get<CategoryDetailsBloc>()
          ..add(CategoryDetailsEvent.loadProducts(model: model)),
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              CustomAppBar(
                goBack: () {
                  context.router.back();
                },
              ),
              ...state.when(
                initial: () => [
                  const SliverToBoxAdapter(
                    child: Text('initial'),
                  )
                ],
                loader: () => [
                  const SliverFillRemaining(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                ],
                loaded: (products) => [
                  SliverToBoxAdapter(
                    child: 15.height,
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    sliver: CategoryTitle(title: model, count: products.length),
                  ),
                  SliverToBoxAdapter(
                    child: 15.height,
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    sliver: SliverGrid.builder(
                        itemCount: products.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20,
                                crossAxisCount: 2,
                                mainAxisExtent: 281),
                        itemBuilder: (BuildContext context, int index) {
                          return ProductItem(productEntity: products[index]);
                        }),
                  ),
                  SliverToBoxAdapter(
                    child: 34.height,
                  ),
                ],
                error: () => [
                  SliverFillRemaining(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        (screenSize.height * 0.2).toInt().height,
                        Lottie.asset('assets/lotties/productError.json',
                            width: screenSize.width,
                            height: screenSize.width / 2),
                        const Text(
                          'Ошибка загрузки',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        15.height,
                        const Text(
                          'Не удалось загрузить продукты.\nПожалуйста, попробуйте снова.',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
