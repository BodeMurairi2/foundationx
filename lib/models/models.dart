import 'package:flutter/material.dart';

class SubjectModel {
  final String id, name, emoji, description;
  final Color color, lightColor;
  final int totalLessons, completedLessons;
  final List<String> topics;

  const SubjectModel({
    required this.id,
    required this.name,
    required this.emoji,
    required this.color,
    required this.lightColor,
    required this.totalLessons,
    required this.completedLessons,
    required this.description,
    required this.topics,
  });

  double get progress => totalLessons > 0 ? completedLessons / totalLessons : 0;
}

class LessonModel {
  final String id, title, subjectId, topicTag, explanation, detailedContent;
  final List<String> keyPoints;
  final bool isCompleted;
  final int durationMinutes;
  final String difficulty;

  const LessonModel({
    required this.id,
    required this.title,
    required this.subjectId,
    required this.topicTag,
    required this.explanation,
    required this.detailedContent,
    required this.keyPoints,
    this.isCompleted = false,
    required this.durationMinutes,
    this.difficulty = 'Medium',
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

  UserModel copyWith({DateTime? lastDailyQuiz, int? xpPoints}) {
    return UserModel(
      id: id,
      name: name,
      email: email,
      grade: grade,
      school: school,
      username: username,
      xpPoints: xpPoints ?? this.xpPoints,
      streak: streak,
      level: level,
      lastDailyQuiz: lastDailyQuiz ?? this.lastDailyQuiz,
    );
  }
}