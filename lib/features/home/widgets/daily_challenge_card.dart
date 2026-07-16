import 'package:flutter/material.dart';

import 'package:foundationx/core/constants/app_padding.dart';
import 'package:foundationx/core/constants/app_radius.dart';
import 'package:foundationx/core/constants/app_spacing.dart';
import 'package:foundationx/core/widgets/fx_button.dart';

class DailyChallengeCard extends StatelessWidget {
  final String title;
  final String subject;
  final Color subjectColor;
  final String difficulty;
  final int xpReward;
  final int estimatedMinutes;
  final VoidCallback? onStart;

  const DailyChallengeCard({
    super.key,
    required this.title,
    required this.subject,
    required this.subjectColor,
    required this.difficulty,
    required this.xpReward,
    required this.estimatedMinutes,
    this.onStart,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
      ),
      padding: AppPadding.card,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: AppRadius.extraLarge,
        border: Border.all(
          color: subjectColor.withValues(alpha: 0.15),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: subjectColor.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Icon(
                  Icons.bolt_rounded,
                  color: subjectColor,
                ),
              ),

              const SizedBox(width: AppSpacing.md),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Daily Challenge",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),

                    const SizedBox(height: 4),

                    Text(
                      subject,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: subjectColor,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: AppSpacing.lg),

          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),

          const SizedBox(height: AppSpacing.md),

          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              _InfoChip(
                icon: Icons.speed_rounded,
                label: difficulty,
                color: Colors.orange,
              ),

              _InfoChip(
                icon: Icons.star_rounded,
                label: "+$xpReward XP",
                color: Colors.amber,
              ),

              _InfoChip(
                icon: Icons.schedule_rounded,
                label: "$estimatedMinutes min",
                color: Colors.blue,
              ),
            ],
          ),

          const SizedBox(height: AppSpacing.xl),

          FXButton(
            text: "Start Challenge",
            icon: Icons.play_arrow_rounded,
            onPressed: onStart,
          ),
        ],
      ),
    );
  }
}

class _InfoChip extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const _InfoChip({
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: AppRadius.pillRadius,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 18,
            color: color,
          ),

          const SizedBox(width: 6),

          Text(
            label,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
