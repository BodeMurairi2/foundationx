import 'package:flutter/material.dart';

import 'package:foundationx/core/constants/app_padding.dart';
import 'package:foundationx/core/constants/app_radius.dart';
import 'package:foundationx/core/constants/app_spacing.dart';
import 'package:foundationx/core/models/models.dart';

class ProfileHeader extends StatelessWidget {
  final UserModel user;

  const ProfileHeader({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;

    return Container(
      width: double.infinity,
      padding: AppPadding.screen,
      child: Column(
        children: [
          Hero(
            tag: "profile_avatar",
            child: CircleAvatar(
              radius: 52,
              backgroundColor: primary.withValues(alpha: 0.15),
              child: Text(
                user.username.substring(0, 1).toUpperCase(),
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: primary,
                ),
              ),
            ),
          ),

          const SizedBox(height: AppSpacing.md),

          Text(
            user.name,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),

          const SizedBox(height: 6),

          Text(
            "@${user.username}",
            style: Theme.of(context).textTheme.bodyMedium,
          ),

          const SizedBox(height: AppSpacing.sm),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              color: primary.withValues(alpha: 0.12),
              borderRadius: AppRadius.pillRadius,
            ),
            child: Text(
              "${user.grade} • ${user.school}",
              style: TextStyle(
                color: primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}