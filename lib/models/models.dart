import 'package:flutter/material.dart';
import 'topic.dart';

class SubjectModel {
  final String id;
  final String name;
  final String emoji;
  final String description;

  final IconData icon;

  final Color color;
  final Color lightColor;

  final int totalLessons;
  final int completedLessons;

  final List<TopicModel> topics;

  const SubjectModel({
    required this.id,
    required this.name,
    required this.emoji,
    required this.description,
    required this.icon,
    required this.color,
    required this.lightColor,
    required this.totalLessons,
    required this.completedLessons,
    required this.topics,
  });

  double get progress =>
      totalLessons == 0 ? 0 : completedLessons / totalLessons;
}

class LessonModel {
  final String id;
  final String title;
  final String subjectId;
  final String topicTag;

  /// Short preview
  final String explanation;

  /// Full lesson content
  final String detailedContent;

  /// Revision notes
  final List<String> keyPoints;

  final int durationMinutes;

  /// Beginner / Easy / Medium / Hard
  final String difficulty;

  /// XP earned after completion
  final int xpReward;

  /// Locked until previous lesson is completed
  final bool locked;

  /// Placeholder until Firebase
  final bool isCompleted;

  const LessonModel({
    required this.id,
    required this.title,
    required this.subjectId,
    required this.topicTag,
    required this.explanation,
    required this.detailedContent,
    required this.keyPoints,
    required this.durationMinutes,
    this.difficulty = 'Medium',
    this.xpReward = 100,
    this.locked = false,
    this.isCompleted = false,
  });
}

class QuizQuestion {
  final String id, question;
  final List<String> options;
  final int correctIndex;
  final String explanation;

  const QuizQuestion({
    required this.id,
    required this.question,
    required this.options,
    required this.correctIndex,
    required this.explanation,
  });
}

class QuizModel {
  final String id, title, subjectId;
  final List<QuizQuestion> questions;
  final int xpReward;
  final int timeLimitSeconds;

  const QuizModel({
    required this.id,
    required this.title,
    required this.subjectId,
    required this.questions,
    required this.xpReward,
    this.timeLimitSeconds = 300,
  });
}

class UserModel {
  final String id, name, email, grade, school, username;
  final int xpPoints, streak, level;
  final DateTime? lastDailyQuiz;

  const UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.grade,
    required this.school,
    this.username = 'Student',
    this.xpPoints = 0,
    this.streak = 0,
    this.level = 1,
    this.lastDailyQuiz,
  });

  bool get canTakeDailyQuiz {
    if (lastDailyQuiz == null) return true;
    return DateTime.now().difference(lastDailyQuiz!).inHours >= 24;
  }

 UserModel copyWith({
  DateTime? lastDailyQuiz,
  int? xpPoints,
  int? level,
  int? streak,
}) {
  return UserModel(
    id: id,
    name: name,
    email: email,
    grade: grade,
    school: school,
    username: username,
    xpPoints: xpPoints ?? this.xpPoints,
    streak: streak ?? this.streak,
    level: level ?? this.level,
    lastDailyQuiz: lastDailyQuiz ?? this.lastDailyQuiz,
  );
}
  }
