import 'package:auth_screen/elements/social_button.dart';
import 'package:auth_screen/entities/ui/social_button_model.dart';
import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {

  final List<SocialButtonModel> buttonElements = const [
    SocialButtonModel(name: 'Continue With Apple', svgPicture: 'assets/images/apple.svg'),
    SocialButtonModel(name: 'Continue With Google', svgPicture: 'assets/images/apple.svg'),
    SocialButtonModel(name: 'Continue With Facebook', svgPicture: 'assets/images/apple.svg'),
  ];

  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: buttonElements.map((SocialButtonModel element) => Column(
        children: [
          SocialButton(buttonElement: element),
          const SizedBox(height: 12)
        ],
      )).toList() 
    );
  }
}