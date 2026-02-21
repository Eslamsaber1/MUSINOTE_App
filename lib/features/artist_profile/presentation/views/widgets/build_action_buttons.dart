import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musinote/core/utils/app_colors.dart';
import 'package:musinote/core/utils/app_text_styles.dart';

Widget buildActionButtons(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 38.0),
    child: Row(
      children: [
        // Follow button (filled purple-red)
        Expanded(
          child: _buildButton(
            context,
            iconPath: 'assets/icons/follow.svg',
            label: 'Follow',
            gradient: AppColors.followButtonGradient,
          ),
        ),
        const SizedBox(width: 48),

        // Shuffle Play button (outlined)
        Expanded(
          child: _buildButton(
            context,
            iconPath: 'assets/icons/Shuffle2.svg',
            label: 'Shuffle Play',
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}

Container _buildButton(
  BuildContext context, {
  required String iconPath,
  required String label,
  Gradient? gradient,
  Color? color,
}) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.035,
    decoration: BoxDecoration(
      gradient: gradient,
      color: gradient == null ? color : null,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(iconPath, height: 20, width: 20),
        const SizedBox(width: 8),
        Text(
          label,
          style: AppTextStyles.medium14.copyWith(
            color: color == Colors.white ? Colors.black : Colors.white,
          ),
        ),
      ],
    ),
  );
}
