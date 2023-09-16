import 'dart:ui';
import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color white = Color.fromARGB(255, 255, 255, 255);
  static const Color black = Color.fromARGB(255, 0, 0, 0);
  static const Color primary = Color.fromARGB(255, 238, 117, 50);
  static const Color secondary = Color.fromARGB(255, 250, 243, 238);
  static const Color pageBackground = Color.fromARGB(255, 255, 252, 251);
  static const Color buttonIconBackground = Color.fromARGB(255, 248, 217, 200);
  static const Color prayerIcons = Color.fromARGB(255, 154, 151, 154);
  static const Color dividers = Color.fromARGB(255, 249, 226, 213);
}

class AppGradients {
  AppGradients._();
  static const LinearGradient gradiant = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color.fromARGB(0, 250, 212, 191),
      Color.fromARGB(255, 247, 208, 181)
    ],
  );
}

class AppTextColors {
  AppTextColors._();
  static const Color headlines = Color.fromARGB(255, 49, 49, 64);
  static const Color text = Color.fromARGB(255, 99, 91, 97);
  static const Color subText = Color.fromARGB(255, 148, 135, 134);
}
