import 'package:flutter/material.dart';
import 'package:musinote/features/logout/presentation/views/logout_view.dart';
import 'package:musinote/features/stats/presentation/ui_screen/StatsScreen.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Evening',
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
            Text(
              'Music',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Row(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, LogoutView.routeName);
              },
              child: const Icon(
                Icons.settings_outlined,
                color: Colors.white70,
                size: 28,
              ),
            ),
            const SizedBox(width: 15),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, StatsScreen.routeName);
              },
              child: CircleAvatar(
                radius: 22,
                backgroundColor: Colors.white24,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: screenWidth * 0.06,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
