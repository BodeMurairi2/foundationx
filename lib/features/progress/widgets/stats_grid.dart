import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:foundationx/core/providers/app_providers.dart';
import 'package:foundationx/core/providers/achievement_provider.dart';
import 'package:foundationx/core/providers/lesson_provider.dart';

class StatsGrid extends StatelessWidget {
  const StatsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = context.watch<UserProvider>();
    final lessonProvider = context.watch<LessonProvider>();
    final achievementProvider =
        context.watch<AchievementProvider>();

    final completedLessons =
        lessonProvider.completedLessons.length;

    final unlockedAchievements =
        achievementProvider.achievements
            .where((a) => a.unlocked)
            .length;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Statistics",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 16),

        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics:
              const NeverScrollableScrollPhysics(),
          crossAxisSpacing: 14,
          mainAxisSpacing: 14,
          childAspectRatio: 1.4,
          children: [
            _StatCard(
              title: "Lessons",
              value: completedLessons.toString(),
              icon: Icons.menu_book,
              color: Colors.blue,
            ),

            _StatCard(
              title: "XP",
              value:
                  "${userProvider.user.xpPoints}",
              icon: Icons.star,
              color: Colors.amber,
            ),

            _StatCard(
              title: "Level",
              value:
                  "${userProvider.user.level}",
              icon: Icons.workspace_premium,
              color: Colors.orange,
            ),

            _StatCard(
              title: "Streak",
              value:
                  "${userProvider.user.streak}",
              icon:
                  Icons.local_fire_department,
              color: Colors.red,
            ),

            _StatCard(
              title: "Achievements",
              value:
                  unlockedAchievements.toString(),
              icon: Icons.emoji_events,
              color: Colors.green,
            ),

            _StatCard(
              title: "Daily Quiz",
              value:
                  userProvider.user.canTakeDailyQuiz
                      ? "Ready"
                      : "Done",
              icon: Icons.quiz,
              color: Colors.purple,
            ),
          ],
        ),
      ],
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color color;

  const _StatCard({
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor:
                  color.withValues(alpha: .15),
              child: Icon(
                icon,
                color: color,
              ),
            ),

            const SizedBox(height: 12),

            Text(
              value,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 4),

            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}