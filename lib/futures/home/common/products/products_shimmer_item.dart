import 'package:auth_screen/core/app_colors.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ProductsShimmerItem extends StatelessWidget {
  const ProductsShimmerItem({super.key});

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
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SizedBox(
                            width: double.infinity,
                            height: double.infinity,
                            child: Shimmer.fromColors(
                                baseColor: AppColors.light_silver,
                                highlightColor: AppColors.light_silver2,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: const DecoratedBox(
                                      decoration:
                                          BoxDecoration(color: Colors.white)),
                                )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 70,
                                height: 14,
                                child: Shimmer.fromColors(
                                    baseColor: AppColors.light_silver,
                                    highlightColor: AppColors.light_silver2,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: const DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: Colors.white)),
                                    )),
                              ),
                              8.height,
                              SizedBox(
                                width: 120,
                                height: 14,
                                child: Shimmer.fromColors(
                                    baseColor: AppColors.light_silver,
                                    highlightColor: AppColors.light_silver2,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: const DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: Colors.white)),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        12.width
      ],
    );
    ;
  }
}
