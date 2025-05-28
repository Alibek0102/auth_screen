import 'package:auth_screen/core/app_colors.dart';
import 'package:flutter/material.dart';

class HeaderBackButton extends StatelessWidget {
  final Function()? goBack;

  const HeaderBackButton({super.key, required this.goBack});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 24.0),
        child: IconButton(
          onPressed: goBack,
          icon: const Icon(Icons.chevron_left),
          style: IconButton.styleFrom(
              backgroundColor: AppColors.lightSilver,
              shape: const CircleBorder()),
        ));
  }
}
