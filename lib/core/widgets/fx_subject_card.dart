import 'package:flutter/material.dart';

import 'package:foundationx/core/models/models.dart';
import 'package:foundationx/core/theme/app_colors.dart';
import 'package:foundationx/core/widgets/fx_card.dart';

class FXSubjectCard extends StatelessWidget {
  final SubjectModel subject;
  final double progress;
  final VoidCallback? onTap;

  const FXSubjectCard({
    super.key,
    required this.subject,
    required this.progress,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final progressValue = progress.clamp(0.0, 1.0);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return FXCard(
      onTap: onTap,
      child: Row(
        children: [
          // Subject Icon
          Container(
            height: 68,
            width: 68,
            decoration: BoxDecoration(
              color: subject.color.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Icon(
              subject.icon,
              size: 34,
              color: subject.color,
            ),
          ),

          const SizedBox(width: 18),

          // Subject Information
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subject.name,
                  style: Theme.of(context).textTheme.titleLarge,
                ),

                const SizedBox(height: 4),

                Text(
                  "${subject.totalLessons} Lessons • ${subject.description}",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.color
                            ?.withValues(alpha: 0.70),
                      ),
                ),

                const SizedBox(height: 14),

                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: LinearProgressIndicator(
                    value: progressValue,
                    minHeight: 8,
                    backgroundColor: isDark
                        ? AppColors.borderDark
                        : AppColors.borderLight,
                    valueColor: AlwaysStoppedAnimation(subject.color),
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  "${(progressValue * 100).toInt()}% Complete",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: subject.color,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 12),

          Icon(
            Icons.chevron_right_rounded,
            color: Theme.of(context)
                .iconTheme
                .color
                ?.withValues(alpha: 0.5),
          ),
        ],
      ),
    );
  }
}