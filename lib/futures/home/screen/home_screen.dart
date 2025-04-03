import 'package:auth_screen/futures/home/bloc/catagories/categories_bloc.dart';
import 'package:auth_screen/futures/home/common/app_bar/home_app_bar.dart';
import 'package:auth_screen/futures/home/common/categories/categories_list.dart';
import 'package:auth_screen/futures/home/common/products/product_shimmer_list.dart';
import 'package:auth_screen/futures/home/common/products/products_list.dart';
import 'package:auth_screen/futures/profile/bloc/profile_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    BlocProvider.of<ProfileBloc>(context).add(FetchProfile());
    BlocProvider.of<CategoriesBloc>(context).add(FetchCategories());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        const HomeAppBar(),
        BlocBuilder<CategoriesBloc, CategoriesState>(
          builder: (context, state) {
            return SliverList.list(children: [
              CategoriesList(categories: state.categories),
              state.categories.isNotEmpty
                  ? Column(
                      children: state.categories
                          .map((category) => ProductsList(
                                categoryTitle: category.category,
                              ))
                          .toList())
                  : ProductShimmerList()
            ]);
          },
        )
      ],
    ));
  }
}
