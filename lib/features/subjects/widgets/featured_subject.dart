import 'package:flutter/material.dart';

import 'package:foundationx/core/constants/app_padding.dart';
import 'package:foundationx/core/constants/app_radius.dart';
import 'package:foundationx/core/constants/app_spacing.dart';
import 'package:foundationx/core/widgets/fx_button.dart';
import 'package:foundationx/core/models/models.dart';

class FeaturedSubject extends StatelessWidget {
  final SubjectModel subject;
  final String currentLesson;
  final double progress;
  final VoidCallback? onContinue;

  const FeaturedSubject({
    super.key,
    required this.subject,
    required this.currentLesson,
    required this.progress,
    this.onContinue,
  });

  @override
  Widget build(BuildContext context) {
    final value = progress.clamp(0.0, 1.0);

    return Padding(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Container(
        padding: AppPadding.card,
        decoration: BoxDecoration(
          borderRadius: AppRadius.large,
          gradient: LinearGradient(
            colors: [
              subject.color,
              subject.color.withValues(alpha: 0.75),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Continue Learning",
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Colors.white70,
                  ),
            ),

            const SizedBox(height: AppSpacing.md),

            Row(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.white24,
                  child: Icon(
                    subject.icon,
                    color: Colors.white,
                    size: 30,
                  ),
                ),

                const SizedBox(width: AppSpacing.md),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        subject.name,
                        style:
                            Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),

                      const SizedBox(height: 4),

                      Text(
                        currentLesson,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(
                              color: Colors.white70,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: AppSpacing.xl),

            ClipRRect(
              borderRadius: AppRadius.pillRadius,
              child: LinearProgressIndicator(
                value: value,
                minHeight: 10,
                backgroundColor: Colors.white24,
                valueColor:
                    const AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),

            const SizedBox(height: AppSpacing.sm),

            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "${(value * 100).round()}% Complete",
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            const SizedBox(height: AppSpacing.xl),

            FXButton(
              text: "Continue",
              icon: Icons.play_arrow_rounded,
              expanded: true,
              color: Colors.white,
              onPressed: onContinue,
            ),
          ],
        ),
      ),
    );
  }
}