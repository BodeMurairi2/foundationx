import 'package:flutter/material.dart';

import '../../../core/constants/app_padding.dart';
import '../../../core/constants/app_radius.dart';
import '../../../core/constants/app_spacing.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    final activities = [
      (
        icon: Icons.check_circle_rounded,
        color: Colors.green,
        title: "Completed Linear Equations",
        subtitle: "Earned 120 XP • 10 minutes ago",
      ),
      (
        icon: Icons.local_fire_department_rounded,
        color: Colors.orange,
        title: "7-Day Streak Maintained",
        subtitle: "Keep learning every day!",
      ),
      (
        icon: Icons.menu_book_rounded,
        color: Colors.blue,
        title: "Started Biology Lesson",
        subtitle: "The Human Cell",
      ),
      (
        icon: Icons.emoji_events_rounded,
        color: Colors.amber,
        title: "Level Up!",
        subtitle: "Reached Level 5",
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
              "Recent Activity",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),

            const SizedBox(height: AppSpacing.lg),

            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: activities.length,
              separatorBuilder: (_, _) =>
                  const SizedBox(height: AppSpacing.md),
              itemBuilder: (context, index) {
                final activity = activities[index];

                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundColor:
                          activity.color.withValues(alpha: 0.12),
                      child: Icon(
                        activity.icon,
                        color: activity.color,
                        size: 22,
                      ),
                    ),

                    const SizedBox(width: AppSpacing.md),

                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Text(
                            activity.title,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                          ),

                          const SizedBox(height: 4),

                          Text(
                            activity.subtitle,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}