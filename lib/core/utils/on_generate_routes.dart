import 'package:flutter/material.dart';

import '../../features/artist_profile/presentation/views/artist_profile_view.dart';
import '../../features/song_notes/presentation/views/song_notes_view.dart' show SongNotesView;

Route onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SongNotesView.routeName:
      return MaterialPageRoute(builder: (_) => const SongNotesView());
    case ArtistProfileView.routeName:
      return MaterialPageRoute(builder: (_) => const ArtistProfileView());
    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(child: Text('No route defined for ${settings.name}')),
        ),
      );
  }
}
