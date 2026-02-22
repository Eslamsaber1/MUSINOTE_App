import 'package:flutter/material.dart';

abstract class AppColors {
  static const primary = Color(0xFF602F94);
  static const secondary = Color(0xFF9C27B0);
  static const lightGray = Color(0xFF999999);
  static const gray = Color(0xFFD9D9D9);
  static const lightWhite = Color(0xFFECE6F0); // New light white color
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
    stops: [0.0, 0.26, 0.49, 0.9],
  );
  static const backgroundGradient2 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF999999),
      Color(0xFF8B7E98),
      Color(0xFF4A2C6B),
      Color(0xFF401272),
    ],
    tileMode: TileMode.clamp,
    stops: [0.0, 0.3, 0.6, 1.0],
  );
  static const backgroundGradient3 = RadialGradient(
    center: Alignment.topRight,
    // Center of the gradient
    radius: 2,
    // Spread of the gradient
    colors: [
      Color(0xFF70568B), // Gold
      Color(0xFFA48EBA), // Dark Red
      Color(0xFF3C1D5C), // Dark Red
    ],
    stops: [0.3, 0.6, 1],
    // Transition points
    tileMode: TileMode.clamp, // No repeat beyond radius
  );

  static const radialGradient = RadialGradient(
    center: Alignment.topRight,
    radius: 3,
    colors: [
      Color(0xFF9478B1), // Gold
      Color(0xFF5D2D8F), // Dark Red
      Color(0xFFBEB1CB), // Dark Red
    ],
    stops: [0.0, 0.5, 1],
    // Transition points
    tileMode: TileMode.clamp, // No repeat beyond radius
  );

  static const likedSongsGradient = SweepGradient(
    colors: [Color(0xFFFFFFFF), Color(0xFF4C2575), Color(0xFFFF004D)],
    startAngle: 1,
    endAngle: 5.28319, // 2 * pi radians
    tileMode: TileMode.mirror,
  );

static const instrumentGradient = LinearGradient(
    colors: [Color(0xFFFFFFFF), Color(0xFFFF004D)],
  begin: Alignment.bottomLeft,
  end: Alignment.topRight,
    stops: [0.0, 1],
    tileMode: TileMode.clamp,
  );

  static const logoutGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF8A6795),
      Color(0xFF61147B),
      Color(0xFF3D0C4D),
      Color(0xFF180320), // bottom very dark
    ],
    stops: [0.0, 0.3, 0.5, 1.0],
    tileMode: TileMode.clamp,
  );
  static const avatarGradient = LinearGradient(
    colors: [
      Color(0xFF602F94),
      Color(0xFF715688),
      Color(0xFF796783),
      Color(0xFF837C7C), // bottom very dark
    ],
  );
static const logoutButtonGradient = LinearGradient(
    colors: [
      Color(0xFF3C1D5C),
      Color(0xFF4D0994),
      Color(0xFF7E3EC2),
    ],
  );
static const linearGradient2 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF2F144C),
      Color(0xFF8349C0),
      Color(0xFF999999),
    ],
  stops: [0.0, 0.8, 1.0],
  );
}
