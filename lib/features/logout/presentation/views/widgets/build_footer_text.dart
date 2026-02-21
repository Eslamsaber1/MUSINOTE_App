import 'package:flutter/material.dart';

Widget buildFooterText() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      Text(
        'see you soon! ',
        style: TextStyle(
          color: Color(0xFFAAAAAA),
          fontSize: 12,
        ),
      ),
      Icon(Icons.music_note, color: Color(0xFFAAAAAA), size: 14),
    ],
  );
}
