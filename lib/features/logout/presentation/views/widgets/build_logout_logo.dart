import 'package:flutter/material.dart';

Widget buildLogoutLogo() {
  return Container(
    width: 72,
    height: 72,
    decoration: const BoxDecoration(
      color: Color(0xFF1A1A1A),
      shape: BoxShape.circle,
    ),
    child: const Center(
      child: Icon(
        Icons.music_note,
        color: Colors.white,
        size: 44,
      ),
    ),
  );
}
