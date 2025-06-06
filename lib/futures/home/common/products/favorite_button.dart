import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  final bool isSelected;
  final VoidCallback? onPress;

  const FavoriteButton({super.key, required this.isSelected, this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPress,
        child: isSelected == true
            ? const Icon(
                Icons.favorite,
                color: Colors.red,
              )
            : const Icon(Icons.favorite_border_outlined));
  }
}
