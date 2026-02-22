import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_text_styles.dart';

Widget buildInstrumentCard(InstrumentItem item) {
  return Container(
    height: 100,
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage(item.imagePath),
          fit: BoxFit.fitWidth,
          opacity: 0.45
      ),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Stack(
      children: [
        // Content
        Row(
          children: [
            // Left: text info
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 32.0, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: AppTextStyles.regular16.copyWith(color: Colors.white),
                    ),
                    Text(
                      item.type,
                      style: AppTextStyles.regular16.copyWith(color: Colors.white),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '${item.lessons} Lessons',
                      style: AppTextStyles.regular16.copyWith(color: Colors.white.withAlpha(200)),
                    ),
                  ],
                ),
              ),
            ),
            // Right: level badge + button
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // Level badge
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, right: 8),
                  child: Text(
                    item.level,
                    style: AppTextStyles.medium12.copyWith(color: Color(0xff00FF66)),
                  ),
                ),
                const SizedBox(height: 22),
                // Start Now button
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 8),
                  decoration: BoxDecoration(
                    color: Color(0xffd8cfe9),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(24), bottomLeft: Radius.circular(24),
                    ),
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.check, size: 14),
                      SizedBox(width: 8),
                      Text(
                        'Start Now',
                        style: AppTextStyles.medium12,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
class InstrumentItem {
  final String name;
  final String type;
  final int lessons;
  final String level;
  final String imagePath;

  InstrumentItem({
    required this.name,
    required this.type,
    required this.lessons,
    required this.level,
    required this.imagePath,
  });
}
