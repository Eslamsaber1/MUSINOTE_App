import 'package:flutter/material.dart';

class PlayerControls extends StatelessWidget {
  const PlayerControls({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(icon: const Icon(Icons.shuffle, color: Colors.white70), onPressed: () {}),
        IconButton(icon: const Icon(Icons.skip_previous_rounded, color: Colors.white, size: 45), onPressed: () {}),
        Container(
          decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: IconButton(
            icon: const Icon(Icons.pause_rounded, color: Colors.black, size: 35),
            onPressed: () {},
          ),
        ),
        IconButton(icon: const Icon(Icons.skip_next_rounded, color: Colors.white, size: 45), onPressed: () {}),
        IconButton(icon: const Icon(Icons.favorite_border, color: Colors.white70), onPressed: () {}),
      ],
    );
  }
}