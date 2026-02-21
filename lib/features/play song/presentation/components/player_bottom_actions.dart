import 'package:flutter/material.dart';

class PlayerBottomActions extends StatelessWidget {
  const PlayerBottomActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.playlist_play, color: Colors.white70),
              SizedBox(width: 10),
              Text('Queue', style: TextStyle(color: Colors.white70)),
            ],
          ),
          Row(
            children: [
              Icon(Icons.speaker_group_outlined, color: Colors.greenAccent, size: 18),
              SizedBox(width: 5),
              Text('Now Playing on iPhone', style: TextStyle(color: Colors.greenAccent, fontSize: 10)),
            ],
          )
        ],
      ),
    );
  }
}