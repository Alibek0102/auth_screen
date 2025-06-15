import 'package:auth_screen/core/app_colors.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 12.0),
      child: SizedBox(
          height: 72,
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: AppColors.lightSilver,
                borderRadius: BorderRadius.circular(8.0)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/ReceiptTab.svg',
                    color: Colors.black,
                  ),
                  12.width,
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Order  #456765',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          '4 items',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              color: AppColors.textSilver),
                        )
                      ],
                    ),
                  )),
                  SvgPicture.asset('assets/images/chevronright.svg')
                ],
              ),
            ),
          )),
    );
  }
}
