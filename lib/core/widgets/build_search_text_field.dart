import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_text_styles.dart';

Widget buildSearchTextField() {
  return Container(
    height: 40,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
    ),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Search songs, artists, albums...',
        hintStyle: AppTextStyles.regular14.copyWith(color: Colors.grey),
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.grey,
          size: 28,
        ),
        border: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 11,
        ),
      ),
    ),
  );
}
