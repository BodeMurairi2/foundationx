import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../data/app_data.dart';
import '../../../providers/lesson_provider.dart';

class SubjectChart extends StatelessWidget {
  const SubjectChart({super.key});

  @override
Widget build(BuildContext context) {
  final lessonProvider = context.watch<LessonProvider>();

  double progressForSubject(String subjectId) {
    final lessons = AppData.getLessonsForSubject(subjectId);

    if (lessons.isEmpty) return 0;

    final completed = lessons
        .where((l) => lessonProvider.isCompleted(l.id))
        .length;

    return (completed / lessons.length) * 100;
  }

  final math = progressForSubject("math");
  final english = progressForSubject("english");
  final biology = progressForSubject("biology");
  final physics = progressForSubject("physics");
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
              "Subject Progress",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Learning progress by subject",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 24),

            SizedBox(
              height: 240,
              child: PieChart(
                PieChartData(
                  centerSpaceRadius: 50,
                  sectionsSpace: 4,
                  sections: [
  PieChartSectionData(
    value: math == 0 ? 1 : math,
    title: "${math.toInt()}%",
    radius: 65,
    color: Colors.blue,
  ),
  PieChartSectionData(
    value: english == 0 ? 1 : english,
    title: "${english.toInt()}%",
    radius: 65,
    color: Colors.green,
  ),
  PieChartSectionData(
    value: biology == 0 ? 1 : biology,
    title: "${biology.toInt()}%",
    radius: 65,
    color: Colors.orange,
  ),
  PieChartSectionData(
    value: physics == 0 ? 1 : physics,
    title: "${physics.toInt()}%",
    radius: 65,
    color: Colors.red,
  ),
],
                ),
              ),
            ),

            const SizedBox(height: 20),

            Wrap(
              spacing: 16,
              runSpacing: 12,
              children: const [
                _Legend(
                  color: Colors.blue,
                  text: "Mathematics",
                ),
                _Legend(
                  color: Colors.green,
                  text: "English",
                ),
                _Legend(
                  color: Colors.orange,
                  text: "Biology",
                ),
                _Legend(
                  color: Colors.red,
                  text: "Physics",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Legend extends StatelessWidget {
  final Color color;
  final String text;

  const _Legend({
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 14,
          height: 14,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8),
        Text(text),
      ],
    );
  }
}