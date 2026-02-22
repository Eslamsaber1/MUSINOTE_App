import 'package:flutter/material.dart';
import 'package:musinote/features/home/presentation/components/custom_bottom_nav.dart';
import '../components/stats_header.dart';
import '../components/stat_card.dart';
import '../components/listening_line_chart.dart';
import '../components/genre_distribution_card.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  static const String routeName = '/stats_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNav(currentIndex: 3, onTap: (i) {}),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF999999), 
              Color(0xFF3C1D5C),
              Color(0xFF7C6497), 
              Color(0xFF602F94),
              Color(0xFF000000),
            ],
            stops: [0.0, 0.28, 0.52, 0.67, 0.74],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const StatsHeader(),
                const SizedBox(height: 25),

                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 1.6,
                  children: const [
                    StatCard(
                      title: 'Listening Time',
                      value: '27.5h',
                      subValue: 'This Week',
                      icon: Icons.access_time_filled,
                      color: Color(0xFF39FF14),
                    ),
                    StatCard(
                      title: 'Songs Played',
                      value: '344',
                      subValue: '+ 23% From last Week',
                      icon: Icons.music_note,
                      color: Color(0xFF6A5AE0),
                    ),
                    StatCard(
                      title: 'Unique Artists',
                      value: '89',
                      subValue: 'Discovered 16 New',
                      icon: Icons.headphones,
                      color: Color(0xFFFF1493),
                    ),
                    StatCard(
                      title: 'Liked Songs',
                      value: '156',
                      subValue: '+ 24 this week',
                      icon: Icons.favorite,
                      color: Color(0xFF8B0000),
                    ),
                  ],
                ),

                const SizedBox(height: 25),
                const ListeningLineChart(),
                const SizedBox(height: 25),
                const GenreDistributionCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
