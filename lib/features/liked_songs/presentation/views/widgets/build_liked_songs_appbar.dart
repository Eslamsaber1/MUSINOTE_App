import 'package:flutter/material.dart';

AppBar buildLikedSongsAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    actionsIconTheme: const IconThemeData(color: Colors.white, size: 24),
    leading: IconButton(
      icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 24),
      onPressed: () {
        // Handle back action
      },
    ),
    actions: [
      IconButton(
        icon: Icon(Icons.settings_outlined, color: Colors.black, size: 24),
        onPressed: () {
          // Handle more options action
        },
      ),
    ],
  );
}
