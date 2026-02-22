import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:musinote/core/utils/app_text_styles.dart';

Widget buildPlaylistItem(PlaylistItem item) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 6),
    child: Row(
      children: [
        // Thumbnail
        Container(
          width: 75,
          height: 78,
          decoration: BoxDecoration(
            gradient: SweepGradient(
              colors: item.gradientColors,
              startAngle: 1,
              endAngle: 5.28319, // 2 * pi radians
              tileMode: TileMode.mirror,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: SvgPicture.asset('assets/icons/music.svg', width: 40, height: 40, fit: BoxFit.scaleDown),
        ),
        const SizedBox(width: 14),

        // Title & subtitle
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.title,
                style:AppTextStyles.bold14.copyWith(color: Colors.white,),
              ),
              const SizedBox(height: 3),
              Text(
                item.subtitle,
                style: AppTextStyles.bold14.copyWith(color: Colors.white.withAlpha(153),),
              ),
            ],
          ),
        ),

        // Play button
        const Icon(
          Icons.play_arrow,
          color: Colors.black,
          size: 30,
        ),
      ],
    ),
  );
}

class PlaylistItem {
  final String title;
  final String subtitle;
  final List<Color> gradientColors;

  PlaylistItem({
    required this.title,
    required this.subtitle,
    required this.gradientColors,
  });
}