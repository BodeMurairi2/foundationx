import 'package:flutter/material.dart';

import 'widgets/stats_grid.dart';
import 'widgets/subject_chart.dart';
import 'widgets/weekly_chart.dart';
import 'widgets/xp_card.dart';
import 'widgets/xp_chart.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Progress"),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: const [
            XPCard(),

            SizedBox(height: 24),

            WeeklyChart(),

            SizedBox(height: 24),

            SubjectChart(),

            SizedBox(height: 24),

            XPChart(),

            SizedBox(height: 24),

            StatsGrid(),

            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}