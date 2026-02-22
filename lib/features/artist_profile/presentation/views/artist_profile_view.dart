import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_colors.dart';
import 'package:musinote/core/widgets/gradient_scaffold.dart';
import 'package:musinote/features/artist_profile/presentation/views/widgets/build_about_section.dart';
import 'package:musinote/features/artist_profile/presentation/views/widgets/build_action_buttons.dart' show buildActionButtons;
import 'package:musinote/features/artist_profile/presentation/views/widgets/build_hero_section.dart';
import 'package:musinote/features/artist_profile/presentation/views/widgets/build_popular_songs.dart';
import 'package:musinote/features/artist_profile/presentation/views/widgets/build_stats_row.dart';

class ArtistProfileView extends StatelessWidget {
  const ArtistProfileView({super.key});

  static const String routeName = '/artist-profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body:GradientScaffold(
        gradient: AppColors.backgroundGradient1,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildHeroSection(context),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 26),
                    buildActionButtons(context),
                    const SizedBox(height: 28),
                    buildStatsRow(),
                    const SizedBox(height: 26),
                    buildAboutSection(),
                    const SizedBox(height: 20),
                    buildPopularSongs(),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

