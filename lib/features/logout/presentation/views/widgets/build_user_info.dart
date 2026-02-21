import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musinote/core/utils/app_colors.dart';
import 'package:musinote/core/utils/app_text_styles.dart';

Widget buildUserInfo() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    decoration: BoxDecoration(
      color: const Color(0xFFE9DDDD),
      borderRadius: BorderRadius.circular(50),
    ),
    child: Row(
      children: [
        Container(
          width: 58,
          height: 58,
          decoration: const BoxDecoration(
            gradient: AppColors.avatarGradient,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset('assets/icons/person.svg', fit: BoxFit.scaleDown),
        ),
        const SizedBox(width: 12),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: AppTextStyles.regular16,
            ),
            Text(
              'User@musinote.com',
              style: AppTextStyles.regular14,
            ),
          ],
        ),
      ],
    ),
  );
}
