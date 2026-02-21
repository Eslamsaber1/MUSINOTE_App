import 'package:flutter/material.dart';

class PlayerHeader extends StatelessWidget {
  final String playlistName;
  const PlayerHeader({super.key, required this.playlistName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white, size: 30),
            onPressed: () => Navigator.pop(context),
          ),
          Column(
            children: [
              const Text('Playing From Playlist', style: TextStyle(color: Colors.white54, fontSize: 10)),
              Text(playlistName, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            ],
          ),
          IconButton(icon: const Icon(Icons.more_vert, color: Colors.white), onPressed: () {}),
        ],
      ),
    );
  }
}