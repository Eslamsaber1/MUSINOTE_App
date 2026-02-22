import 'package:flutter/material.dart';

Widget buildCard({required Widget child, Color color = const Color(0xff5C3287)}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 19.0),
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: child,
    ),
  );
}
