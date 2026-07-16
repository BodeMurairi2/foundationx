import 'package:flutter/material.dart';

import 'package:foundationx/core/constants/app_padding.dart';
import 'package:foundationx/core/constants/app_radius.dart';
import 'package:foundationx/core/constants/app_spacing.dart';
import 'package:foundationx/core/widgets/fx_button.dart';

class LearningGoalCard extends StatelessWidget {
  final int completedLessons;
  final int targetLessons;
  final int rewardXp;
  final VoidCallback? onContinue;

  const LearningGoalCard({
    super.key,
    required this.completedLessons,
    required this.targetLessons,
    required this.rewardXp,
    this.onContinue,
  });

  @override
  Widget build(BuildContext context) {
    final progress = (completedLessons / targetLessons).clamp(0.0, 1.0);
    final primary = Theme.of(context).colorScheme.primary;

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
            Row(
              children: [
                Icon(
                  Icons.flag_rounded,
                  color: primary,
                ),

                const SizedBox(width: AppSpacing.sm),

                Text(
                  "Today's Goal",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),

            const SizedBox(height: AppSpacing.lg),

            ClipRRect(
              borderRadius: AppRadius.pillRadius,
              child: LinearProgressIndicator(
                value: progress,
                minHeight: 10,
                backgroundColor: Colors.grey.shade300,
                valueColor: AlwaysStoppedAnimation(primary),
              ),
            ),

            const SizedBox(height: AppSpacing.md),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$completedLessons / $targetLessons Lessons",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  "${(progress * 100).round()}%",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: primary,
                      ),
                ),
              ],
            ),

            const SizedBox(height: AppSpacing.lg),

            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.amber.withValues(alpha: 0.12),
                borderRadius: AppRadius.medium,
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.star_rounded,
                    color: Colors.amber,
                  ),

                  const SizedBox(width: AppSpacing.sm),

                  Expanded(
                    child: Text(
                      "Complete today's goal to earn $rewardXp XP",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: AppSpacing.xl),

            FXButton(
              text: "Continue Learning",
              icon: Icons.play_arrow_rounded,
              onPressed: onContinue,
            ),
          ],
        ),
      ),
    );
  }
}