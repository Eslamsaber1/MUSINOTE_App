import 'package:flutter/material.dart';

abstract class AppColors {
  static const primary = Color(0xFF602F94);
  static const secondary = Color(0xFF9C27B0);
  static const lightGray = Color(0xFF999999);
  static const gray = Color(0xFFD9D9D9);
  static const backgroundGradient = LinearGradient(
    colors: [Color(0xFF602F94), Color(0xFF999999)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static const followButtonGradient = LinearGradient(
    colors: [Color(0xFF3C1D5C), Color(0xFF8B246B)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  static const backgroundGradient1 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color(0xFF602F94), // Top (Dark Purple)
      Color(0xFF7C6497), // Upper Middle
      Color(0xFF3C1D5C), // Lower Middle
      Color(0xFF999999), // Bottom (Light Gray)
    ],
    tileMode: TileMode.clamp,
    stops: [0.0, 0.26, 0.49, 0.9]
  );
}