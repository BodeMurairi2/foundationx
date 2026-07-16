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
