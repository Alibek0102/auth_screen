import 'package:auth_screen/core/app_colors.dart';
import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 74.0,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search',
                contentPadding: const EdgeInsets.symmetric(horizontal: 19, vertical: 11),
                isCollapsed: true,
                filled: true,
                fillColor: AppColors.light_silver,
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30)
                  )
                )
              ),
            ),
          ),
        ),
      ),
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(74.0);
}