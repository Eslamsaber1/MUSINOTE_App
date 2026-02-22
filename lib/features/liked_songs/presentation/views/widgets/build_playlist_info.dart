import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:musinote/core/utils/app_colors.dart';

import '../../../../../core/utils/app_text_styles.dart' show AppTextStyles;

Widget buildPlaylistInfo() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // Album art
      Container(
        width: 195,
        height: 161,
        decoration: BoxDecoration(
          gradient: AppColors.likedSongsGradient,
          borderRadius: BorderRadius.circular(15),
        ),
        child: SvgPicture.asset(
          'assets/icons/music.svg',
          fit: BoxFit.scaleDown,
        ),
      ),
      const SizedBox(width: 16),
      // Info
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            const Text('Playlist', style: AppTextStyles.regular14),
            const Text(
              'Liked Songs',
              style: AppTextStyles.regular25,
            ),
            const Text('127 Songs', style: AppTextStyles.regular16),
          ],
        ),
      ),
    ],
  );
}
