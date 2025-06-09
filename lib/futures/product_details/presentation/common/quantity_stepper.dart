import 'package:auth_screen/core/app_colors.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class QuantityStepper extends StatelessWidget {
  const QuantityStepper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 40,
          height: 40,
          child: IconButton(
              style: IconButton.styleFrom(
                  backgroundColor: AppColors.primaryViolet),
              onPressed: () {},
              icon: SvgPicture.asset('assets/images/Plus.svg')),
        ),
        23.width,
        const Text(
          '1',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        23.width,
        SizedBox(
          width: 40,
          height: 40,
          child: IconButton(
              style: IconButton.styleFrom(
                  backgroundColor: AppColors.primaryViolet),
              color: Colors.red,
              onPressed: () {},
              icon: SvgPicture.asset('assets/images/Minus.svg')),
        ),
      ],
    );
  }
}
