import 'package:flutter/material.dart';

class QuizProvider extends ChangeNotifier {
  int _currentQuestion = 0;
  int _score = 0;
  bool _finished = false;

  final Map<int, int> _selectedAnswers = {};

  int get currentQuestion => _currentQuestion;
  int get score => _score;
  bool get finished => _finished;
  Map<int, int> get selectedAnswers => _selectedAnswers;

  void selectAnswer({
    required int questionIndex,
    required int answerIndex,
    required int correctAnswer,
  }) {
    if (_selectedAnswers.containsKey(questionIndex)) return;

    _selectedAnswers[questionIndex] = answerIndex;

    if (answerIndex == correctAnswer) {
      _score++;
    }

    notifyListeners();
  }

  void nextQuestion(int totalQuestions) {
    if (_currentQuestion < totalQuestions - 1) {
      _currentQuestion++;
    } else {
      _finished = true;
    }

    notifyListeners();
  }

  void restartQuiz() {
    _currentQuestion = 0;
    _score = 0;
    _finished = false;
    _selectedAnswers.clear();

    notifyListeners();
  }
}