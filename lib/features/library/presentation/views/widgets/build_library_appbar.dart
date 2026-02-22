import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musinote/core/utils/app_text_styles.dart';
import 'package:musinote/core/widgets/custom_profile_container.dart';

AppBar buildLibraryAppBar() {
  return AppBar(
    title: Row(
      children: [
        ProfileContainer(),
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