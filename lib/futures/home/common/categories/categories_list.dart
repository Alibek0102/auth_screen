import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/home/bloc/catagories/categories_bloc.dart';
import 'package:auth_screen/futures/home/common/categories/category_item.dart';
import 'package:auth_screen/futures/home/common/categories/category_shimmer.dart';
import 'package:auth_screen/futures/home/common/list_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        10.height,
        const ListHeader(headerTitle: 'Categories'),
        16.height,
        SizedBox(
          height: 80,
          child: BlocBuilder<CategoriesBloc, CategoriesState>(
            builder: (context, state) {
              if (state.categories.isNotEmpty) {
                return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: state.categories.length,
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    itemBuilder: (BuildContext context, int index) {
                      return CategoryItem(
                        title: state.categories[index].category,
                      );
                    });
              }

              return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  itemBuilder: (BuildContext context, int index) {
                    return const CategoryShimmer();
                  });
            },
          ),
        ),
      ],
    );
  }
}
