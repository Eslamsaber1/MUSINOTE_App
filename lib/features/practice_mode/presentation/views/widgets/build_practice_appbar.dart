import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_text_styles.dart';

AppBar buildPracticeAppBar(BuildContext context) {
  return AppBar(
    title: Text(
      'Practice Mode',
      style: AppTextStyles.regular25.copyWith(color: Colors.white),
    ),
    centerTitle: true,
    backgroundColor: Colors.transparent,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 24),
      onPressed: () => Navigator.pop(context),
    ),
    actions: [
      IconButton(
        icon: const Icon(Icons.more_horiz, color: Colors.black, size: 24),
        onPressed: () {
          // Handle more options action
        },
      ),
    ],
  );
}
