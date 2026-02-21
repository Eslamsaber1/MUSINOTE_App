import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QueueButton extends StatelessWidget {
  const QueueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            SvgPicture.asset('assets/icons/Group.svg'),
            SizedBox(width: 14),
            Text('Queue', style: AppTextStyles.regular18.copyWith(color:Colors.black)),
            Spacer(),
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: Color(0xff30EE12),
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(width: 3),
            Text(
              'Now Playing on Iphone',
              style: AppTextStyles.regular12.copyWith(color:Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
