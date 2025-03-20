import 'package:auth_screen/entities/ui/social_button_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialButton extends StatelessWidget {

  final SocialButtonModel buttonElement;

  const SocialButton({super.key, required this.buttonElement});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        ElevatedButton(
          onPressed: (){}, 
          child: Text(
            buttonElement.name,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
          ),
          style: ButtonStyle(
            minimumSize: const WidgetStatePropertyAll(Size(double.infinity, 49)),
            elevation: const WidgetStatePropertyAll(0),
            backgroundColor: WidgetStatePropertyAll(Colors.grey[100])
          ),
        ),

        Positioned(
          child: SvgPicture.asset(buttonElement.svgPicture, width: 24, height: 24,),
          left: 17,
        )
      ],
    );
  }
}