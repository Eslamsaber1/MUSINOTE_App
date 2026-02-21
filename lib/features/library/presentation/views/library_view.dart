import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_colors.dart';
import 'package:musinote/core/widgets/build_search_text_field.dart';
import 'package:musinote/core/widgets/gradient_scaffold.dart';
import 'widgets/build_filter_chips.dart';
import 'widgets/build_library_appbar.dart';
import 'widgets/build_playlists_item.dart';

class LibraryView extends StatelessWidget {
  const LibraryView({super.key});

  static const String routeName = '/library';
  @override
  Widget build(BuildContext context) {
    final List<PlaylistItem> _playlists = [
      PlaylistItem(
        title: 'Liked Songs',
        subtitle: 'Playlist - 127 Songs',
        gradientColors: [Color(0xFFFFFFFF),Color(0xFF4C2575), Color(0xFFFF004D)],
      ),
      PlaylistItem(
        title: 'Chill Piano',
        subtitle: 'Playlist - 97 Songs',
        gradientColors: [Color(0xFFDB2B7A),Color(0xFFA8215E), Color(0xFF751741)],
      ),
      PlaylistItem(
        title: 'Guitar Music',
        subtitle: 'Playlist - 59 Songs',
        gradientColors: [Color(0xFFD9D9D9), Color(0xFF625C5C), Color(0xFF737373)],
      ),
      PlaylistItem(
        title: 'Rock Classics',
        subtitle: 'Playlist - 43 Songs',
        gradientColors: [Color(0xFF5A1353), Color(0xFFFD14BB)],
      ),
      PlaylistItem(
        title: 'Jazz Ways',
        subtitle: 'Playlist - 84 Songs',
        gradientColors: [Color(0xFF1844D5), Color(0xFF0B0A40)],
      ),
      PlaylistItem(
        title: 'Electronic Beats',
        subtitle: 'Playlist - 76 Songs',
        gradientColors: [Color(0xFF00F2E6), Color(0xFF0D3B58)],
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: buildLibraryAppBar(),
      body: GradientScaffold(
        gradient: AppColors.backgroundGradient2,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const SizedBox(height: kToolbarHeight + 50),
              buildSearchTextField(),
              const SizedBox(height: 25),
              buildFilterChips(context),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.separated(
                  padding:EdgeInsets.zero,
                  itemCount: _playlists.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 15),
                  itemBuilder: (context, index) {
                    return buildPlaylistItem(_playlists[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
