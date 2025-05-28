import 'package:auth_screen/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ListShimmerHeader extends StatelessWidget {
  const ListShimmerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 80,
            height: 16,
            child: Shimmer.fromColors(
              baseColor: AppColors.lightSilver,
              highlightColor: AppColors.lightSilver2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: const DecoratedBox(
                    decoration: BoxDecoration(color: Colors.white)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
