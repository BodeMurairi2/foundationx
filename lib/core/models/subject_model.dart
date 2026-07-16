import 'package:flutter/material.dart';
import 'package:foundationx/core/models/topic.dart';

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
