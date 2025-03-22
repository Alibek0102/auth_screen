import 'package:auth_screen/futures/home/common/app_bar/home_app_bar.dart';
import 'package:auth_screen/futures/home/common/categories/categories_list.dart';
import 'package:auth_screen/futures/home/common/products/products_list.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const HomeAppBar(),

          SliverList.list(
            children: const [
              CategoriesList(),
              ProductsList(),
              ProductsList(),
              ProductsList(),
              ProductsList(),
              ProductsList(),
              ProductsList()
            ]
          )
        ],
      )
    );
  }
}

