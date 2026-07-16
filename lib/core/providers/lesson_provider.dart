import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LessonProvider extends ChangeNotifier {
  static const String _completedLessonsKey =
    "completed_lessons";

static const String _lessonHistoryKey =
    "lesson_history";

  final SharedPreferences prefs;

  LessonProvider(this.prefs) {
    _loadCompletedLessons();
  }

  final Set<String> _completedLessons = {};

  Set<String> get completedLessons => _completedLessons;

  final Map<String, DateTime> _lessonHistory = {};
  Map<String, DateTime> get lessonHistory =>
    _lessonHistory;

  bool isCompleted(String lessonId) {
    return _completedLessons.contains(lessonId);
  }

  bool isLessonUnlocked(
    String lessonId,
    List<String> topicLessonIds,
  ) {
    final index = topicLessonIds.indexOf(lessonId);

    if (index <= 0) {
      return true;
    }

    return isCompleted(topicLessonIds[index - 1]);
  }

  /// Returns true if every lesson in the topic
  /// has been completed.
  bool isTopicCompleted(List<String> topicLessonIds) {
    if (topicLessonIds.isEmpty) return false;

    return topicLessonIds.every(isCompleted);
  }

  /// Returns the number of completed lessons
  /// in a topic.
  int completedCount(List<String> topicLessonIds) {
    return topicLessonIds.where(isCompleted).length;
  }

  Future<void> _loadCompletedLessons() async {
  final lessons =
      prefs.getStringList(_completedLessonsKey) ??
          [];

  _completedLessons
    ..clear()
    ..addAll(lessons);

  final historyJson =
      prefs.getString(_lessonHistoryKey);

  _lessonHistory.clear();

  if (historyJson != null) {
    final decoded =
        jsonDecode(historyJson) as Map<String, dynamic>;

    decoded.forEach((key, value) {
      _lessonHistory[key] =
          DateTime.parse(value);
    });
  }

  notifyListeners();
}

  Future<void> completeLesson(String lessonId) async {
  if (_completedLessons.add(lessonId)) {
    final now = DateTime.now();

    _lessonHistory[lessonId] = now;

    await prefs.setStringList(
      _completedLessonsKey,
      _completedLessons.toList(),
    );

    await prefs.setString(
      _lessonHistoryKey,
      jsonEncode(
        _lessonHistory.map(
          (key, value) => MapEntry(
            key,
            value.toIso8601String(),
          ),
        ),
      ),
    );

    notifyListeners();
  }
}

  Future<void> resetProgress() async {
    _completedLessons.clear();
    _lessonHistory.clear();

    await prefs.remove(_completedLessonsKey);
    await prefs.remove(_lessonHistoryKey);

    notifyListeners();
  }
}