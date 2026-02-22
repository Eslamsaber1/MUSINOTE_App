import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_colors.dart';
import 'package:musinote/core/widgets/build_button.dart';
import 'package:musinote/features/library/presentation/views/library_view.dart';
import 'package:musinote/features/search/presentation/views/search_view.dart';

Widget buildActionButtons(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Row(
      children: [
        // Follow button (filled purple-red)
        Expanded(
          child: buildButton(
            context,
            iconPath: 'assets/icons/follow.svg',
            label: 'Follow',
            gradient: AppColors.followButtonGradient,
            onPressed: () {
              Navigator.pushNamed(context, SearchView.routeName);
            },
          ),
        ),
        const SizedBox(width: 48),

        // Shuffle Play button (outlined)
        Expanded(
          child: buildButton(
            context,
            iconPath: 'assets/icons/Shuffle2.svg',
            label: 'Shuffle Play',
            color: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, LibraryView.routeName);
            },
          ),
        ),
      ],
    ),
  );
}
