import 'package:auth_screen/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OptionsContainer extends StatelessWidget {
  final String containerKey;
  final Widget? containerChild;

  const OptionsContainer(
      {super.key, required this.containerKey, this.containerChild});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: SizedBox(
        height: 56,
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: AppColors.lightSilver,
              borderRadius: BorderRadius.circular(56 / 2)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  containerKey,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                containerChild ?? const SizedBox.shrink()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
