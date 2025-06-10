import 'package:auth_screen/core/app_colors.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class QuantityStepper extends StatelessWidget {
  final VoidCallback? onPlusTap;
  final VoidCallback? onMinusTap;
  final int quantity;

  const QuantityStepper(
      {super.key, this.onPlusTap, this.onMinusTap, required this.quantity});

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
              onPressed: onPlusTap,
              icon: SvgPicture.asset('assets/images/Plus.svg')),
        ),
        23.width,
        Text(
          '${quantity}',
          style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        23.width,
        SizedBox(
          width: 40,
          height: 40,
          child: IconButton(
              style: IconButton.styleFrom(
                  backgroundColor: AppColors.primaryViolet),
              color: Colors.red,
              onPressed: onMinusTap,
              icon: SvgPicture.asset('assets/images/Minus.svg')),
        ),
      ],
    );
  }
}
