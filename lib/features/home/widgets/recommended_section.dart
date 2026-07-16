import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'package:foundationx/core/constants/app_spacing.dart';
import 'package:foundationx/core/widgets/fx_lesson_card.dart';
import 'package:foundationx/core/widgets/fx_section_title.dart';
import 'package:foundationx/core/models/models.dart';
import 'package:foundationx/core/providers/lesson_provider.dart';

class RecommendedSection extends StatelessWidget {
  final List<LessonModel> lessons;

  const RecommendedSection({
    super.key,
    required this.lessons,
  });

  @override
  Widget build(BuildContext context) {
    final lessonProvider = context.watch<LessonProvider>();

    final recommended = lessons.where((lesson) {
  return !lesson.locked &&
      !lessonProvider.isCompleted(lesson.id);
}).toList();

    if (recommended.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FXSectionTitle(
          title: "Recommended For You",
          actionText: "See All",
          onPressed: () {
            context.push('/subjects');
          },
        ),

        const SizedBox(height: AppSpacing.md),

        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: recommended.length,
          separatorBuilder: (_, _) =>
              const SizedBox(height: AppSpacing.md),
          itemBuilder: (context, index) {
            final lesson = recommended[index];

            return FXLessonCard(
              lesson: lesson,
              onTap: () {
                context.push(
                  '/lesson/${lesson.id}',
                  extra: lesson,
                );
              },
              onContinue: () {
                context.push(
                  '/lesson/${lesson.id}',
                  extra: lesson,
               );
              },
            );
          },
        ),
      ],
    );
  }
}