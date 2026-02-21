import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musinote/core/utils/app_text_styles.dart';

AppBar buildLibraryAppBar() {
  return AppBar(
    title: Row(
      children: [
        Container(
          width: 38,
          height: 38,
          decoration: BoxDecoration(
            color: Color(0xffEADDFF),
            shape: BoxShape.circle,
          ),
          child:SvgPicture.asset('assets/icons/Avatar Placeholder.svg',width: 24, height: 24, fit: BoxFit.scaleDown),
        ),
        const SizedBox(width: 10),
        Text(
          'Your Library',
          style: AppTextStyles.semiBold24.copyWith(color: Colors.white),
        ),
      ],
    ),
    backgroundColor: Colors.transparent,
    leadingWidth: 0,
    automaticallyImplyLeading: false,
    actionsIconTheme: const IconThemeData(color: Colors.white, size: 24),
    actions: [
      IconButton(
        icon: SvgPicture.asset('assets/icons/Search2.svg',),
        onPressed: () {
          // Handle more options action
        },
      ),
      IconButton(
        icon: const Icon(Icons.add),
        onPressed: () {
          // Handle more options action
        },
      ),
      SizedBox(width:  8,)
    ],
  );
}
