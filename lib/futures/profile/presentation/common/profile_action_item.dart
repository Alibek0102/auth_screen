import 'package:auth_screen/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileActionItem extends StatelessWidget {
  final String title;
  const ProfileActionItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: AppColors.lightSilver,
            borderRadius: BorderRadius.circular(8.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontSize: 16.0, fontWeight: FontWeight.w500),
              ),
              SvgPicture.asset('assets/images/chevronright.svg')
            ],
          ),
        ),
      ),
    );
  }
}
