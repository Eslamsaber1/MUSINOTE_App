import 'package:flutter/material.dart';

Widget buildProgressbar() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 26),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(3),
      child: LinearProgressIndicator(
        value: 0.6,
        backgroundColor: Color(0xff402162),
        valueColor: const AlwaysStoppedAnimation<Color>(Colors.black),
        minHeight: 6,
      ),
    ),
  );
}

