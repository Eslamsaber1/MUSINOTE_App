import 'package:flutter/material.dart';

class GenreDistributionCard extends StatelessWidget {
  const GenreDistributionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: Colors.white.withOpacity(0.9), borderRadius: BorderRadius.circular(25)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Genre Distribution', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 15),
          _genreRow('Pop', 0.12, Colors.deepPurple),
          _genreRow('Rock', 0.28, Colors.black),
          _genreRow('Hip Hop', 0.22, Colors.pink),
          _genreRow('Electronic', 0.19, Colors.red),
          _genreRow('Jazz', 0.19, Colors.orange),
        ],
      ),
    );
  }

  Widget _genreRow(String label, double percent, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          SizedBox(width: 70, child: Text(label, style: const TextStyle(fontSize: 12))),
          Expanded(
            child: LinearProgressIndicator(
              value: percent, 
              backgroundColor: Colors.grey[300], 
              color: color, 
              minHeight: 8,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(width: 10),
          Text('${(percent * 100).toInt()}%', style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}