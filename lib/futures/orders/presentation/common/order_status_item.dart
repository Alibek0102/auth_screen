import 'package:auth_screen/core/app_colors.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderStatusItem extends StatelessWidget {
  final String statusName;
  final bool active;

  const OrderStatusItem(
      {super.key, required this.statusName, this.active = false});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: active == true ? 1.0 : 0.4,
      child: Row(
        children: [
          SizedBox(
            width: 24,
            height: 24,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24 / 2),
                  color: AppColors.primaryViolet),
              child: Center(
                child: SvgPicture.asset(
                  'assets/images/checkLine.svg',
                ),
              ),
            ),
          ),
          12.width,
          Expanded(
            child: Text(
              maxLines: 1,
              statusName,
              style:
                  const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
            ),
          ),
          const Text(
            '28 May',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
