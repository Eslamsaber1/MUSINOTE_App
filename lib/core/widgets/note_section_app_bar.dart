import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_text_styles.dart';

class NoteSectionAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NoteSectionAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
          'Playing From Playlist',
          style: AppTextStyles.regular12.copyWith(color:Colors.white)
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 16),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.more_horiz, color: Colors.black, size: 24),
          onPressed: () {
            // Handle more options action
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight * 0.5);
}
