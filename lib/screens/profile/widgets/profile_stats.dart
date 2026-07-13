import 'package:flutter/material.dart';

import '../../../core/constants/app_padding.dart';
import '../../../core/constants/app_radius.dart';
import '../../../core/constants/app_spacing.dart';

class ProfileStats extends StatelessWidget {
  final int xp;
  final int level;
  final int streak;

  const ProfileStats({
    super.key,
    required this.xp,
    required this.level,
    required this.streak,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
      ),
      child: Row(
        children: [
          Expanded(
            child: _StatCard(
              icon: Icons.star_rounded,
              color: Colors.amber,
              title: "XP",
              value: xp.toString(),
            ),
          ),

          const SizedBox(width: AppSpacing.md),

          Expanded(
            child: _StatCard(
              icon: Icons.workspace_premium_rounded,
              color: Colors.blue,
              title: "Level",
              value: level.toString(),
            ),
          ),

          const SizedBox(width: AppSpacing.md),

          Expanded(
            child: _StatCard(
              icon: Icons.local_fire_department_rounded,
              color: Colors.orange,
              title: "Streak",
              value: "$streak",
            ),
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;
  final String value;

  const _StatCard({
    required this.icon,
    required this.color,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.card,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: AppRadius.large,
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: color,
          ),

          const SizedBox(height: AppSpacing.sm),

          Text(
            value,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),

          const SizedBox(height: 4),

          Text(
            title,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}