import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_text_styles.dart';

Widget buildHeaderCard() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Image.asset(
            'assets/images/equalizer.png',
            fit: BoxFit.cover,
          ),
        ),

        SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Audio Controls',
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.regular25.copyWith(color: Colors.white),
              ),
              SizedBox(height: 8),
              Text(
                'Fix and tune your sound experience',
                style: AppTextStyles.regular16.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
