import 'package:flutter/material.dart';
import 'dart:ui';

//const kPrimaryColor = Color(0xFF6F35A5);
const kPrimaryColor = Color(0xFF43A047);
const kPrimaryLightColor = Color(0xFFE8F5E9);
const white = Colors.white;
const red = Colors.red;
const grey = Colors.grey;

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if(hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}


