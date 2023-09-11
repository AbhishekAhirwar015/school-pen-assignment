import 'package:flutter/material.dart';

class Style {
  static Color background = Color(0xFFFFFFFF);
  static Color TextHead = Color(0xFF1E1E1E);
  static Color TextBody = Color(0xFFA9A9B1);
  static Color secondarTextColor = Color.fromARGB(255, 58, 58, 58);

  final double? height;
  Style({this.height});

  static TextStyle headTextStyle =
      TextStyle(fontSize: 24, color: TextHead, fontWeight: FontWeight.w700);

  static TextStyle bodyTextStyle = TextStyle(
    fontSize: 14,
    color: TextBody,
    height: 1,
    fontWeight: FontWeight.w400,
  );
}
