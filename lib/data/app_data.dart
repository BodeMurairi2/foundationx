// lib/data/app_data.dart
import 'package:flutter/material.dart';
import '../models/models.dart';

class AppData {
  static final List<SubjectModel> subjects = [
    SubjectModel(id: 'math', name: 'Mathematics', emoji: '📐', color: Colors.blue, lightColor: Colors.blue.shade50, totalLessons: 25, completedLessons: 12, description: 'Algebra, Geometry & Statistics', topics: ['Algebra', 'Geometry']),
    SubjectModel(id: 'english', name: 'English', emoji: '📖', color: Colors.purple, lightColor: Colors.purple.shade50, totalLessons: 20, completedLessons: 8, description: 'Grammar & Literature', topics: ['Grammar', 'Comprehension']),
    SubjectModel(id: 'biology', name: 'Biology', emoji: '🧬', color: Colors.green, lightColor: Colors.green.shade50, totalLessons: 18, completedLessons: 10, description: 'Life Sciences', topics: ['Cells', 'Genetics']),
    SubjectModel(id: 'physics', name: 'Physics', emoji: '⚡', color: Colors.orange, lightColor: Colors.orange.shade50, totalLessons: 22, completedLessons: 9, description: 'Forces & Energy', topics: ['Mechanics', 'Waves']),
  ];

  static final List<LessonModel> lessons = [
    // Mathematics
    LessonModel(id: 'm1', title: 'Introduction to Algebra', subjectId: 'math', topicTag: 'Algebra', explanation: 'Basics of variables.', detailedContent: 'Detailed explanation of algebra...', keyPoints: ['Variables', 'Expressions'], durationMinutes: 20, difficulty: 'Easy'),
    LessonModel(id: 'm2', title: 'Linear Equations', subjectId: 'math', topicTag: 'Algebra', explanation: 'Solving equations.', detailedContent: 'Step by step solving...', keyPoints: ['Inverse operations'], durationMinutes: 25, difficulty: 'Medium'),
    LessonModel(id: 'm3', title: 'Quadratic Equations', subjectId: 'math', topicTag: 'Algebra', explanation: 'Parabolas and formulas.', detailedContent: 'Quadratic formula explanation...', keyPoints: ['Discriminant'], durationMinutes: 30, difficulty: 'Hard'),
    
    // English
    LessonModel(id: 'e1', title: 'Parts of Speech', subjectId: 'english', topicTag: 'Grammar', explanation: 'Nouns, verbs, etc.', detailedContent: '...', keyPoints: ['Noun', 'Verb'], durationMinutes: 15, difficulty: 'Easy'),
    
    // Biology & Physics (add more similarly)
    LessonModel(id: 'b1', title: 'Cell Structure', subjectId: 'biology', topicTag: 'Cells', explanation: 'Basic unit of life.', detailedContent: '...', keyPoints: ['Nucleus', 'Mitochondria'], durationMinutes: 22, difficulty: 'Medium'),
    LessonModel(id: 'p1', title: "Newton's Laws", subjectId: 'physics', topicTag: 'Mechanics', explanation: 'Motion fundamentals.', detailedContent: '...', keyPoints: ['Inertia'], durationMinutes: 25, difficulty: 'Medium'),
  ];

  static List<QuizModel> getQuizzesForSubject(String subjectId) => [
    // Sample quizzes
  ];

  static QuizModel dailyQuiz = QuizModel(
    id: 'daily', title: 'Daily Quiz', subjectId: 'mixed', xpReward: 100, timeLimitSeconds: 600,
    questions: [ /* 5+ questions */ ],
  );
}