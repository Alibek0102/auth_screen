import 'package:flutter/material.dart';

extension HexColorExtension on String {
  Color toColor() {
    String hex = replaceFirst('#', '');
    if (hex.length == 6) {
      hex = 'FF$hex'; // добавляем полную непрозрачность
    }
    return Color(int.parse(hex, radix: 16));
  }
}
