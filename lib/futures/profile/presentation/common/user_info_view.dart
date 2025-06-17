import 'package:auth_screen/core/app_colors.dart';
import 'package:auth_screen/futures/profile/domain/entity/user_entity.dart';
import 'package:flutter/material.dart';

class UserInfoView extends StatelessWidget {
  final UserEntity? user;

  const UserInfoView({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 77,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: AppColors.lightSilver,
            borderRadius: BorderRadius.circular(8.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user?.name ?? '',
                style: const TextStyle(
                    fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Text(
                user?.phone ?? '',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textSilver),
              )
            ],
          ),
        ),
      ),
    );
  }
}
