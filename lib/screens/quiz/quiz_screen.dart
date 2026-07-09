import 'package:flutter/material.dart';
import '../../models/models.dart';
import 'package:provider/provider.dart';
import '../../providers/app_providers.dart';

class QuizScreen extends StatefulWidget {
  final QuizModel quiz;
  const QuizScreen({super.key, required this.quiz});
  @override State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestion = 0;
  List<int?> selectedAnswers = [];

  @override
  void initState() {
    super.initState();
    selectedAnswers = List.filled(widget.quiz.questions.length, null);
  }

  void submitQuiz() {
    int score = 0;
    for (int i = 0; i < widget.quiz.questions.length; i++) {
      if (selectedAnswers[i] == widget.quiz.questions[i].correctIndex) score++;
    }
    // Navigate to result or use provider
    Provider.of<UserProvider>(context, listen: false).addXP(widget.quiz.xpReward);
    Navigator.pop(context); // Replace with result screen
  }

  @override
  Widget build(BuildContext context) {
    final q = widget.quiz.questions[currentQuestion];
    return Scaffold(
      appBar: AppBar(title: Text(widget.quiz.title)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            LinearProgressIndicator(value: (currentQuestion + 1) / widget.quiz.questions.length),
            const SizedBox(height: 24),
            Text("Question ${currentQuestion + 1}/${widget.quiz.questions.length}", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            Text(q.question, style: const TextStyle(fontSize: 20)),
            ...List.generate(q.options.length, (i) => RadioListTile(
              title: Text(q.options[i]),
              value: i,
              groupValue: selectedAnswers[currentQuestion],
              onChanged: (v) => setState(() => selectedAnswers[currentQuestion] = v),
            )),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (currentQuestion > 0) ElevatedButton(onPressed: () => setState(() => currentQuestion--), child: const Text("Previous")),
                ElevatedButton(
                  onPressed: currentQuestion < widget.quiz.questions.length - 1 
                    ? () => setState(() => currentQuestion++) 
                    : submitQuiz,
                  child: Text(currentQuestion < widget.quiz.questions.length - 1 ? "Next" : "Finish"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}