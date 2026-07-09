import 'package:flutter/material.dart';
import '../../data/app_data.dart';
import '../../models/models.dart';
import 'package:go_router/go_router.dart';

class SubjectsScreen extends StatelessWidget {
  const SubjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Subjects")),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1.1, crossAxisSpacing: 16, mainAxisSpacing: 16),
        itemCount: AppData.subjects.length,
        itemBuilder: (context, index) {
          final subject = AppData.subjects[index];
          return GestureDetector(
            onTap: () => context.push('/subject/${subject.id}'),
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(subject.emoji, style: const TextStyle(fontSize: 48)),
                  Text(subject.name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text("${subject.completedLessons}/${subject.totalLessons} lessons"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}