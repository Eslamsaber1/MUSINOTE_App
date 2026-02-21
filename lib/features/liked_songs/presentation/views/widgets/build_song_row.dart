import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_text_styles.dart';

Widget buildSongRow(SongItem song) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: Row(
      children: [
        // Number
        SizedBox(
          width: 28,
          child: Text(
            song.number,
            style: AppTextStyles.regular14.copyWith(color: Colors.white),
          ),
        ),

        // Thumbnail
        Container(
          width: 40,
          height: 40,
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            image: song.imagePath != null
                ? DecorationImage(
              image: AssetImage(song.imagePath!),
              fit: BoxFit.cover,
              opacity: 0.8,
            )
                : null,
          ),
        ),

        // Title
        Expanded(
          flex: 3,
          child: Text(
            song.title,
            style: AppTextStyles.regular14.copyWith(color: Colors.white),
          ),
        ),

        // Artist
        Expanded(
          flex: 2,
          child: Text(
            song.artist,
            style: AppTextStyles.regular14.copyWith(color: Colors.white),
            overflow: TextOverflow.ellipsis,
          ),
        ),

        // Date
        Text(
          song.date,
          style: AppTextStyles.regular14.copyWith(color: Colors.white),
        ),
      ],
    ),
  );
}
class SongItem {
  final String number;
  final String title;
  final String? imagePath;
  final String artist;
  final String date;

  SongItem({
    required this.number,
    required this.title,
    this.imagePath,
    required this.artist,
    required this.date,
  });
}
