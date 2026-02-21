import 'package:flutter/material.dart';

class StatsHeader extends StatelessWidget {
  const StatsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 25, 
          backgroundColor: Colors.white24, 
          child: Icon(Icons.person, color: Colors.white)
        ),
        const SizedBox(width: 15),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Your Stats', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
            Text('November 2025', style: TextStyle(color: Colors.white54, fontSize: 12)),
          ],
        ),
        const Spacer(),
        const Icon(Icons.settings, color: Colors.white70),
      ],
    );
  }
}