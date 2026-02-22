import 'package:flutter/material.dart';

class SongDetails extends StatelessWidget {
  final String artist;
  final String title;
  final String album;
  final String genre;

  const SongDetails({
    super.key,
    required this.artist,
    required this.title,
    required this.album,
    required this.genre,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(artist, style: const TextStyle( fontSize: 16)),
            Text(title, style: const TextStyle( fontSize: 24, fontWeight: FontWeight.bold)),
            Text('$album \n $genre', style: const TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}