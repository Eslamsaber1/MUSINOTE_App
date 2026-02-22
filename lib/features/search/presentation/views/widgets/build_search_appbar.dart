import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_text_styles.dart';

AppBar buildSearchAppBar(BuildContext context) {
  return AppBar(
    title: Transform.translate(
      offset: Offset(-16, 0),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Text(
          'Search',
          style: AppTextStyles.medium16.copyWith(color: Colors.white),
        ),
      ),
    ),
    automaticallyImplyLeading: false,
    backgroundColor: Colors.transparent,
    elevation: 0,
  );
}
