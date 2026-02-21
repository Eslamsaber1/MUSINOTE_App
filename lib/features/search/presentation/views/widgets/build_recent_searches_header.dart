import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_text_styles.dart';

Widget buildRecentSearchesHeader() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Recent Searches',
        style: AppTextStyles.medium16.copyWith(color: Colors.white),
      ),
      Text(
        'Clear All',
        style: AppTextStyles.medium16.copyWith(color: Colors.white.withAlpha(171)),
      ),
    ],
  );
}
