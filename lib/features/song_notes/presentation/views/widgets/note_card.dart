import 'package:flutter/material.dart';
class NoteCard extends StatelessWidget {
  const NoteCard({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return ClipRRect(
      borderRadius: BorderRadius.circular(27),
      child: Image.asset(
        imagePath,
        width: screenWidth * 0.85,
        height: screenHeight * 0.12,
        fit: BoxFit.cover,
      ),
    );
  }
}
