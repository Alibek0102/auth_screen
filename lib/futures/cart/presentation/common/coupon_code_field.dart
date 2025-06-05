import 'package:auth_screen/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CouponCodeField extends StatelessWidget {
  const CouponCodeField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: 'Enter Coupon Code',
          hintStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: AppColors.textSilver),
          fillColor: AppColors.lightSilver,
          filled: true,
          prefixIcon: SvgPicture.asset('assets/images/Coupon.svg'),
          prefixIconConstraints:
              const BoxConstraints.expand(height: 20, width: 50),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                style: IconButton.styleFrom(
                    backgroundColor: AppColors.primaryViolet),
                onPressed: () {},
                icon: const Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                )),
          ),
          suffixIconConstraints:
              const BoxConstraints.expand(height: 40, width: 50),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none)),
    );
  }
}
