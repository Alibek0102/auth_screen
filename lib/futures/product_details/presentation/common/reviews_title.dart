import 'package:auth_screen/core/app_colors.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:flutter/material.dart';

class ReviewsTitle extends StatelessWidget {
  const ReviewsTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Reviews',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          12.height,
          const Text(
            '4.5 Ratings',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          12.height,
          Text(
            '213 Reviews',
            style: TextStyle(fontSize: 12.0, color: AppColors.primarySilver),
          )
        ],
      ),
    );
  }
}
