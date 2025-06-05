import 'package:auth_screen/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarTrailing extends StatelessWidget {
  final VoidCallback? onShowCart;

  const AppBarTrailing({super.key, this.onShowCart});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24.0),
      child: IconButton(
        onPressed: onShowCart,
        icon: SvgPicture.asset('assets/images/Bag.svg'),
        style: IconButton.styleFrom(backgroundColor: AppColors.primaryViolet),
        color: Colors.white,
      ),
    );
  }
}
