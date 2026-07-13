import 'package:flutter/material.dart';

import '../../../core/constants/app_padding.dart';
import '../../../core/constants/app_radius.dart';
import '../../../core/constants/app_spacing.dart';

class AchievementsCard extends StatelessWidget {
  const AchievementsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final achievements = [
      (
        icon: Icons.local_fire_department_rounded,
        title: "7 Day Streak",
        color: Colors.orange,
      ),
      (
        icon: Icons.calculate_rounded,
        title: "Math Master",
        color: Colors.blue,
      ),
      (
        icon: Icons.emoji_events_rounded,
        title: "Level 5",
        color: Colors.amber,
      ),
      (
        icon: Icons.auto_stories_rounded,
        title: "20 Lessons",
        color: Colors.green,
      ),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
      ),
      child: Container(
        padding: AppPadding.card,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: AppRadius.large,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Achievements",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),

            const SizedBox(height: AppSpacing.lg),

            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: achievements.length,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 2.2,
              ),
              itemBuilder: (context, index) {
                final achievement = achievements[index];

                return Container(
                  decoration: BoxDecoration(
                    color: achievement.color.withValues(alpha: 0.10),
                    borderRadius: AppRadius.large,
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor:
                            achievement.color.withValues(alpha: 0.18),
                        child: Icon(
                          achievement.icon,
                          color: achievement.color,
                        ),
                      ),

                      const SizedBox(width: 10),

                      Expanded(
                        child: Text(
                          achievement.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}