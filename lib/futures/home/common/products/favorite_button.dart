import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Icon(
        Icons.favorite_border_outlined
      ),
    );
  }
}