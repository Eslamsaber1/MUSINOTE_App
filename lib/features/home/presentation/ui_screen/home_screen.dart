import 'package:flutter/material.dart';
import '../components/home_header.dart';
import '../components/category_tags.dart';
import '../components/featured_music_card.dart';
import '../components/song_card.dart';
import '../components/mini_player.dart';
import '../components/custom_bottom_nav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      bottomNavigationBar: CustomBottomNav(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF1B0D29),
              Color(0xFF8D8694), 
              Color(0xFF493959), 
              Color(
                0xFFFFFFFF,
              ),
            ],
            stops: [0.0, 0.33, 0.63, 0.94],
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),

                    const HomeHeader(),

                    const SizedBox(height: 25),

                    const CategoryTags(
                      tags: [
                        'Chill Vibes',
                        'Classic',
                        'Jazz',
                        'Metal',
                        'Rock',
                        'Peaceful Piano',
                      ],
                    ),

                    const SizedBox(height: 30),

                    const Text(
                      'Featured Music',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),

                    const FeaturedMusicCard(),

                    const SizedBox(height: 30),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Recently Played',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'See all',
                          style: TextStyle(color: Colors.white54, fontSize: 14),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),

                    SizedBox(
                      height: screenHeight * 0.28,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          SongCard(
                            title: 'Ryos',
                            imageUrl: 'images/Rectangle 15.png',
                          ),
                          SongCard(
                            title: 'El Neyya',
                            imageUrl: 'images/Rectangle 11.png',
                          ),
                          SongCard(
                            title: 'Lovesong',
                            imageUrl: 'images/Rectangle 17.png',
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 120),
                  ],
                ),
              ),

              const Positioned(
                bottom: 10,
                left: 10,
                right: 10,
                child: MiniPlayer(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
