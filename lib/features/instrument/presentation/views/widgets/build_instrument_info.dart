import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musinote/core/utils/app_colors.dart';
import 'package:musinote/core/utils/app_text_styles.dart';

Widget buildInstrumentInfo() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // Album art
      Container(
        width: 195,
        height: 161,
        decoration: BoxDecoration(
          gradient: AppColors.instrumentGradient,
          borderRadius: BorderRadius.circular(15),
        ),
        child: SvgPicture.asset(
          'assets/icons/music.svg',
          fit: BoxFit.scaleDown,
        ),
      ),
      const SizedBox(width: 6),
      // Info
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Text('Choose Your Instrument', style: AppTextStyles.regular25),
            const SizedBox(height: 8),
            const Text(
              'Start your musical journey Today',
              style: AppTextStyles.regular16,
            ),
          ],
        ),
      ),
    ],
  );
}
