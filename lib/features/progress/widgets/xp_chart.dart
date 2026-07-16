import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:foundationx/data/app_data.dart';
import 'package:foundationx/core/providers/lesson_provider.dart';

class XPChart extends StatelessWidget {
  const XPChart({super.key});

  @override
Widget build(BuildContext context) {
  final lessonProvider = context.watch<LessonProvider>();

  final now = DateTime.now();

  final weeklyXP = List<int>.filled(7, 0);

  for (final entry in lessonProvider.lessonHistory.entries) {
    final difference = now.difference(entry.value).inDays;

    if (difference >= 0 && difference < 7) {
      final lesson = AppData.lessons.firstWhere(
        (l) => l.id == entry.key,
      );

      final index = 6 - difference;

      weeklyXP[index] += lesson.xpReward;
    }
  }

  final maxXP =
      weeklyXP.reduce((a, b) => a > b ? a : b);
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
              "XP Growth",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "XP earned this week",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 24),

            SizedBox(
              height: 220,
              child: BarChart(
                BarChartData(
                  maxY: (maxXP + 50).toDouble(),

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
                        reservedSize: 35,
                        interval: 50,
                      ),
                    ),

                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
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
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              days[value.toInt()],
                            ),
                          );
                        },
                      ),
                    ),
                  ),

                  barGroups: List.generate(
                    7,
                    (index) => _bar(
                      index,
                      weeklyXP[index].toDouble(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static BarChartGroupData _bar(
    int x,
    double value,
  ) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: value,
          width: 18,
          borderRadius: BorderRadius.circular(6),
        ),
      ],
    );
  }
}