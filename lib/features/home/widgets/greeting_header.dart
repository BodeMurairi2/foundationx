import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:foundationx/core/constants/app_padding.dart';
import 'package:foundationx/core/constants/app_spacing.dart';
import 'package:foundationx/core/widgets/fx_avatar.dart';

class GreetingHeader extends StatelessWidget {
  final String username;
  final int notifications;

  const GreetingHeader({
    super.key,
    required this.username,
    this.notifications = 0,
  });

  String _greeting() {
    final hour = DateTime.now().hour;

    if (hour < 12) {
      return "Good Morning";
    }

    if (hour < 17) {
      return "Good Afternoon";
    }

    return "Good Evening";
  }

  String _message() {
    final hour = DateTime.now().hour;

    if (hour < 12) {
      return "Let's make today a great learning day.";
    }

    if (hour < 17) {
      return "Keep up the amazing progress.";
    }

    return "Finish today stronger than you started.";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.screen,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FXAvatar(
            name: username,
            radius: 28,
            onTap: () => context.push('/profile'),
          ),

          const SizedBox(width: AppSpacing.md),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _greeting(),
                  style: Theme.of(context).textTheme.bodyLarge,
                ),

                const SizedBox(height: 2),

                Text(
                  username,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 4),

                Text(
                  _message(),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.color
                            ?.withValues(alpha: 0.7),
                      ),
                ),
              ],
            ),
          ),

          Row(
            children: [
              Stack(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_outlined),
                  ),

                  if (notifications > 0)
                    Positioned(
                      right: 8,
                      top: 8,
                      child: Container(
                        width: 18,
                        height: 18,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          notifications > 9
                              ? "9+"
                              : notifications.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                ],
              ),

              IconButton(
                onPressed: () => context.push('/settings'),
                icon: const Icon(Icons.settings_outlined),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
