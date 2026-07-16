import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:foundationx/core/models/models.dart';

class XPProgressBar extends StatelessWidget {
  final UserModel user;
  const XPProgressBar({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Level ${user.level}", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text("${user.xpPoints} XP"),
              ],
            ),
            const SizedBox(height: 8),
            LinearPercentIndicator(
              percent: 0.65, // calculate from model
              lineHeight: 12,
              backgroundColor: Colors.grey.shade200,
              progressColor: Colors.orange,
              barRadius: const Radius.circular(10),
            ),
          ],
        ),
      ),
    );
  }
}