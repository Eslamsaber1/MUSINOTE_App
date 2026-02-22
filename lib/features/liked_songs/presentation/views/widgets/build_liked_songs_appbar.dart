import 'package:flutter/material.dart';

import '../../../../logout/presentation/views/logout_view.dart';

AppBar buildLikedSongsAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    actionsIconTheme: const IconThemeData(color: Colors.white, size: 24),
    leading: IconButton(
      icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 24),
      onPressed: () => Navigator.pop(context),
    ),
    actions: [
      IconButton(
        icon: Icon(Icons.settings_outlined, color: Colors.black, size: 24),
        onPressed: () {
          Navigator.pushNamed(context, LogoutView.routeName);
        },
      ),
    ],
  );
}
