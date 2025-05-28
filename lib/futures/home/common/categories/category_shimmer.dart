import 'package:auth_screen/core/app_colors.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CategoryShimmer extends StatelessWidget {
  const CategoryShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
                width: 56,
                height: 56,
                child: Shimmer.fromColors(
                  baseColor: AppColors.lightSilver,
                  highlightColor: AppColors.lightSilver2,
                  child: const CircleAvatar(),
                )),
            const Spacer(),
          ],
        ),
        13.width
      ],
    );
  }
}
