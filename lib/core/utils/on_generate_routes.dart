import 'package:flutter/material.dart';
import 'package:musinote/features/search/presentation/views/search_view.dart';
import '../../features/artist_profile/presentation/views/artist_profile_view.dart';
import '../../features/song_notes/presentation/views/song_notes_view.dart';

Route onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SongNotesView.routeName:
      return MaterialPageRoute(builder: (_) => const SongNotesView());
    case ArtistProfileView.routeName:
      return MaterialPageRoute(builder: (_) => const ArtistProfileView());
    case SearchView.routeName:
      return MaterialPageRoute(builder: (_) => const SearchView());
    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(child: Text('No route defined for ${settings.name}')),
        ),
      );
  }
}
