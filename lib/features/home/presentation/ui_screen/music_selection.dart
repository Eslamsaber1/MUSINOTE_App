import 'package:flutter/material.dart';
import 'package:musinote/features/home/presentation/ui_screen/home_screen.dart';

class MusicSelectionScreen extends StatefulWidget {
  const MusicSelectionScreen({super.key});

  static const String routeName = '/music_selection_screen';
  @override
  State<MusicSelectionScreen> createState() => _MusicSelectionScreenState();
}

class _MusicSelectionScreenState extends State<MusicSelectionScreen> {
  final List<Map<String, dynamic>> genres = [
    {'name': 'Pop', 'icon': Icons.music_note},
    {'name': 'Rock', 'icon': Icons.music_video},
    {'name': 'Hip Hop', 'icon': Icons.mic},
    {'name': 'Jazz', 'icon': Icons.piano},
    {'name': 'K-Pop', 'icon': Icons.headphones},
    {'name': 'Metal', 'icon': Icons.toys},
    {'name': 'Disco', 'icon': Icons.album},
    {'name': 'Classical', 'icon': Icons.auto_awesome},
  ];

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(color: Color(0xFF3B2667)),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.05,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 20,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 20,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, HomeScreen.routeName);
                      },
                    ),
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color(0xFF6A1B9A),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.music_note,
                  color: Colors.white,
                  size: screenWidth * 0.12,
                ),
              ),

              SizedBox(height: screenHeight * 0.02),

              Text(
                'What music do you love?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'Select 3 or more genres to personalize your experience',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: screenWidth * 0.03,
                ),
              ),

              SizedBox(height: screenHeight * 0.03),

              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: screenWidth * 0.05,
                    mainAxisSpacing: screenHeight * 0.02,
                    childAspectRatio: 1.1,
                  ),
                  itemCount: genres.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            genres[index]['icon'],
                            color: Colors.white,
                            size: screenWidth * 0.08,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            genres[index]['name'],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth * 0.035,
                            ),
                          ),
                        ],
                      ),
                    );
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
