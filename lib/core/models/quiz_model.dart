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
