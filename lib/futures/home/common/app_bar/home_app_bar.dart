import 'package:auth_screen/futures/home/common/app_bar/app_bar_leading.dart';
import 'package:auth_screen/futures/home/common/app_bar/app_bar_trailing.dart';
import 'package:auth_screen/futures/home/common/app_bar/category_app_bar_button.dart';
import 'package:auth_screen/futures/home/common/app_bar/home_search_bar.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: CategoryAppBarButton(),
      pinned: true,
      snap: true,
      floating: true,
      surfaceTintColor: Colors.transparent,
      bottom: HomeSearchBar(),
      leading: AppBarLeading(),
      leadingWidth: 64,
      actions: [
        AppBarTrailing(),
      ],
    );
  }
}
