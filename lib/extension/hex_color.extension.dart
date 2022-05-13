import 'package:flutter/material.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    if (hexColor != null) {
      hexColor = hexColor.toUpperCase().replaceAll("#", "");
      if (hexColor.length == 6) {
        hexColor = "FF" + hexColor;
      } else {
        hexColor = hexColor.substring(6, 8) + hexColor.substring(0, 6);
      }
      return int.parse(hexColor, radix: 16);
    } else {
      return 0xffffffff;
    }
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}