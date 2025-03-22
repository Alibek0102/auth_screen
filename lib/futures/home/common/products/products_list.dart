import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/home/common/list_header.dart';
import 'package:auth_screen/futures/home/common/products/product_item.dart';
import 'package:flutter/material.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        24.height,
        const ListHeader(headerTitle: 'Top Selling'),
        16.height,
        SizedBox(
          height: 281,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 15,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            itemBuilder: (BuildContext context, int index) {
              return const ProductItem();
            }
          ),
        ),
      ],
    );
  }
}