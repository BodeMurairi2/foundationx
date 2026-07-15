import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/achievement_provider.dart';

class AchievementsScreen extends StatelessWidget {
  const AchievementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final achievementProvider =
        context.watch<AchievementProvider>();
    final achievements = achievementProvider.achievements;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Achievements"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: achievements.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: .9,
        ),
        itemBuilder: (context, index) {
          final achievement = achievements[index];

          return Card(
            elevation: achievement.unlocked ? 6 : 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(18),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text(achievement.title),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          achievement.icon,
                          style: const TextStyle(fontSize: 60),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          achievement.description,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "+${achievement.xpReward} XP",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    Text(
                      achievement.unlocked
                          ? achievement.icon
                          : "🔒",
                      style: const TextStyle(
                        fontSize: 50,
                      ),
                    ),
                    const SizedBox(height: 14),
                    Text(
                      achievement.title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      achievement.unlocked
                          ? "Unlocked"
                          : "Locked",
                      style: TextStyle(
                        color: achievement.unlocked
                            ? Colors.green
                            : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
