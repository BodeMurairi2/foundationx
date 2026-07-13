import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/lesson_provider.dart';

class WeeklyChart extends StatelessWidget {
  const WeeklyChart({super.key});

  @override
Widget build(BuildContext context) {
  final lessonProvider = context.watch<LessonProvider>();

  final now = DateTime.now();

  final List<int> weeklyLessons =
      List.filled(7, 0);

  for (var date in lessonProvider.lessonHistory.values) {
    final difference =
        now.difference(date).inDays;

    if (difference >= 0 && difference < 7) {
      final index = 6 - difference;
      weeklyLessons[index]++;
    }
  }
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Weekly Learning",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Lessons completed over the last 7 days",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 24),

            SizedBox(
              height: 220,
              child: LineChart(
                LineChartData(
                  minX: 0,
                  maxX: 6,
                  minY: 0,
                  maxY: (weeklyLessons.reduce(
                    (a, b) => a > b ? a : b,) + 1)
                    .toDouble(),

                  gridData: FlGridData(
                    show: true,
                    drawVerticalLine: false,
                  ),

                  borderData: FlBorderData(
                    show: false,
                  ),

                  titlesData: FlTitlesData(
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: false,
                      ),
                    ),

                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: false,
                      ),
                    ),

                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 28,
                        interval: 1,
                      ),
                    ),

                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget:
                            (value, meta) {
                          const days = [
                            "M",
                            "T",
                            "W",
                            "T",
                            "F",
                            "S",
                            "S",
                          ];

                          return Padding(
                            padding:
                                const EdgeInsets.only(
                              top: 8,
                            ),
                            child: Text(
                              days[value.toInt()],
                            ),
                          );
                        },
                      ),
                    ),
                  ),

                  lineBarsData: [
                    LineChartBarData(
                      isCurved: true,
                      barWidth: 4,

                      dotData: const FlDotData(
                        show: true,
                      ),

                      belowBarData:
                          BarAreaData(show: true),

                      spots: List.generate(
                        7,
                        (index) => FlSpot(
                          index.toDouble(),
                          weeklyLessons[index].toDouble(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}