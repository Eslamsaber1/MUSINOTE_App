import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_text_styles.dart';

Widget buildNotesLabel() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      Icon(Icons.music_note, color: Colors.black, size: 24),
      SizedBox(width: 7),
      Text('Notes', style: AppTextStyles.extraBold18),
    ],
  );
}
