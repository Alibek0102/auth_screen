import 'package:auth_screen/elements/header_back_button.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? goBack;
  final String? headerTitle;

  const CustomAppBar({super.key, this.headerTitle, this.goBack});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      scrolledUnderElevation: 0.0,
      backgroundColor: Colors.white,
      title: headerTitle != null
          ? Text(
              headerTitle!,
              style:
                  const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            )
          : null,
      leading: HeaderBackButton(goBack: goBack),
      leadingWidth: 40 + 27,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(64.0);
}
