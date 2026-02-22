import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PlaybackControls extends StatelessWidget {
  const PlaybackControls({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset('assets/icons/Shuffle.svg', width: 44, height: 44),
          SvgPicture.asset('assets/icons/skip_previous.svg', width: 44, height: 44,),
          SvgPicture.asset('assets/icons/Pause circle.svg', width: 44, height: 44,),
          SvgPicture.asset('assets/icons/skip_next.svg', width: 44, height: 44),
          SvgPicture.asset('assets/icons/Heart.svg', width: 44, height: 44),
        ],
      ),
    );
  }
}
