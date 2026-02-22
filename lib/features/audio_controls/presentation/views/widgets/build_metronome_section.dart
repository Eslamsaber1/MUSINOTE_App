import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musinote/core/utils/app_text_styles.dart';

Widget buildMetronomeSection() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 37.0),
    child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset('assets/icons/mertronome.svg'),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Metronome',
                    style: AppTextStyles.regular16.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '120  BPM',
                    style: AppTextStyles.light16.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
      ],
    ),
  );
}
