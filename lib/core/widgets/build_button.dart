import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musinote/core/utils/app_text_styles.dart';

Widget buildButton(
    BuildContext context, {
      String? iconPath,
      required String label,
      Gradient? gradient,
      Color? color,
      VoidCallback? onPressed,
    }) {
  return InkWell(
    onTap: onPressed,
    child: Container(
      height: MediaQuery.of(context).size.height * 0.035,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        gradient: gradient,
        color: gradient == null ? color : null,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconPath != null ?SvgPicture.asset(iconPath, height: 20, width: 20) : const SizedBox(),
          const SizedBox(width: 8),
          Text(
            label,
            style: AppTextStyles.medium14.copyWith(
              color: color == Colors.white ? Colors.black : Colors.white,
            ),
          ),
          SizedBox(width: iconPath == null ? 8 : 0),
        ],
      ),
    ),
  );
}