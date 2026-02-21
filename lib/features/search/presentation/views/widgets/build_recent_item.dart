import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musinote/core/utils/app_colors.dart';
import 'package:musinote/core/utils/app_text_styles.dart';

Widget buildRecentItem(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
    child: Container(
      height: 46,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: AppColors.gray.withOpacity(0.8),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/history.svg', height: 24, width: 24),
          const SizedBox(width: 22),
          Text(
            title,
            style: AppTextStyles.medium16,
          ),
        ],
      ),
    ),
  );
}
