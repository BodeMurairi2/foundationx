import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

import 'package:foundationx/core/providers/app_providers.dart';

import 'package:foundationx/core/constants/app_spacing.dart';
import 'package:foundationx/core/widgets/fx_app_bar.dart';

import 'package:foundationx/features/profile/widgets/profile_header.dart';
import 'package:foundationx/features/profile/widgets/profile_stats.dart';
import 'package:foundationx/features/profile/widgets/achievements_card.dart';
import 'package:foundationx/features/profile/widgets/recent_activity.dart';
import 'package:foundationx/features/profile/widgets/learning_goal_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.watch<UserProvider>().user;

    return Scaffold(
      appBar: FXAppBar(
        title: "Profile",
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_rounded),
            onPressed: () {
              context.push('/settings');
            },
          ),
        ],
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            await Future.delayed(
              const Duration(milliseconds: 700),
            );
          },
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              /// Header
              ProfileHeader(
                user: user,
              ),

              const SizedBox(height: AppSpacing.lg),

              /// Stats
              ProfileStats(
                xp: user.xpPoints,
                level: user.level,
                streak: user.streak,
              ),

              const SizedBox(height: AppSpacing.xl),

              /// Daily Goal
              LearningGoalCard(
                completedLessons: 3,
                targetLessons: 5,
                rewardXp: 200,
                onContinue: () {
                  context.go('/home');
                },
              ),

              const SizedBox(height: AppSpacing.xl),

              /// Achievements
              const AchievementsCard(),

              const SizedBox(height: AppSpacing.xl),

              /// Recent Activity
              const RecentActivity(),

              const SizedBox(height: AppSpacing.xl),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.lg,
                ),
                child: ElevatedButton.icon(
                  onPressed: () {
                    context.go('/login');
                  },
                  icon: const Icon(Icons.logout_rounded),
                  label: const Text("Logout"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    minimumSize: const Size.fromHeight(56),
                  ),
                ),
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}