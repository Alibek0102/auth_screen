import 'package:auth_screen/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarTrailing extends StatelessWidget {
  const AppBarTrailing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24.0),
      child: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/images/Bag.svg'),
        style: IconButton.styleFrom(backgroundColor: AppColors.primaryViolet),
        color: Colors.white,
      ),
    );
  }
}
