import 'dart:ui';
import 'package:flutter/material.dart';


class ColorConstant{
  static Color bluegray50 = fromHex('#f0f0f5');
  static Color red8004d = fromHex('#4ddb002e');
  static Color redA100 = fromHex('#ff8087');
  static Color redA40066 = fromHex('#66ed1745');




  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}