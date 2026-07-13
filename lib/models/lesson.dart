import '../data/app_data.dart';
import 'models.dart';

enum LessonDifficulty {
  beginner,
  easy,
  medium,
  hard,
}

class Lesson {
  final String id;
  final String title;
  final String description;
  final SubjectModel subject;
  final int duration;
  final int xpReward;
  final LessonDifficulty difficulty;
  final double progress;
  final bool completed;
  final bool locked;

  const Lesson({
    required this.id,
    required this.title,
    required this.description,
    required this.subject,
    required this.duration,
    required this.xpReward,
    required this.difficulty,
    this.progress = 0,
    this.completed = false,
    this.locked = false,
  });

  String get difficultyText {
    switch (difficulty) {
      case LessonDifficulty.beginner:
        return "Beginner";
      case LessonDifficulty.easy:
        return "Easy";
      case LessonDifficulty.medium:
        return "Medium";
      case LessonDifficulty.hard:
        return "Hard";
    }
  }

  static List<Lesson> get demoLessons => [
        Lesson(
          id: "math_001",
          title: "Linear Equations",
          description: "Solve simple linear equations.",
          subject: AppData.subjects.firstWhere((s) => s.id == "math"),
          duration: 15,
          xpReward: 120,
          difficulty: LessonDifficulty.medium,
          progress: 0.75,
        ),
        Lesson(
          id: "bio_001",
          title: "The Human Cell",
          description: "Explore the structure of cells.",
          subject: AppData.subjects.firstWhere((s) => s.id == "biology"),
          duration: 12,
          xpReward: 100,
          difficulty: LessonDifficulty.easy,
          progress: 0.35,
        ),
        Lesson(
          id: "phy_001",
          title: "Newton's Laws",
          description: "Learn the laws of motion.",
          subject: AppData.subjects.firstWhere((s) => s.id == "physics"),
          duration: 18,
          xpReward: 150,
          difficulty: LessonDifficulty.hard,
        ),
        Lesson(
          id: "eng_001",
          title: "Parts of Speech",
          description: "Nouns, verbs and adjectives.",
          subject: AppData.subjects.firstWhere((s) => s.id == "english"),
          duration: 14,
          xpReward: 80,
          difficulty: LessonDifficulty.easy,
        ),
      ];
}