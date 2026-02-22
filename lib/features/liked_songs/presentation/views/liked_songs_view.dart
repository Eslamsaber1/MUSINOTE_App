import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_colors.dart';
import 'package:musinote/core/widgets/gradient_scaffold.dart';
import 'package:musinote/features/liked_songs/presentation/views/widgets/build_liked_songs_appbar.dart';
import 'package:musinote/features/liked_songs/presentation/views/widgets/build_playlist_info.dart';
import 'package:musinote/features/liked_songs/presentation/views/widgets/build_song_row.dart';

class LikedSongsView extends StatelessWidget {
  const LikedSongsView({super.key});

  static const String routeName = '/liked-songs';

  @override
  Widget build(BuildContext context) {
    final songs = [
      SongItem(
        number: '#',
        title: 'Title',
        artist: 'Artist',
        date: 'Date Added',
      ),
      SongItem(
        number: '1',
        imagePath: 'assets/images/El neyya.png',
        title: 'El-Neyya',
        artist: 'Lege-Cy',
        date: 'Feb 2025',
      ),
      SongItem(
        number: '2',
        imagePath: 'assets/images/Loha Bahta.png',
        title: 'Loha Bahta',
        artist: 'Angham',
        date: 'Mar 2023',
      ),
      SongItem(
        number: '3',
        imagePath: 'assets/images/RYos.png',
        title: 'Xaverius Love',
        artist: 'Ryos',
        date: 'May 2022',
      ),
      SongItem(
        number: '4',
        imagePath: 'assets/images/adele.jpg',
        title: 'Lovesong',
        artist: 'Adele',
        date: 'Jan 2016',
      ),
      SongItem(
        number: '5',
        imagePath: 'assets/images/adele.jpg',
        title: 'Set Fire To\nthe Rain',
        artist: 'Adele',
        date: 'Jul 2020',
      ),
      SongItem(
        number: '6',
        imagePath: 'assets/images/image song.png',
        title: '3aris min\ngeha amneya',
        artist: 'Mariam',
        date: 'Dec 2002',
      ),
      SongItem(
        number: '7',
        imagePath: 'assets/images/image song2.png',
        title: 'Love story',
        artist: 'sarah cothran',
        date: 'jan 2021',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: buildLikedSongsAppBar(context),
      body: GradientScaffold(
        gradient: AppColors.backgroundGradient3,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(height: kToolbarHeight + 40),
              buildPlaylistInfo(),
              const SizedBox(height: 20),
              // Table header// Song list
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: songs.length,
                  itemBuilder: (context, index) => buildSongRow(songs[index]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
