import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_colors.dart';
import 'package:musinote/core/utils/app_text_styles.dart';

Widget buildStatsRow() {
  return Row(
    children: [
      _statCard('Followers', '35.4M'),
      const SizedBox(width: 26),
      _statCard('Following', '2'),
      const SizedBox(width: 26),
      _statCard('Songs', '150'),
    ],
  );
}

Widget _statCard(String label, String value) {
  return Expanded(
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
      decoration: BoxDecoration(
        color: AppColors.gray.withOpacity(0.8),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: AppTextStyles.regular14,
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: AppTextStyles.bold16,
          ),
        ],
      ),
    ),
  );
}