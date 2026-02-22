import 'package:flutter/material.dart';

class FeaturedMusicCard extends StatelessWidget {
  const FeaturedMusicCard({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      height: height * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: const LinearGradient(
          colors: [Color(0xFF6D5E7D), Color(0xFFEBEFAB)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(25), bottomLeft: Radius.circular(25)),
            child: Image.asset(
              'assets/images/Loha Bahta 1.png',
              width: width * 0.35,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Playlist', style: TextStyle(color: Colors.black54, fontSize: 12, fontWeight: FontWeight.bold)),
                  const Text('Relaxing Arabic Music', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  const Text('Loha Bahta by Angham', style: TextStyle(fontSize: 13)),
                  const SizedBox(height: 12),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.play_arrow),
                    label: const Text('Play'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.black,
                      shape: StadiumBorder(),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}