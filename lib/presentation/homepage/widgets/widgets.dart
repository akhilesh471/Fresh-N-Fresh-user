import 'package:flutter/material.dart';
//<----------------------Title--------------------------------->>
Widget title(String text, Color colors, Color shadow) {
    return Text(
      text,
      style: TextStyle(
          letterSpacing: 1,
          color: colors,
          fontSize: 35,
          fontWeight: FontWeight.bold,
          shadows: [
            Shadow(
                color: shadow.withOpacity(0.2),
                offset: const Offset(2, 3),
                blurRadius: 15),
          ]),
    );
  }