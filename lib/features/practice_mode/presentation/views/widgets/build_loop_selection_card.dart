import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:musinote/core/utils/app_text_styles.dart';
import 'package:musinote/features/practice_mode/presentation/views/widgets/build_card.dart';

Widget buildLoopSelectionCard() {
  return buildCard(child: Column(
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset('assets/icons/loop.svg'),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Loop Selection', style: AppTextStyles.regular16.copyWith(color: Colors.white),),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Repeat Selected Part', style: AppTextStyles.regular12.copyWith(color: Color(0xffded6e7)),),
                    SvgPicture.asset('assets/icons/radio.svg'),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      const SizedBox(height: 8),
    ],
  ),);
}
