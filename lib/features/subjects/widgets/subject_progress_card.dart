import 'package:flutter/material.dart';

import 'package:foundationx/core/constants/app_padding.dart';
import 'package:foundationx/core/constants/app_radius.dart';
import 'package:foundationx/core/constants/app_spacing.dart';
import 'package:foundationx/core/models/models.dart';

class SubjectProgressCard extends StatelessWidget {
  final SubjectModel subject;
  final double progress;
  final int xp;
  final VoidCallback? onTap;

  const SubjectProgressCard({
    super.key,
    required this.subject,
    required this.progress,
    required this.xp,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final value = progress.clamp(0.0, 1.0);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.sm,
      ),
      child: Material(
        color: Theme.of(context).cardColor,
        borderRadius: AppRadius.large,
        child: InkWell(
          borderRadius: AppRadius.large,
          onTap: onTap,
          child: Padding(
            padding: AppPadding.card,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 58,
                      width: 58,
                      decoration: BoxDecoration(
                        color: subject.color.withValues(alpha: 0.15),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Icon(
                        subject.icon,
                        color: subject.color,
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
                            subject.name,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),

                          const SizedBox(height: 4),

                          Text(
                            "${(value * 100).round()}% Complete",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium,
                          ),
                        ],
                      ),
                    ),

                    Icon(
                      Icons.chevron_right_rounded,
                      color: Colors.grey.shade500,
                    ),
                  ],
                ),

                const SizedBox(height: AppSpacing.lg),

                ClipRRect(
                  borderRadius: AppRadius.pillRadius,
                  child: LinearProgressIndicator(
                    value: value,
                    minHeight: 9,
                    backgroundColor:
                        Theme.of(context).dividerColor,
                    valueColor:
                        AlwaysStoppedAnimation(subject.color),
                  ),
                ),

                const SizedBox(height: AppSpacing.md),

                Row(
                  children: [
                    Icon(
                      Icons.star_rounded,
                      color: Colors.amber.shade700,
                    ),

                    const SizedBox(width: 6),

                    Text(
                      "$xp XP Earned",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium,
                    ),

                    const Spacer(),

                    Text(
                      "Continue",
                      style: TextStyle(
                        color: subject.color,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}