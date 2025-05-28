import 'package:auth_screen/core/di/service_locator.dart';
import 'package:auth_screen/futures/home/bloc/catagories/categories_bloc.dart';
import 'package:auth_screen/futures/home/common/app_bar/home_app_bar.dart';
import 'package:auth_screen/futures/home/common/categories/categories_list.dart';
import 'package:auth_screen/futures/home/common/products/products_list.dart';
import 'package:auth_screen/futures/profile/bloc/profile_bloc.dart';
import 'package:auth_screen/routes/app_routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    getIt.get<ProfileBloc>().add(FetchProfile());
    getIt.get<CategoriesBloc>().add(FetchCategories());
  }

  void showCategoryByModel(String model) {
    context.router.push(CategoryDetailsRoute(model: model));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        const HomeAppBar(),
        BlocBuilder<CategoriesBloc, CategoriesState>(
          bloc: getIt.get<CategoriesBloc>(),
          builder: (context, state) {
            return SliverList.list(children: [
              CategoriesList(
                categories: state.categories,
                onTapCategory: showCategoryByModel,
              ),
              Column(
                  children: state.categories
                      .map((category) => ProductsList(
                            categoryTitle: category.category,
                          ))
                      .toList())
            ]);
          },
        )
      ],
    ));
  }
}
