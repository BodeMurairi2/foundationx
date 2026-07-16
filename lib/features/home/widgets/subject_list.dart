import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:foundationx/core/constants/app_spacing.dart';
import 'package:foundationx/core/widgets/fx_section_title.dart';
import 'package:foundationx/core/models/models.dart';

class SubjectList extends StatelessWidget {
  final List<SubjectModel> subjects;

  const SubjectList({
    super.key,
    required this.subjects,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FXSectionTitle(
          title: "Subjects",
          actionText: "See All",
          onPressed: () {
            context.push('/subjects');
          },
        ),

        const SizedBox(height: AppSpacing.md),
        SizedBox(
          height: 155,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.lg,
            ),
            itemCount: subjects.length,
            separatorBuilder: (_, _) =>
                const SizedBox(width: AppSpacing.md),
            itemBuilder: (context, index) {
              final subject = subjects[index];

              return _SubjectTile(
                subject: subject,
                onTap: () {
                  context.push('/subject/${subject.id}');
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

class _SubjectTile extends StatelessWidget {
  final SubjectModel subject;
  final VoidCallback onTap;

  const _SubjectTile({
    required this.subject,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: Ink(
        width: 115,
        decoration: BoxDecoration(
          color: subject.color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: subject.color.withValues(alpha: 0.25),
              blurRadius: 16,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 22,
                backgroundColor: Colors.white.withValues(alpha: 0.20),
                child: Icon(
                  subject.icon,
                  color: Colors.white,
                  size: 24,
                ),
              ),

              const Spacer(),

              Text(
                subject.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),

              const SizedBox(height: 4),

              Row(
                children: const [
                  Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.white,
                    size: 18,
                  ),
                  SizedBox(width: 4),
                  Text(
                    "Open",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
