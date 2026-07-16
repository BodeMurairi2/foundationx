import 'package:flutter/material.dart';

import 'package:foundationx/core/models/models.dart';

class FXSubjectChip extends StatelessWidget {
  final SubjectModel subject;
  final bool selected;
  final VoidCallback? onTap;

  const FXSubjectChip({
    super.key,
    required this.subject,
    this.selected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final color = subject.color;

    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: selected
              ? color
              : color.withValues(alpha: 0.12),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: color,
            width: 1.5,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              subject.icon,
              size: 18,
              color: selected ? Colors.white : color,
            ),

            const SizedBox(width: 8),

            Text(
              subject.name,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: selected ? Colors.white : color,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}