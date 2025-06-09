import 'package:auth_screen/core/app_colors.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductComment extends StatelessWidget {
  const ProductComment({
    super.key,
  });

  final rating = 2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 40,
                height: 40,
                child: CircleAvatar(),
              ),
              12.width,
              const Text(
                'Alex Morgan',
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Row(
                children: [1, 2, 3, 4, 5].map((number) {
                  if (rating >= number) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: SvgPicture.asset('assets/images/activeStar.svg'),
                    );
                  }

                  return Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset('assets/images/unactiveStar.svg'),
                  );
                }).toList(),
              )
            ],
          ),
          4.height,
          Text(
              'Gucci transcribes its heritage, creativity, and innovation into a plenitude of collections. From staple items to distinctive accessories.',
              style: TextStyle(fontSize: 12.0, color: AppColors.primarySilver)),
          4.height,
          const Text('12days ago',
              style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
