import 'package:auth_screen/futures/authentification/common/header.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  final Widget child;
  final String headerTitle;
  final bool hasBackButton;

  const AuthPage({
    super.key, 
    required this.child,
    required this.hasBackButton,
    required this.headerTitle
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 34),
        Header(
          headerTitle: headerTitle,
          hasBackButton: hasBackButton
        ),
        child
      ],
    );
  }
}