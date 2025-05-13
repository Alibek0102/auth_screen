import 'package:auth_screen/core/app_colors.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/home/common/products/favorite_button.dart';
import 'package:auth_screen/futures/home/domain/entity/product_entity.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final ProductEntity productEntity;

  const ProductItem({super.key, required this.productEntity});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Stack(
        children: [
          SizedBox(
            height: 281,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.light_silver,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Image.network(
                      productEntity.image,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return Image.network(
                            'https://images.vexels.com/media/users/3/234049/isolated/preview/8f2ee5f40718feca247cb3e0f6f4d17a-hoodie-solid-color-clothing.png');
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productEntity.title,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                          maxLines: 1,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '${productEntity.price}',
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            8.width,
                            Text(
                              'S${productEntity.discount}',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primary_silver,
                                  decoration: TextDecoration.lineThrough,
                                  decorationThickness: 1,
                                  decorationColor: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            top: 5,
            right: 8,
            child: FavoriteButton(),
          )
        ],
      ),
    );
  }
}
