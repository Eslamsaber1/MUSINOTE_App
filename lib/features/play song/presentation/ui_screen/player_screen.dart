import 'package:flutter/material.dart';
import '../components/player_header.dart';
import '../components/album_art.dart';
import '../components/song_details.dart';
import '../components/music_progress_bar.dart';
import '../components/player_controls.dart';
import '../components/player_bottom_actions.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFBF7FF),
              Color(0xFFA48EBA),
              Color(0xFF3155A4),
              Color(0xFF4C2576),
              Color(0xFF3C1D5C),
              Color(0xFF1B0D29),
            ],
            stops: [0.10, 0.30, 0.41, 0.60, 0.63, 0.89],
          ),
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
                        const PlayerHeader(playlistName: 'Daily Mix 1'),
                        SizedBox(height: screenHeight * 0.03),
                        SizedBox(
                          height: screenHeight * 0.35,
                          child: const AlbumArt(
                            imagePath: 'images/Adele 2.png',
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
                        const PlayerControls(),
                        SizedBox(height: screenHeight * 0.02),

                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.music_note,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  'Notes',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: screenWidth * 0.045,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'Practice Mode',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.w600,
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
