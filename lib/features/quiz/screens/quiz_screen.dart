import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:foundationx/core/models/models.dart';
import 'package:foundationx/core/providers/app_providers.dart';
import 'package:foundationx/features/quiz/screens/quiz_result_screen.dart';

class QuizScreen extends StatefulWidget {
  final QuizModel quiz;

  const QuizScreen({
    super.key,
    required this.quiz,
  });

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestion = 0;
  late List<int?> selectedAnswers;

  @override
  void initState() {
    super.initState();
    selectedAnswers = List.filled(
      widget.quiz.questions.length,
      null,
    );
  }

  void submitQuiz() {
    int score = 0;

    for (int i = 0; i < widget.quiz.questions.length; i++) {
      if (selectedAnswers[i] == widget.quiz.questions[i].correctIndex) {
        score++;
      }
    }

    Provider.of<UserProvider>(
      context,
      listen: false,
    ).addXP(widget.quiz.xpReward);

    Navigator.push(
  context,
  MaterialPageRoute(
    builder: (_) => QuizResultScreen(
      score: score,
      totalQuestions: widget.quiz.questions.length,
      xpEarned: widget.quiz.xpReward,
    )
  ),
);
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("Quiz title: ${widget.quiz.title}");
debugPrint("Questions: ${widget.quiz.questions.length}"); 
    final q = widget.quiz.questions[currentQuestion];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.quiz.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            LinearProgressIndicator(
              value: (currentQuestion + 1) / widget.quiz.questions.length,
            ),

            const SizedBox(height: 24),

            Text(
              "Question ${currentQuestion + 1}/${widget.quiz.questions.length}",
              style: const TextStyle(
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 16),

            Text(
              q.question,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16),

            ...List.generate(
              q.options.length,
              (i) => RadioListTile<int>(
                title: Text(q.options[i]),
                value: i,
                groupValue: selectedAnswers[currentQuestion],
                onChanged: (value) {
                  setState(() {
                    selectedAnswers[currentQuestion] = value;
                  });
                },
              ),
            ),

            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (currentQuestion > 0)
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        currentQuestion--;
                      });
                    },
                    child: const Text("Previous"),
                  ),

                ElevatedButton(
                  onPressed: () {
                    if (currentQuestion <
                        widget.quiz.questions.length - 1) {
                      setState(() {
                        currentQuestion++;
                      });
                    } else {
                      submitQuiz();
                    }
                  },
                  child: Text(
                    currentQuestion ==
                            widget.quiz.questions.length - 1
                        ? "Finish"
                        : "Next",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
