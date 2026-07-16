import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:foundationx/core/constants/app_spacing.dart';
import 'package:foundationx/core/widgets/fx_app_bar.dart';
import 'package:foundationx/data/app_data.dart';

import 'package:foundationx/features/subjects/widgets/featured_subject.dart';
import 'package:foundationx/features/subjects/widgets/subject_category.dart';
import 'package:foundationx/features/subjects/widgets/subject_progress_card.dart';

class SubjectsScreen extends StatelessWidget {
  const SubjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final subjects = AppData.subjects;

    if (subjects.isEmpty) {
      return Scaffold(
        appBar: const FXAppBar(
          title: "Subjects",
        ),
        body: const Center(
          child: Text("No subjects available."),
        ),
      );
    }

    return Scaffold(
      appBar: const FXAppBar(
        title: "Subjects",
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: AppSpacing.md),

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.lg,
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search subjects...",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
          ),

          const SizedBox(height: AppSpacing.lg),

          FeaturedSubject(
            subject: subjects.first,
            currentLesson: "Continue where you left off",
            progress: subjects.first.completedLessons /
                subjects.first.totalLessons,
            onContinue: () {
              context.push('/subject/${subjects.first.id}');
            },
          ),

          SubjectCategory(
            title: "Your Subjects",
            subtitle: "Continue learning and improve your progress",
            children: subjects.map((subject) {
              return SubjectProgressCard(
                subject: subject,
                progress:
                    subject.completedLessons / subject.totalLessons,
                xp: subject.completedLessons * 100,
                onTap: () {
                  context.push('/subject/${subject.id}');
                },
              );
            }).toList(),
          ),

          const SizedBox(height: 30),
        ],
      ),
    );
  }
}