import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_text_styles.dart';

AppBar buildSearchAppBar(BuildContext context) {
  return AppBar(
    title: Transform.translate(
      offset: Offset(-16, 0),
      child: Text(
        'Search',
        style: AppTextStyles.medium16.copyWith(color: Colors.white),
      ),
    ),
    leading: IconButton(
      icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 18),
      onPressed: () => Navigator.pop(context),
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
  );
}
