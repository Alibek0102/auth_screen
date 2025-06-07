import 'package:auth_screen/core/app_colors.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:flutter/material.dart';

class CheckoutSection extends StatelessWidget {
  final String sectionTitle;
  final String sectionValue;

  const CheckoutSection(
      {super.key, required this.sectionTitle, required this.sectionValue});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: SizedBox(
        height: 72,
        width: double.infinity,
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: AppColors.lightSilver,
              borderRadius: BorderRadius.circular(8.0)),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sectionTitle,
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal,
                          color: AppColors.textSilver),
                    ),
                    Text(
                      sectionValue,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                )),
                8.width,
                const Icon(
                  Icons.chevron_right_rounded,
                  size: 24.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
