import 'package:flutter/material.dart';
import 'package:foundationx/core/models/achievement.dart';

class AchievementProvider extends ChangeNotifier {
  final List<Achievement> _achievements = [
    Achievement(
      id: "first_lesson",
      title: "First Steps",
      description: "Complete your first lesson.",
      icon: "🎓",
      xpReward: 50,
    ),
    Achievement(
      id: "first_quiz",
      title: "Quiz Rookie",
      description: "Complete your first quiz.",
      icon: "📝",
      xpReward: 50,
    ),
    Achievement(
      id: "xp_500",
      title: "Rising Star",
      description: "Reach 500 XP.",
      icon: "⭐",
      xpReward: 100,
    ),
    Achievement(
      id: "xp_1000",
      title: "Dedicated Learner",
      description: "Reach 1000 XP.",
      icon: "🏆",
      xpReward: 150,
    ),
    Achievement(
      id: "complete_topic",
      title: "Topic Master",
      description: "Complete an entire topic.",
      icon: "📚",
      xpReward: 150,
    ),
    Achievement(
      id: "complete_subject",
      title: "Subject Champion",
      description: "Complete every lesson in a subject.",
      icon: "🥇",
      xpReward: 300,
    ),
    Achievement(
      id: "streak_7",
      title: "7 Day Streak",
      description: "Study for seven days.",
      icon: "🔥",
      xpReward: 200,
    ),
  ];

  List<Achievement> get achievements => _achievements;
  bool isUnlocked(String id) =>
      _achievements.firstWhere((a) => a.id == id).unlocked;

  void unlock(String id) {
    final index = _achievements.indexWhere((a) => a.id == id);

    if (index == -1) return;

    if (_achievements[index].unlocked) return;

    _achievements[index] =
        _achievements[index].copyWith(unlocked: true);

    notifyListeners();
  }

  void checkXPAchievements(int xp) {
  if (xp >= 500) {
    unlock("xp_500");
  }

  if (xp >= 1000) {
    unlock("xp_1000");
  }
}

void lessonCompleted() {
  unlock("first_lesson");
}

void quizCompleted() {
  unlock("first_quiz");
}

void topicCompleted() {
  unlock("complete_topic");
}

void subjectCompleted() {
  unlock("complete_subject");
}

void streakReached(int streak) {
  if (streak >= 7) {
    unlock("streak_7");
  }
}
}
