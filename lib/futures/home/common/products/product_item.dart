import 'package:auth_screen/core/app_colors.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/home/common/products/favorite_button.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Stack(
            children: [
              SizedBox(
                width: 159,
                height: 281,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.light_silver,
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.network('https://images.vexels.com/media/users/3/234049/isolated/preview/8f2ee5f40718feca247cb3e0f6f4d17a-hoodie-solid-color-clothing.png'),
                      ),
                                                      
                      SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 8.0, 
                            bottom: 16.0,
                            left: 4,
                            right: 4
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Mens Harrington Jacket',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                                maxLines: 1,
                              ),
                      
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Text(
                                    'S55.00',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  8.width,
                                  Text(
                                    'S55.00',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.primary_silver,
                                      decoration: TextDecoration.lineThrough,
                                      decorationThickness: 1,
                                      decorationColor: Colors.grey
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
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
        ),
        12.width
      ],
    );
  }
}