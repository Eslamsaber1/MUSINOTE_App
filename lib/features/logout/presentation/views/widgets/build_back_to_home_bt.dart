import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_text_styles.dart';

Widget buildBackToHomeBt(BuildContext context) {
  return SizedBox(
    width: double.infinity,
    child: OutlinedButton.icon(
      onPressed: () => Navigator.maybePop(context),
      icon: const Icon(Icons.home_outlined, color: Colors.black, size: 30),
      label:  Padding(
        padding: const EdgeInsets.symmetric(vertical: 14.0),
        child: Text(
          'Back to Home',
          style: AppTextStyles.regular18.copyWith(color: Colors.black),
        ),
      ),
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Color(0xFFD0C0DC), width: 1.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        backgroundColor: Colors.white,
      ),
    ),
  );
}
