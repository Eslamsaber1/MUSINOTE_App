import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_text_styles.dart';

Widget buildPlaylistCard(PlaylistItem item) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(item.imagePath),
        fit: BoxFit.cover,
        opacity: 0.6,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 24.0, left: 14),
        child: Text(
          item.title,
          style: AppTextStyles.medium16.copyWith(
            color: Colors.white,
            height: 1.1,
          ),
        ),
      ),
    ),
  );
}

class PlaylistItem {
  final String title;
  final String imagePath;

  PlaylistItem({required this.title, required this.imagePath});
}
