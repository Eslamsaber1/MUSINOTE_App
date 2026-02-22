import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_text_styles.dart';

class CategoryTags extends StatelessWidget {
  const CategoryTags({super.key,});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: musicCard(title: 'Chill Vibes', color: Color(0x4D000000))),
            SizedBox(width: 40,),
            Expanded(child: musicCard(title: 'Classic', color: Color(0x4D000000))),
          ],
        ),
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: musicCard(title: 'Jazz', gradient: LinearGradient(colors: [Color(0xff40397A), Color(0xff602F94)]))),
            SizedBox(width: 40,),
            Expanded(child: musicCard(title: 'Metal', gradient: LinearGradient(colors: [Color(0xff8573A7), Color(0xff735E8A)]))),
          ],
        ),
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: musicCard(title: 'Rock', color: Color(0xff8573A7))),
            SizedBox(width: 40,),
            Expanded(child: musicCard(title: 'Peaceful Piano', color: Color(0x8F3421C7))),
          ],
        ),
      ]
    );
  }

  Widget musicCard({Color? color, required String title,  Gradient? gradient,}){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        gradient: gradient,
        borderRadius: BorderRadius.circular(52),
      ),
      child: Text(title, style: AppTextStyles.semiBold14.copyWith(color: Colors.white)),
    );
  }
}