import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AuthInfoText extends StatelessWidget {
  final String startText;
  final String? tappableText;
  final VoidCallback? onTap;

  const AuthInfoText(
      {super.key, this.onTap, required this.startText, this.tappableText});

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(style: const TextStyle(fontSize: 12), children: [
      TextSpan(text: startText),
      const TextSpan(text: ' '),
      TextSpan(
          text: tappableText ?? '',
          style: const TextStyle(fontWeight: FontWeight.bold),
          recognizer: TapGestureRecognizer()..onTap = onTap)
    ]));
  }
}
