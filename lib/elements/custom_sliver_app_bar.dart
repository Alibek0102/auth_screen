import 'package:auth_screen/elements/header_back_button.dart';
import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  final Function()? goBack;
  final String? headerTitle;

  const CustomSliverAppBar({super.key, required this.goBack, this.headerTitle});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      pinned: true,
      snap: true,
      floating: true,
      surfaceTintColor: Colors.transparent,
      leading: HeaderBackButton(
        goBack: goBack,
      ),
      leadingWidth: 64,
      title: headerTitle != null
          ? Text(
              headerTitle!,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )
          : null,
    );
  }
}
