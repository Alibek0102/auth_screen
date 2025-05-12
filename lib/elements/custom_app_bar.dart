import 'package:auth_screen/elements/header_back_button.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Function()? goBack;

  const CustomAppBar({super.key, required this.goBack});

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
    );
  }
}
