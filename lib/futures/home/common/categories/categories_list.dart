import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/home/common/categories/category_item.dart';
import 'package:auth_screen/futures/home/common/categories/category_shimmer.dart';
import 'package:auth_screen/futures/home/common/list_header.dart';
import 'package:auth_screen/futures/home/domain/entity/category_entity.dart';
import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  final List<CategoryEntity> categories;
  final Function(String model) onTapCategory;

  const CategoriesList(
      {super.key, this.categories = const [], required this.onTapCategory});

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
            child: categories.isNotEmpty
                ? ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    itemBuilder: (BuildContext context, int index) {
                      return CategoryItem(
                        title: categories[index].category,
                        onTap: () {
                          onTapCategory(categories[index].category);
                        },
                      );
                    })
                : ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    itemBuilder: (BuildContext context, int index) {
                      return const CategoryShimmer();
                    })),
      ],
    );
  }
}
