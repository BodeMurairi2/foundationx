import 'package:flutter/material.dart';
import '../../models/models.dart';

class LessonScreen extends StatelessWidget {
  final LessonModel lesson;
  const LessonScreen({super.key, required this.lesson});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(lesson.title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(lesson.explanation, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 24),
            const Text("Detailed Content", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(lesson.detailedContent),
            const SizedBox(height: 24),
            const Text("Key Points", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ...lesson.keyPoints.map((point) => ListTile(leading: const Icon(Icons.check), title: Text(point))),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () { /* Mark complete + navigate to quiz */ },
              child: const Text("Take Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}