import 'package:auth_screen/core/app_colors.dart';
import 'package:flutter/material.dart';

class LocationButton extends StatelessWidget {
  final VoidCallback? onTap;

  const LocationButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.lightSilver,
            minimumSize: const Size.fromHeight(55.0),
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Мое местоположение',
              style: TextStyle(color: AppColors.primaryViolet),
            ),
            Icon(
              Icons.location_on,
              color: AppColors.primaryViolet,
            )
          ],
        ));
  }
}
