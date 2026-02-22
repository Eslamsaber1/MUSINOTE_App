import 'package:flutter/material.dart';
import 'package:musinote/features/audio_controls/presentation/views/audio_controls_view.dart';
import 'package:musinote/features/instrument/presentation/views/instrument_view.dart';
import 'package:musinote/features/library/presentation/views/library_view.dart';
import 'package:musinote/features/liked_songs/presentation/views/liked_songs_view.dart';
import 'package:musinote/features/logout/presentation/views/logout_view.dart';
import 'package:musinote/features/practice_mode/presentation/views/practice_mode_view.dart';
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
    case LibraryView.routeName:
      return MaterialPageRoute(builder: (_) => const LibraryView());
     case LikedSongsView.routeName:
      return MaterialPageRoute(builder: (_) => const LikedSongsView());
    case LogoutView.routeName:
      return MaterialPageRoute(builder: (_) => const LogoutView());
    case InstrumentView.routeName:
      return MaterialPageRoute(builder: (_) => const InstrumentView());
    case PracticeModeView.routeName:
      return MaterialPageRoute(builder: (_) => const PracticeModeView());
    case AudioControlsView.routeName:
      return MaterialPageRoute(builder: (_) => const AudioControlsView());

    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(child: Text('No route defined for ${settings.name}')),
        ),
      );
  }
}
