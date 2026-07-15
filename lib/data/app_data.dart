import '../models/models.dart';
import '../models/topic.dart';
import 'mathematics_data.dart';
import 'english_data.dart';
import 'biology_data.dart';
import 'physics_data.dart';

class AppData {
  static List<SubjectModel> get subjects => [
        MathematicsData.subject,
        EnglishData.subject,
        BiologyData.subject,
        PhysicsData.subject,
      ];

  static List<LessonModel> get lessons => [
        ...MathematicsData.lessons,
        ...EnglishData.lessons,
        ...BiologyData.lessons,
        ...PhysicsData.lessons,
      ];

  static List<TopicModel> getTopicsForSubject(String subjectId) {
    switch (subjectId) {
      case 'math':
        return MathematicsData.topics;

      case 'english':
        return EnglishData.topics;

      case 'biology':
        return BiologyData.topics;

      case 'physics':
        return PhysicsData.topics;

      default:
        return [];
    }
  }

  static List<LessonModel> getLessonsForSubject(String subjectId) {
    switch (subjectId) {
      case 'math':
        return MathematicsData.lessons;

      case 'english':
        return EnglishData.lessons;

      case 'biology':
        return BiologyData.lessons;

      case 'physics':
        return PhysicsData.lessons;

      default:
        return [];
    }
  }

  static List<QuizModel> getQuizzesForSubject(String subjectId) {
    switch (subjectId) {
      case 'math':
        return MathematicsData.quizzes;

      case 'english':
        return EnglishData.quizzes;

      case 'biology':
        return BiologyData.quizzes;

      case 'physics':
        return PhysicsData.quizzes;

      default:
        return [];
    }
  }

  static QuizModel get dailyQuiz => const QuizModel(
        id: 'daily_quiz',
        title: 'Daily Challenge',
        subjectId: 'mixed',
        xpReward: 150,
        timeLimitSeconds: 600,
        questions: [],
      );
}
