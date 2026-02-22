import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musinote/core/utils/app_colors.dart';
import 'package:musinote/core/utils/app_text_styles.dart';

Widget buildAboutSection() {
  return Container(
    padding: const EdgeInsets.all(14),
    decoration: BoxDecoration(
      color: AppColors.gray.withOpacity(0.8),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Tags row
        Row(
          children: [
            SvgPicture.asset('assets/icons/date.svg', height: 16, width: 16,),
            const SizedBox(width: 5),
            const Text(
              '37 Years Old',
              style: AppTextStyles.regular12,
            ),
            const SizedBox(width: 24),
            SvgPicture.asset('assets/icons/location.svg', height: 16, width: 16,),
            const SizedBox(width: 5),
            const Text('United Kingdom', style: AppTextStyles.regular12, ),
          ],
        ),
        const SizedBox(height: 10),
        const Text(
          'About',
          style: AppTextStyles.bold14,
        ),
        const SizedBox(height: 6),
        Text(
          'Adele is a British singer-songwriter known for her soulful voice and emotional ballads. Rising to fame with 19 and 21, she has earned global acclaim and multiple Grammy Awards for hits like Hello and Someone Like You.',
          style: AppTextStyles.regular14.copyWith(letterSpacing: 0, height: 1.2),
        ),
      ],
    ),
  );
}