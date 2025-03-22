import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/home/common/list_header.dart';
import 'package:auth_screen/futures/home/common/categories/category_item.dart';
import 'package:flutter/material.dart';

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
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            itemBuilder: (BuildContext context, int index) {
            return const CategoryItem();
          }),
        ),
      ],
    );
  }
}