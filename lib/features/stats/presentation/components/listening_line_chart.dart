import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ListeningLineChart extends StatelessWidget {
  const ListeningLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: Colors.white.withOpacity(0.9), borderRadius: BorderRadius.circular(25)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("This Week's Listening", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
          const Text("Minutes Listened Per Day", style: TextStyle(color: Colors.grey, fontSize: 10)),
          const SizedBox(height: 20),
          Expanded(
            child: LineChart(
              LineChartData(
                gridData: const FlGridData(show: false),
                titlesData: const FlTitlesData(show: false),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      const FlSpot(0, 3), const FlSpot(1, 4), const FlSpot(2, 3.5),
                      const FlSpot(3, 5), const FlSpot(4, 2), const FlSpot(5, 4.5), const FlSpot(6, 4)
                    ],
                    isCurved: true,
                    color: Colors.redAccent,
                    barWidth: 4,
                    dotData: const FlDotData(show: true),
                    belowBarData: BarAreaData(show: true, color: Colors.redAccent.withOpacity(0.1)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}