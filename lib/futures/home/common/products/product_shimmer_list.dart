import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/home/common/list_shimmer_header.dart';
import 'package:auth_screen/futures/home/common/products/products_shimmer_item.dart';
import 'package:flutter/widgets.dart';

class ProductShimmerList extends StatelessWidget {
  const ProductShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        24.height,
        const ListShimmerHeader(),
        16.height,
        SizedBox(
          height: 281,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              itemBuilder: (BuildContext context, int index) {
                return const ProductsShimmerItem();
              }),
        ),
      ],
    );
  }
}
