import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musinote/core/utils/app_colors.dart';
import 'package:musinote/core/utils/app_text_styles.dart';

Widget buildSearchInstrumentTextField() {
  return Container(
    height: 40,
    decoration: BoxDecoration(
      color: AppColors.lightWhite,
      borderRadius: BorderRadius.circular(22),
      border: Border.all(color: Colors.white24, width: 1),
    ),
    child: TextField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: 'Search Instrument',
        hintStyle: AppTextStyles.regular16,
        suffixIcon: SvgPicture.asset('assets/icons/search.svg'),
        border: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 9,
          horizontal: 16,
        ),
      ),
    ),
  );
}
