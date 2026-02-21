import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_text_styles.dart';

Widget buildHeroSection(BuildContext context) {
  return Stack(
    children: [
      // Artist image placeholder (dark gradient representing B&W photo)
      ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
        child: Image.asset(
          'assets/images/adele2.jpg',
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.29,
          fit: BoxFit.cover,
        ),
      ),

      // Top bar icons
      Positioned(
        top: 40,
        left: 12,
        right: 12,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _iconButton(Icons.chevron_left, onPressed: () => Navigator.pop(context)),
            Row(
              children: [
                _iconButton(Icons.share),
                const SizedBox(width: 8),
                _iconButton(Icons.more_horiz),
              ],
            ),
          ],
        ),
      ),

      // Artist name overlay at bottom
      Positioned(
        bottom: 27,
        left: 16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Adele',
                  style: AppTextStyles.medium16.copyWith(color: Colors.white),
                ),
                const SizedBox(width: 4),
                Container(
                  width: 18,
                  height: 18,
                  decoration: const BoxDecoration(
                    color: Color(0xFF1DA1F2),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.check, color: Colors.white, size: 12),
                ),
              ],
            ),
            Text(
              '12.5M Monthly Listeners',
              style: AppTextStyles.medium16.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget _iconButton(IconData icon , {VoidCallback? onPressed}) {
  return IconButton(onPressed: onPressed, color: Colors.white, iconSize: 28, icon: Icon(icon),);
}
