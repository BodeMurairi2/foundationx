import 'package:flutter/material.dart';

import '../../../core/constants/app_padding.dart';
import '../../../core/constants/app_radius.dart';
import '../../../core/constants/app_spacing.dart';

class SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final VoidCallback? onTap;
  final Widget? trailing;
  final Color? iconColor;

  const SettingsTile({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    this.onTap,
    this.trailing,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.xs,
      ),
      child: Material(
        color: Theme.of(context).cardColor,
        borderRadius: AppRadius.large,
        child: InkWell(
          borderRadius: AppRadius.large,
          onTap: onTap,
          child: Padding(
            padding: AppPadding.card,
            child: Row(
              children: [
                Container(
                  width: 46,
                  height: 46,
                  decoration: BoxDecoration(
                    color: (iconColor ??
                            Theme.of(context).colorScheme.primary)
                        .withValues(alpha: 0.12),
                    borderRadius: AppRadius.medium,
                  ),
                  child: Icon(
                    icon,
                    color: iconColor ??
                        Theme.of(context).colorScheme.primary,
                  ),
                ),

                const SizedBox(width: AppSpacing.md),

                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium,
                      ),

                      if (subtitle != null) ...[
                        const SizedBox(height: 4),

                        Text(
                          subtitle!,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall,
                        ),
                      ]
                    ],
                  ),
                ),

                trailing ??
                    const Icon(Icons.chevron_right_rounded),
              ],
            ),
          ),
        ),
      ),
    );
  }
}