import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_colors.dart';
import 'package:musinote/core/utils/app_text_styles.dart';
import 'package:musinote/core/widgets/play_back_controlls.dart';
import 'package:musinote/features/practice_mode/presentation/views/practice_mode_view.dart';
import 'package:musinote/features/song_notes/presentation/views/song_notes_view.dart';
import 'package:musinote/core/widgets/note_section_app_bar.dart';
import '../components/album_art.dart';
import '../components/song_details.dart';
import '../components/music_progress_bar.dart';
import '../components/player_bottom_actions.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({super.key});

  static const String routeName = '/player_screen';
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: NoteSectionAppBar(),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: const BoxDecoration(
          gradient: AppColors.backgroundGradient1,
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.05,
                    ),
                    child: Column(
                      children: [
                        Text('Daily Mix 1', style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        SizedBox(height: screenHeight * 0.03),
                        SizedBox(
                          height: screenHeight * 0.35,
                          child: const AlbumArt(
                            imagePath: 'assets/images/Adele 2.png',
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.04),
                        const SongDetails(
                          artist: 'Adele',
                          title: 'Set Fire to the Rain',
                          album: '21',
                          genre: 'Piano',
                        ),
                        SizedBox(height: screenHeight * 0.03),
                        const MusicProgressBar(),
                        SizedBox(height: screenHeight * 0.02),
                        const PlaybackControls(),
                        SizedBox(height: screenHeight * 0.02),

                        Column(
                          children: [
                            GestureDetector(
                              onTap: ()=> Navigator.pushNamed(context, SongNotesView.routeName),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.music_note,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 10),
                                  Text('Notes', style: AppTextStyles.extraBold18),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5),
                            GestureDetector(
                              onTap: ()=> Navigator.pushNamed(context, PracticeModeView.routeName),
                              child: Text(
                                'Practice Mode',
                                style: AppTextStyles.extraBold18,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),

              const PlayerBottomActions(),
              SizedBox(height: screenHeight * 0.01),
            ],
          ),
        ),
      ),
    );
  }
}
