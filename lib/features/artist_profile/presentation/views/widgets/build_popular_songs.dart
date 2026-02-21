import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_colors.dart';
import 'package:musinote/core/utils/app_text_styles.dart';

Widget buildPopularSongs() {
  final songs = [
    ['1- Set Fire to the rain', '4- Someone Like you'],
    ['2- Skyfall', '5- Rolling in the Deep'],
    ['3- Easy on Me', '6- Love in the Dark'],
  ];

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Popular Songs',
          style: AppTextStyles.regular14,
        ),
        const SizedBox(height: 12),
        ...songs.map(
              (row) => Padding(
            padding: const EdgeInsets.only(bottom: 14),
            child: Row(
              children: [
                Expanded(child: _songChip(row[0])),
                const SizedBox(width: 24),
                Expanded(child: _songChip(row[1])),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _songChip(String title) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
    decoration: BoxDecoration(
      color: AppColors.gray.withOpacity(0.8),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Text(
      title,
      style: AppTextStyles.regular12,
      overflow: TextOverflow.ellipsis,
    ),
  );
}