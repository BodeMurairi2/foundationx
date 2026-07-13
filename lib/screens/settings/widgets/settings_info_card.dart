import 'package:flutter/material.dart';

import '../../../core/constants/app_padding.dart';
import '../../../core/constants/app_radius.dart';
import '../../../core/constants/app_spacing.dart';

class SettingsInfoCard extends StatelessWidget {
  final String title;
  final List<InfoItem> items;

  const SettingsInfoCard({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
      ),
      child: Container(
        width: double.infinity,
        padding: AppPadding.card,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: AppRadius.large,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),

            const SizedBox(height: AppSpacing.md),

            ...List.generate(items.length, (index) {
              final item = items[index];

              return Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          item.label,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),

                      Text(
                        item.value,
                        style:
                            Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primary,
                                ),
                      ),
                    ],
                  ),

                  if (index != items.length - 1)
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: AppSpacing.md,
                      ),
                      child: Divider(height: 1),
                    ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}

class InfoItem {
  final String label;
  final String value;

  const InfoItem({
    required this.label,
    required this.value,
  });
}