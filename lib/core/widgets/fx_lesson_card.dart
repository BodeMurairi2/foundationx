import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:foundationx/data/app_data.dart';
import 'package:foundationx/core/models/models.dart';
import 'package:foundationx/core/providers/lesson_provider.dart';

import 'package:foundationx/core/constants/app_padding.dart';
import 'package:foundationx/core/constants/app_radius.dart';
import 'package:foundationx/core/constants/app_spacing.dart';
import 'package:foundationx/core/widgets/fx_button.dart';
import 'package:foundationx/core/widgets/fx_card.dart';

class FXLessonCard extends StatelessWidget {
  final LessonModel lesson;
  final VoidCallback? onTap;
  final VoidCallback? onContinue;

  const FXLessonCard({
    super.key,
    required this.lesson,
    this.onTap,
    this.onContinue,
  });

  @override
  Widget build(BuildContext context) {
    final lessonProvider = context.watch<LessonProvider>();

    final subject = AppData.subjects.firstWhere(
      (s) => s.id == lesson.subjectId,
    );

    final subjectColor = subject.color;

    final completed =
        lesson.isCompleted || lessonProvider.isCompleted(lesson.id);

    final progress = completed ? 1.0 : 0.0;

    return FXCard(
      onTap: onTap,
      padding: AppPadding.card,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 58,
                height: 58,
                decoration: BoxDecoration(
                  color: subjectColor.withValues(alpha: 0.15),
                  borderRadius: AppRadius.large,
                ),
                child: Icon(
                  subject.icon,
                  color: subjectColor,
                  size: 30,
                ),
              ),

              const SizedBox(width: AppSpacing.md),

              Expanded(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      lesson.title,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(
                            fontWeight:
                                FontWeight.bold,
                          ),
                    ),

                    const SizedBox(height: 4),

                    Text(
                      subject.name,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(
                            color: subjectColor,
                            fontWeight:
                                FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ),

              if (lesson.locked)
                const Icon(
                  Icons.lock_rounded,
                  color: Colors.grey,
                ),
            ],
          ),

          const SizedBox(height: AppSpacing.lg),

          Text(
            lesson.explanation,
            style: Theme.of(context)
                .textTheme
                .bodyMedium,
          ),

          const SizedBox(height: AppSpacing.lg),

          ClipRRect(
            borderRadius: AppRadius.pillRadius,
            child: LinearProgressIndicator(
              value: progress,
              minHeight: 8,
              backgroundColor:
                  Colors.grey.shade300,
              valueColor:
                  AlwaysStoppedAnimation(
                subjectColor,
              ),
            ),
          ),

          const SizedBox(height: AppSpacing.md),

          Text(
            "${(progress * 100).round()}% Complete",
            style: Theme.of(context)
                .textTheme
                .bodySmall,
          ),

          const SizedBox(height: AppSpacing.lg),

          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              _InfoChip(
                icon: Icons.schedule_rounded,
                label:
                    "${lesson.durationMinutes} min",
              ),
                            _InfoChip(
                icon: Icons.star_rounded,
                label: "${lesson.xpReward} XP",
              ),
              _InfoChip(
                icon: Icons.speed_rounded,
                label: lesson.difficulty,
              ),
            ],
          ),

          const SizedBox(height: AppSpacing.xl),

          FXButton(
            text: completed
                ? "Review Lesson"
                : "Continue",
            icon: completed
                ? Icons.refresh_rounded
                : Icons.play_arrow_rounded,
            onPressed:
                lesson.locked ? null : onContinue,
          ),
        ],
      ),
    );
  }
}

class _InfoChip extends StatelessWidget {
  final IconData icon;
  final String label;

  const _InfoChip({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final chipColor =
        Theme.of(context).colorScheme.primary;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: chipColor.withValues(alpha: 0.12),
        borderRadius: AppRadius.pillRadius,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 18,
            color: chipColor,
          ),

          const SizedBox(width: 6),

          Text(
            label,
            style: Theme.of(context)
                .textTheme
                .labelMedium
                ?.copyWith(
                  color: chipColor,
                  fontWeight: FontWeight.w600,
                ),
          ),
                  ],
      ),
    );
  }
}