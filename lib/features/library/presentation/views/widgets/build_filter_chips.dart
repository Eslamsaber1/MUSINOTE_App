import 'package:flutter/cupertino.dart';
import 'package:musinote/core/utils/app_colors.dart';
import 'package:musinote/core/widgets/build_button.dart';

Widget buildFilterChips(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      buildButton(context, label: 'Playlists', gradient: AppColors.followButtonGradient),
      buildButton(context, label: 'Albums', gradient: AppColors.followButtonGradient),
      buildButton(context, label: 'Artists', gradient: AppColors.followButtonGradient),
    ],
  );
}
