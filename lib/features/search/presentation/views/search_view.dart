import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_colors.dart';
import 'package:musinote/core/widgets/gradient_scaffold.dart';
import 'package:musinote/features/search/presentation/views/widgets/build_playlist_card.dart';
import 'package:musinote/features/search/presentation/views/widgets/build_recent_item.dart';
import 'package:musinote/features/search/presentation/views/widgets/build_recent_searches_header.dart';
import 'package:musinote/features/search/presentation/views/widgets/build_search_appbar.dart';
import 'package:musinote/core/widgets/build_search_text_field.dart';
import '../../../../core/utils/app_text_styles.dart';
import 'widgets/build_playlists_list.dart';
import 'widgets/build_search_instrument_text_field.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  static const String routeName = '/search';

  @override
  Widget build(BuildContext context) {
    final recentSearches = [
      'Ryos',
      'El Neyya',
      'Lovesong',
      'Loha bahta',
      'Maba2ash Ser',
    ];

    final playlists = [
      PlaylistItem(
        title: 'Electronic Beats Trending Playlist',
        imagePath: 'assets/images/Electrobeats.png',
      ),
      PlaylistItem(
        title: 'Festival Hits 2025 Popular Now',
        imagePath: 'assets/images/Festival.png',
      ),
      PlaylistItem(
        title: 'Jazz Essentials Curated Collection',
        imagePath: 'assets/images/Jazz.png',

      ),
      PlaylistItem(
        title: 'Rock Classics Timeless Anthems',
        imagePath: 'assets/images/rock-image.png',

      ),
    ];

    return Scaffold(
      appBar: buildSearchAppBar(context),
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,
      // To prevent the body from resizing when the keyboard appears (if you have a search input field in the future
      body: GradientScaffold(
        gradient: AppColors.backgroundGradient1,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: kToolbarHeight + 30), // To account for the AppBar height and some spacing
                  // Search bar
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: buildSearchTextField(),
                  ),
                  const SizedBox(height: 21),
                  // Recent Searches header
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: buildRecentSearchesHeader(),
                  ),
                  const SizedBox(height: 9),
                  // Recent search items
                  ...recentSearches.map((item) => buildRecentItem(item)),
                  const SizedBox(height: 10),
                  // Or Search by Instrument
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26),
                    child: Text(
                      'Or Search by Instrument',
                      style: AppTextStyles.medium16.copyWith(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 4),
                  // Instrument search bar
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: buildSearchInstrumentTextField(),
                  ),
                  const SizedBox(height: 16),
                  // Playlist grid
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: buildPlaylistsList(playlists),
                    ),
                  const SizedBox(height: 8),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

