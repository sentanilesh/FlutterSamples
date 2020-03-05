import 'package:flutter/material.dart';

class Utils{

  static Color parseColor(String hexColor){
    if (hexColor.contains("#")) return Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);
    return Color(int.parse(hexColor.substring(0, 6), radix: 16) + 0xFF000000);
  }
}