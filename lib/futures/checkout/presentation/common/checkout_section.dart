import 'package:auth_screen/core/app_colors.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:flutter/material.dart';

class CheckoutSection extends StatelessWidget {
  final String sectionTitle;
  final String? sectionValue;
  final VoidCallback? onTap;
  final bool loader;

  const CheckoutSection(
      {super.key,
      required this.sectionTitle,
      this.sectionValue,
      this.onTap,
      this.loader = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
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
                    !loader
                        ? Text(
                            sectionValue ?? 'Не выбран',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                            ),
                          )
                        : const SizedBox(
                            width: 15,
                            height: 15,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
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
