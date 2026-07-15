import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class QuizResultScreen extends StatelessWidget {
  final int score;
  final int totalQuestions;
  final int xpEarned;

  const QuizResultScreen({
    super.key,
    required this.score,
    required this.totalQuestions,
    required this.xpEarned,
  });
  double get percentage => score / totalQuestions;

  String get message {
    if (percentage >= 0.9) {
      return "Outstanding! You mastered this quiz.";
    } else if (percentage >= 0.7) {
      return "Great job! Keep up the good work.";
    } else if (percentage >= 0.5) {
      return "Good effort! A little more practice will help.";
    } else {
      return "Don't give up. Review the lesson and try again.";
    }
  }

  IconData get resultIcon {
    if (percentage >= 0.7) {
      return Icons.emoji_events;
    }
    return Icons.school;
  }

  Color get resultColor {
    if (percentage >= 0.7) {
      return Colors.amber;
    }
    return Colors.blue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz Results"),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                resultIcon,
                size: 90,
                color: resultColor,
              ),

              const SizedBox(height: 24),

              const Text(
                "Quiz Complete!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 32),

              Text(
                "$score / $totalQuestions",
                style: const TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              Text(
                "${(percentage * 100).toStringAsFixed(0)}%",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.grey.shade700,
                ),
              ),

              const SizedBox(height: 30),

              Card(
                child: ListTile(
                  leading: const Icon(Icons.star, color: Colors.orange),
                  title: const Text("XP Earned"),
                  trailing: Text(
                    "+$xpEarned",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              Text(
                message,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),

              const Spacer(),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: FilledButton.icon(
                  icon: const Icon(Icons.home),
                  label: const Text("Back to Home"),
                  onPressed: () {
                    context.go('/home');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
