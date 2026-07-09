import 'package:flutter/material.dart';

class SubjectDetailScreen extends StatelessWidget {
  final String subjectId;
  const SubjectDetailScreen({super.key, required this.subjectId});
  @override Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text("Subject: $subjectId")),
    body: const Center(child: Text("Lessons & Quizzes")),
  );
}