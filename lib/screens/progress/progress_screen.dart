import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});
  @override Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text("Your Progress")),
    body: const Center(child: Text("Weekly charts, badges, subject accuracy here (use fl_chart)")),
  );
}