import 'package:flutter/material.dart';

class MusicProgressBar extends StatelessWidget {
  const MusicProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 4.0,
            thumbShape: const RoundSliderThumbShape(
              enabledThumbRadius: 6.0,
              pressedElevation: 8.0,
            ),
            overlayShape: const RoundSliderOverlayShape(overlayRadius: 12.0),
            activeTrackColor: Colors.black,
            inactiveTrackColor: Colors.white24,
            thumbColor: Colors.black,
            trackShape: const RectangularSliderTrackShape(),
          ),
          child: Slider(
            value: 0.4, 
            onChanged: (value) {
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '1:24',
                style: TextStyle(color: Colors.white70, fontSize: 12),
              ),
              Text(
                '3:50',
                style: TextStyle(color: Colors.white70, fontSize: 12),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
