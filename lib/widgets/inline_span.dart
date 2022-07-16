import 'package:flutter/material.dart';

class InlineSpanText {
  InlineSpan textSpan(String text, color, double size, fontWeight) {
    return TextSpan(
      text: text.toUpperCase(),
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: size.toDouble(),
      ),
    );
  }
}
